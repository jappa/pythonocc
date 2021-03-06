#!/usr/bin/env python

##Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import os
import sys
import thread
try:
    from Xlib import display, X, XK
except:
    print "python-xlib must be installed. Check http://sf.net/projects/python-xlib"
    sys.exit(0)
import OCCViewer

class XOCCWindow:
        def __init__(self, display,title='pythonOCC Xlib'):
            self.d = display
            self.objects = []
            self.viewer_inited = False
            # Find which screen to open the window on
            self.screen = self.d.screen()
            self._function_list = []
            self._function_iterator = iter(self._function_list)
            self.window = self.screen.root.create_window(
                50, 50, 640, 480, 2,
                self.screen.root_depth,
                X.InputOutput,
                X.CopyFromParent,
                event_mask = (X.ExposureMask |
                              X.StructureNotifyMask |
                              X.ButtonPressMask |
                              X.KeyPressMask|
                              X.ButtonReleaseMask |
                              X.PointerMotionMask |
                              X.ResizeRedirectMask)
                )
            self.WM_DELETE_WINDOW = self.d.intern_atom('WM_DELETE_WINDOW')
            self.WM_PROTOCOLS = self.d.intern_atom('WM_PROTOCOLS')
    
            self.window.set_wm_name(title)
            #self.window.set_wm_icon_name('pythonOCC Xlib')
            self.InitDriver()
            self.window.map()
            self._setup_keymap()
        
        def InitDriver(self):
            self.occviewer = OCCViewer.Viewer3d(self.window.id)
            self.occviewer.Create()
            self.occviewer.DisplayTriedron()
            self.occviewer.SetModeShaded()
            #self.viewer_inited = True
        
        def register_function(self,function):
            ''' Enable to call a function when the key "n" is hit
            '''
            self._function_list.append(function)
            self._function_iterator = iter(self._function_list)
            self._setup_keymap()
            print "Fuction %s registered"%function.__name__
            
        def _setup_keymap(self):    
            def set_shade_mode():
                self.occviewer.DisableAntiAliasing()
                self.occviewer.SetModeShaded()
            self._key_map = {
            ord('w'): self.occviewer.SetModeWireFrame,
            ord('s'): set_shade_mode,
            ord('a'): self.occviewer.EnableAntiAliasing,
            ord('b'): self.occviewer.DisableAntiAliasing,
            ord('q'): self.occviewer.SetModeQuickHLR,
            ord('e'): self.occviewer.SetModeExactHLR,
            ord('f'): self.occviewer.FitAll,
            #ord('F'): self._display.ExportToImage("essai.BMP"),
            ord('v'): self.occviewer.SetSelectionModeVertex,
            ord('n'): self._function_iterator,
            65307:sys.exit#'ESC' hit
            }                
        # Main MainLoop, handling events
        def MainLoop(self):
            current = None
            while True:
                e = self.d.next_event()
                if not self.viewer_inited:
                    self.occviewer.OnResize() #need to be resized in ordre tohave a proper display
                    self.viewer_inited = True
                # Window has been destroyed, quit
                if e.type == X.DestroyNotify:
                    sys.exit(0)    
                # Some part of the window has been exposed,
                # redraw all the objects.
                elif e.type == X.Expose:
                  self.occviewer.OnResize()
                   #   o.expose(e)
                # Left button pressed, start to draw
                elif e.type == X.ButtonPress and e.detail == 1:
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                # Middle button pressed, start to draw
                elif e.type == X.ButtonPress and e.detail == 2:
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                elif e.type == X.ButtonPress and e.detail == 3:
                    current = MoveEvent(self, e)
                    #self.objects.append(current)
                # Left button released
                elif e.type == X.ButtonRelease and current:# and e.detail == 1 and current:
                    current.finish(e)
                    current = None
                elif e.type == X.KeyPress:
                    key_code = self.d.keycode_to_keysym(e.detail, 0)
                    try:
                        if isinstance(self._key_map[key_code],type(iter([]))):#iterator type
                            self._key_map[key_code].next()()
                        else:
                            self._key_map[key_code]()
                    except:
                        print 'unrecognized key', key_code
               # Mouse movement with button pressed
                elif e.type == X.MotionNotify and current:
                   current.motion(e)
                elif e.type == X.MotionNotify:
                    # Motion without any button pressed: selection mode
                    self.occviewer.MoveTo(e.event_x,e.event_y)
                elif e.type == X.ClientMessage:
                   if e.client_type == self.WM_PROTOCOLS:
                       fmt, data = e.data
                       if fmt == 32 and data[0] == self.WM_DELETE_WINDOW:
                           sys.exit(0)
                elif e.type == X.ResizeRequest:
                    self.window.map()
                    self.occviewer.OnResize()
                elif e.type == X.ButtonRelease:
                    print "Button Release!!"
                    if self.occviewer.Select(e.event_x,e.event_y):
                        selected_shape = self.occviewer.GetSelectedShape()
                        print selected_shape,selected_shape.ShapeType()
        
class MoveEvent:
       def __init__(self, win, ev):
           self.win = win
           self.lastx = ev.event_x
           self.lasty = ev.event_y
           self.time = ev.time
           self.last = None
           self.event_time = ev.time
   
       def motion(self, ev):
           events = self.win.window.get_motion_events(self.time, ev.time)
           self.time = ev.time
           delta_x = ev.event_x -self.lastx
           delta_y = ev.event_y - self.lasty
           self.lastx = ev.event_x
           self.lasty = ev.event_y
           self.win.occviewer.Rotation(ev.event_x,ev.event_y)
           
       def finish(self,ev):
           self.end_time = ev.time
           if self.end_time-self.event_time<200:#ms
               if self.win.occviewer.Select(ev.event_x,ev.event_y):
                   selected_shape = self.win.occviewer.GetSelectedShape()
                   print selected_shape,selected_shape.ShapeType()
           
def Test3d():
    d = display.Display()
    w = XOCCWindow(d)
    w.occviewer.Test()
    w.MainLoop()

    
if __name__=="__main__":
    Test3d()
