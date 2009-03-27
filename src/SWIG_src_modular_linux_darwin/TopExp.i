/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module TopExp

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include TopExp_dependencies.i


%include TopExp_headers.i

typedef TopoDS_Iterator * TopExp_Stack;



%nodefaultctor Handle_TopExp_StackNodeOfStackOfIterator;
class Handle_TopExp_StackNodeOfStackOfIterator : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator();
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const Handle_TopExp_StackNodeOfStackOfIterator &aHandle);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator(const TopExp_StackNodeOfStackOfIterator *anItem);
		%feature("autodoc", "1");
		Handle_TopExp_StackNodeOfStackOfIterator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopExp_StackNodeOfStackOfIterator {
	TopExp_StackNodeOfStackOfIterator* GetObject() {
	return (TopExp_StackNodeOfStackOfIterator*)$self->Access();
	}
};
%extend Handle_TopExp_StackNodeOfStackOfIterator {
	~Handle_TopExp_StackNodeOfStackOfIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_TopExp_StackNodeOfStackOfIterator\n");}
	}
};

%nodefaultctor TopExp;
class TopExp {
	public:
		%feature("autodoc", "1");
		TopExp();
		%feature("autodoc", "1");
		void MapShapes(const TopoDS_Shape &S, const TopAbs_ShapeEnum T, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		void MapShapes(const TopoDS_Shape &S, TopTools_IndexedMapOfShape & M);
		%feature("autodoc", "1");
		void MapShapesAndAncestors(const TopoDS_Shape &S, const TopAbs_ShapeEnum TS, const TopAbs_ShapeEnum TA, TopTools_IndexedDataMapOfShapeListOfShape & M);
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(const TopoDS_Edge &E, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Edge &E, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast, const Standard_Boolean CumOri=0);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Wire &W, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast);
		%feature("autodoc", "1");
		Standard_Boolean CommonVertex(const TopoDS_Edge &E1, const TopoDS_Edge &E2, TopoDS_Vertex & V);

};
%extend TopExp {
	~TopExp() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopExp\n");}
	}
};

%nodefaultctor TopExp_StackNodeOfStackOfIterator;
class TopExp_StackNodeOfStackOfIterator : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopExp_StackNodeOfStackOfIterator(const TopoDS_Iterator &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Iterator & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopExp_StackNodeOfStackOfIterator {
	Handle_TopExp_StackNodeOfStackOfIterator GetHandle() {
	return *(Handle_TopExp_StackNodeOfStackOfIterator*) &$self;
	}
};
%extend TopExp_StackNodeOfStackOfIterator {
	~TopExp_StackNodeOfStackOfIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopExp_StackNodeOfStackOfIterator\n");}
	}
};

%nodefaultctor TopExp_StackOfIterator;
class TopExp_StackOfIterator {
	public:
		%feature("autodoc", "1");
		TopExp_StackOfIterator();
		%feature("autodoc", "1");
		const TopExp_StackOfIterator & Assign(const TopExp_StackOfIterator &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const TopoDS_Iterator & Top() const;
		%feature("autodoc", "1");
		void Push(const TopoDS_Iterator &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		TopoDS_Iterator & ChangeTop();

};
%extend TopExp_StackOfIterator {
	~TopExp_StackOfIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopExp_StackOfIterator\n");}
	}
};

%nodefaultctor TopExp_Explorer;
class TopExp_Explorer {
	public:
		%feature("autodoc", "1");
		TopExp_Explorer();
		%feature("autodoc", "1");
		TopExp_Explorer(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S, const TopAbs_ShapeEnum ToFind, const TopAbs_ShapeEnum ToAvoid=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Current() const;
		%feature("autodoc", "1");
		void ReInit();
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Destroy();

};
%extend TopExp_Explorer {
	~TopExp_Explorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopExp_Explorer\n");}
	}
};

%nodefaultctor TopExp_StackIteratorOfStackOfIterator;
class TopExp_StackIteratorOfStackOfIterator {
	public:
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator();
		%feature("autodoc", "1");
		TopExp_StackIteratorOfStackOfIterator(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		void Initialize(const TopExp_StackOfIterator &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Iterator & Value() const;

};
%extend TopExp_StackIteratorOfStackOfIterator {
	~TopExp_StackIteratorOfStackOfIterator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of TopExp_StackIteratorOfStackOfIterator\n");}
	}
};