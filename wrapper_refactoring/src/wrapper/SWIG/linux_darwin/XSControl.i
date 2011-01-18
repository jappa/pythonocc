/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module XSControl
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include XSControl_dependencies.i


%include XSControl_headers.i




%nodefaultctor Handle_XSControl_TransferWriter;
class Handle_XSControl_TransferWriter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter();
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter(const XSControl_TransferWriter *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter(const XSControl_TransferWriter *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter & operator=(const XSControl_TransferWriter *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter & operator=(const XSControl_TransferWriter *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_TransferWriter {
	XSControl_TransferWriter* GetObject() {
	return (XSControl_TransferWriter*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_TransferWriter::~Handle_XSControl_TransferWriter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_TransferWriter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_SignTransferStatus;
class Handle_XSControl_SignTransferStatus : public Handle_IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus();
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus(const XSControl_SignTransferStatus *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus(const XSControl_SignTransferStatus *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus & operator=(const XSControl_SignTransferStatus *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus & operator=(const XSControl_SignTransferStatus *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SignTransferStatus const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_SignTransferStatus {
	XSControl_SignTransferStatus* GetObject() {
	return (XSControl_SignTransferStatus*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_SignTransferStatus::~Handle_XSControl_SignTransferStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_SignTransferStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_TransferReader;
class Handle_XSControl_TransferReader : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader();
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader(const XSControl_TransferReader *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader(const XSControl_TransferReader *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader & operator=(const XSControl_TransferReader *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader & operator=(const XSControl_TransferReader *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_TransferReader {
	XSControl_TransferReader* GetObject() {
	return (XSControl_TransferReader*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_TransferReader::~Handle_XSControl_TransferReader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_TransferReader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_Vars;
class Handle_XSControl_Vars : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_Vars();
		%feature("autodoc", "1");
		Handle_XSControl_Vars(const XSControl_Vars *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Vars(const XSControl_Vars *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Vars & operator=(const XSControl_Vars *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Vars & operator=(const XSControl_Vars *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Vars const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_Vars {
	XSControl_Vars* GetObject() {
	return (XSControl_Vars*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_Vars::~Handle_XSControl_Vars %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_Vars {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_SelectForTransfer;
class Handle_XSControl_SelectForTransfer : public Handle_IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer();
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer(const XSControl_SelectForTransfer *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer(const XSControl_SelectForTransfer *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer & operator=(const XSControl_SelectForTransfer *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer & operator=(const XSControl_SelectForTransfer *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_SelectForTransfer const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_SelectForTransfer {
	XSControl_SelectForTransfer* GetObject() {
	return (XSControl_SelectForTransfer*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_SelectForTransfer::~Handle_XSControl_SelectForTransfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_SelectForTransfer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_WorkSession;
class Handle_XSControl_WorkSession : public Handle_IFSelect_WorkSession {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession();
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession(const XSControl_WorkSession *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession(const XSControl_WorkSession *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession & operator=(const XSControl_WorkSession *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession & operator=(const XSControl_WorkSession *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_WorkSession {
	XSControl_WorkSession* GetObject() {
	return (XSControl_WorkSession*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_WorkSession::~Handle_XSControl_WorkSession %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_WorkSession {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_Controller;
class Handle_XSControl_Controller : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_Controller();
		%feature("autodoc", "1");
		Handle_XSControl_Controller(const XSControl_Controller *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Controller(const XSControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Controller & operator=(const XSControl_Controller *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_Controller & operator=(const XSControl_Controller *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_Controller const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_Controller {
	XSControl_Controller* GetObject() {
	return (XSControl_Controller*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_Controller::~Handle_XSControl_Controller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_Controller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_XSControl_ConnectedShapes;
class Handle_XSControl_ConnectedShapes : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes();
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes(const XSControl_ConnectedShapes *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes(const XSControl_ConnectedShapes *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes & operator=(const XSControl_ConnectedShapes *aHandle);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes & operator=(const XSControl_ConnectedShapes *anItem);
		%feature("autodoc", "1");
		Handle_XSControl_ConnectedShapes const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_XSControl_ConnectedShapes {
	XSControl_ConnectedShapes* GetObject() {
	return (XSControl_ConnectedShapes*)$self->Access();
	}
};
%feature("shadow") Handle_XSControl_ConnectedShapes::~Handle_XSControl_ConnectedShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XSControl_ConnectedShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_SignTransferStatus;
class XSControl_SignTransferStatus : public IFSelect_Signature {
	public:
		%feature("autodoc", "1");
		XSControl_SignTransferStatus();
		%feature("autodoc", "1");
		XSControl_SignTransferStatus(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		void SetReader(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		void SetMap(const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess Map() const;
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader Reader() const;
		%feature("autodoc", "1");
		virtual		char * Value(const Standard_Transient *ent, const Interface_InterfaceModel *model) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_SignTransferStatus {
	Handle_XSControl_SignTransferStatus GetHandle() {
	return *(Handle_XSControl_SignTransferStatus*) &$self;
	}
};
%extend XSControl_SignTransferStatus {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_SignTransferStatus::~XSControl_SignTransferStatus %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_SignTransferStatus {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_Writer;
class XSControl_Writer {
	public:
		%feature("autodoc", "1");
		XSControl_Writer();
		%feature("autodoc", "1");
		XSControl_Writer(const char * norm);
		%feature("autodoc", "1");
		XSControl_Writer(const XSControl_WorkSession *WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean SetNorm(const char * norm);
		%feature("autodoc", "1");
		void SetWS(const XSControl_WorkSession *WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession WS() const;
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model(const Standard_Boolean newone=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferShape(const TopoDS_Shape &sh, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus WriteFile(const char * filename);
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;

};
%feature("shadow") XSControl_Writer::~XSControl_Writer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_Writer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_Functions;
class XSControl_Functions {
	public:
		%feature("autodoc", "1");
		XSControl_Functions();
		%feature("autodoc", "1");
		void Init();

};
%feature("shadow") XSControl_Functions::~XSControl_Functions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_Functions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_ConnectedShapes;
class XSControl_ConnectedShapes : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		XSControl_ConnectedShapes();
		%feature("autodoc", "1");
		XSControl_ConnectedShapes(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		void SetReader(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Standard_Transient *ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient AdjacentEntities(const TopoDS_Shape &ashape, const Transfer_TransientProcess *TP, const TopAbs_ShapeEnum type);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_ConnectedShapes {
	Handle_XSControl_ConnectedShapes GetHandle() {
	return *(Handle_XSControl_ConnectedShapes*) &$self;
	}
};
%extend XSControl_ConnectedShapes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_ConnectedShapes::~XSControl_ConnectedShapes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_ConnectedShapes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_Utils;
class XSControl_Utils {
	public:
		%feature("autodoc", "1");
		XSControl_Utils();
		%feature("autodoc", "1");
		void TraceLine(const char * line) const;
		%feature("autodoc", "1");
		void TraceLines(const Standard_Transient *lines) const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Transient *item, const Standard_Type *what) const;
		%feature("autodoc", "1");
		char * TypeName(const Standard_Transient *item, const Standard_Boolean nopk=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient TraValue(const Standard_Transient *list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient NewSeqTra() const;
		%feature("autodoc", "1");
		void AppendTra(const TColStd_HSequenceOfTransient *seqval, const Standard_Transient *traval) const;
		%feature("autodoc", "1");
		char * DateString(const Standard_Integer yy, const Standard_Integer mm, const Standard_Integer dd, const Standard_Integer hh, const Standard_Integer mn, const Standard_Integer ss) const;
		%feature("autodoc","DateValues(Standard_CString text) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void DateValues(const char * text, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		char * ToCString(const TCollection_HAsciiString *strval) const;
		%feature("autodoc", "1");
		char * ToCString(const TCollection_AsciiString &strval) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ToHString(const char * strcon) const;
		%feature("autodoc", "1");
		TCollection_AsciiString ToAString(const char * strcon) const;
		%feature("autodoc", "1");
		Standard_ExtString ToEString(const TCollection_HExtendedString *strval) const;
		%feature("autodoc", "1");
		Standard_ExtString ToEString(const TCollection_ExtendedString &strval) const;
		%feature("autodoc", "1");
		Handle_TCollection_HExtendedString ToHString(const Standard_ExtString strcon) const;
		%feature("autodoc", "1");
		TCollection_ExtendedString ToXString(const Standard_ExtString strcon) const;
		%feature("autodoc", "1");
		Standard_ExtString AsciiToExtended(const char * str) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAscii(const Standard_ExtString str) const;
		%feature("autodoc", "1");
		char * ExtendedToAscii(const Standard_ExtString str) const;
		%feature("autodoc", "1");
		char * CStrValue(const Standard_Transient *list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_ExtString EStrValue(const Standard_Transient *list, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString NewSeqCStr() const;
		%feature("autodoc", "1");
		void AppendCStr(const TColStd_HSequenceOfHAsciiString *seqval, const char * strval) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHExtendedString NewSeqEStr() const;
		%feature("autodoc", "1");
		void AppendEStr(const TColStd_HSequenceOfHExtendedString *seqval, const Standard_ExtString strval) const;
		%feature("autodoc", "1");
		Standard_Boolean WriteShape(const TopoDS_Shape &shape, const char * filename) const;
		%feature("autodoc", "1");
		TopoDS_Shape NewShape() const;
		%feature("autodoc", "1");
		Standard_Boolean ReadShape(TopoDS_Shape & shape, const char * filename) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNullShape(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		TopoDS_Shape CompoundFromSeq(const TopTools_HSequenceOfShape *seqval) const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType(const TopoDS_Shape &shape, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape SortedCompound(const TopoDS_Shape &shape, const TopAbs_ShapeEnum type, const Standard_Boolean explore, const Standard_Boolean compound) const;
		%feature("autodoc", "1");
		TopoDS_Shape ShapeValue(const TopTools_HSequenceOfShape *seqv, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape NewSeqShape() const;
		%feature("autodoc", "1");
		void AppendShape(const TopTools_HSequenceOfShape *seqv, const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ShapeBinder(const TopoDS_Shape &shape, const Standard_Boolean hs=1) const;
		%feature("autodoc", "1");
		TopoDS_Shape BinderShape(const Standard_Transient *tr) const;
		%feature("autodoc", "1");
		Standard_Integer SeqLength(const Standard_Transient *list) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient SeqToArr(const Standard_Transient *seq, const Standard_Integer first=1) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient ArrToSeq(const Standard_Transient *arr) const;
		%feature("autodoc", "1");
		Standard_Integer SeqIntValue(const TColStd_HSequenceOfInteger *list, const Standard_Integer num) const;

};
%feature("shadow") XSControl_Utils::~XSControl_Utils %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_Utils {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_FuncShape;
class XSControl_FuncShape {
	public:
		%feature("autodoc", "1");
		XSControl_FuncShape();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Integer MoreShapes(const XSControl_WorkSession *session, Handle_TopTools_HSequenceOfShape & list, const char * name);
		%feature("autodoc", "1");
		Standard_Boolean FileAndVar(const XSControl_WorkSession *session, const char * file, const char * var, const char * def, TCollection_AsciiString & resfile, TCollection_AsciiString & resvar);

};
%feature("shadow") XSControl_FuncShape::~XSControl_FuncShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_FuncShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_Controller;
class XSControl_Controller : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void SetNames(const char * longname, const char * shortname);
		%feature("autodoc", "1");
		void AutoRecord() const;
		%feature("autodoc", "1");
		void Record(const char * name) const;
		%feature("autodoc", "1");
		Handle_XSControl_Controller Recorded(const char * name);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString ListRecorded(const Standard_Integer mode=0);
		%feature("autodoc", "1");
		char * Name(const Standard_Boolean rsc=0) const;
		%feature("autodoc", "1");
		Handle_IFSelect_Profile Profile() const;
		%feature("autodoc", "1");
		void DefineProfile(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean SetProfile(const char * confname);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SettingProfile(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean ApplyProfile(const XSControl_WorkSession *WS, const char * confname);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ApplyingProfile(const XSControl_WorkSession *WS, const char * confname);
		%feature("autodoc", "1");
		Handle_Interface_Protocol Protocol() const;
		%feature("autodoc", "1");
		Handle_IFSelect_Signature SignType() const;
		%feature("autodoc", "1");
		Handle_IFSelect_WorkLibrary WorkLibrary() const;
		%feature("autodoc", "1");
		virtual		Handle_Interface_InterfaceModel NewModel() const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfTransientProcess ActorRead(const Interface_InterfaceModel *model) const;
		%feature("autodoc", "1");
		virtual		Handle_Transfer_ActorOfFinderProcess ActorWrite() const;
		%feature("autodoc", "1");
		virtual		void UpdateStatics(const Standard_Integer mode, const char * criter="") const;
		%feature("autodoc", "1");
		void SetModeWrite(const Standard_Integer modemin, const Standard_Integer modemax, const Standard_Boolean shape=1);
		%feature("autodoc", "1");
		void SetModeWriteHelp(const Standard_Integer modetrans, const char * help, const Standard_Boolean shape=1);
		%feature("autodoc","ModeWriteBounds(Standard_Boolean shape=1) -> [Standard_Integer, Standard_Integer]");

		Standard_Boolean ModeWriteBounds(Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsModeWrite(const Standard_Integer modetrans, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		char * ModeWriteHelp(const Standard_Integer modetrans, const Standard_Boolean shape=1) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RecognizeWriteTransient(const Standard_Transient *obj, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteTransient(const Standard_Transient *obj, const Transfer_FinderProcess *FP, const Interface_InterfaceModel *model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean RecognizeWriteShape(const TopoDS_Shape &shape, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Transfer_FinderProcess *FP, const Interface_InterfaceModel *model, const Standard_Integer modetrans=0) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Transient ClusterContext(const XSControl_WorkSession *WS) const;
		%feature("autodoc", "1");
		virtual		Interface_CheckIterator ResolveCluster(const XSControl_WorkSession *WS, const Standard_Transient *context) const;
		%feature("autodoc", "1");
		void AddControlItem(const Standard_Transient *item, const char * name);
		%feature("autodoc", "1");
		Handle_Standard_Transient ControlItem(const char * name) const;
		%feature("autodoc", "1");
		void TraceStatic(const char * name, const Standard_Integer use);
		%feature("autodoc", "1");
		void AddSessionItem(const Standard_Transient *item, const char * name, const char * setapplied="");
		%feature("autodoc", "1");
		Handle_Standard_Transient SessionItem(const char * name) const;
		%feature("autodoc", "1");
		Standard_Boolean IsApplied(const Standard_Transient *item) const;
		%feature("autodoc", "1");
		virtual		void Customise(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		void Customising(Handle_XSControl_WorkSession & WS);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient AdaptorSession() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_Controller {
	Handle_XSControl_Controller GetHandle() {
	return *(Handle_XSControl_Controller*) &$self;
	}
};
%extend XSControl_Controller {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_Controller::~XSControl_Controller %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_Controller {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_Reader;
class XSControl_Reader {
	public:
		%feature("autodoc", "1");
		XSControl_Reader();
		%feature("autodoc", "1");
		XSControl_Reader(const char * norm);
		%feature("autodoc", "1");
		XSControl_Reader(const XSControl_WorkSession *WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Standard_Boolean SetNorm(const char * norm);
		%feature("autodoc", "1");
		void SetWS(const XSControl_WorkSession *WS, const Standard_Boolean scratch=1);
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession WS() const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus ReadFile(const char * filename);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const char * first="", const char * second="");
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GiveList(const char * first, const Standard_Transient *ent);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbRootsForTransfer();
		%feature("autodoc", "1");
		Handle_Standard_Transient RootForTransfer(const Standard_Integer num=1);
		%feature("autodoc", "1");
		Standard_Boolean TransferOneRoot(const Standard_Integer num=1);
		%feature("autodoc", "1");
		Standard_Boolean TransferOne(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean TransferEntity(const Standard_Transient *start);
		%feature("autodoc", "1");
		Standard_Integer TransferList(const TColStd_HSequenceOfTransient *list);
		%feature("autodoc", "1");
		Standard_Integer TransferRoots();
		%feature("autodoc", "1");
		void ClearShapes();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const Standard_Integer num=1) const;
		%feature("autodoc", "1");
		TopoDS_Shape OneShape() const;
		%feature("autodoc", "1");
		void PrintCheckLoad(const Standard_Boolean failsonly, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void PrintCheckTransfer(const Standard_Boolean failsonly, const IFSelect_PrintCount mode) const;
		%feature("autodoc", "1");
		void PrintStatsTransfer(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc","GetStatsTransfer(const list) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void GetStatsTransfer(const TColStd_HSequenceOfTransient *list, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;

};
%feature("shadow") XSControl_Reader::~XSControl_Reader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_Reader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_TransferWriter;
class XSControl_TransferWriter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSControl_TransferWriter();
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess FinderProcess() const;
		%feature("autodoc", "1");
		void SetFinderProcess(const Transfer_FinderProcess *FP);
		%feature("autodoc", "1");
		Handle_XSControl_Controller Controller() const;
		%feature("autodoc", "1");
		void SetController(const XSControl_Controller *ctl);
		%feature("autodoc", "1");
		void Clear(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Integer TransferMode() const;
		%feature("autodoc", "1");
		void SetTransferMode(const Standard_Integer mode);
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Standard_Boolean RecognizeTransient(const Standard_Transient *obj);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteTransient(const Interface_InterfaceModel *model, const Standard_Transient *obj);
		%feature("autodoc", "1");
		Standard_Boolean RecognizeShape(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteShape(const Interface_InterfaceModel *model, const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList() const;
		%feature("autodoc", "1");
		Interface_CheckIterator ResultCheckList(const Interface_InterfaceModel *model) const;
		%feature("autodoc", "1");
		void PrintStatsProcess(const Transfer_FinderProcess *TP, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_TransferWriter {
	Handle_XSControl_TransferWriter GetHandle() {
	return *(Handle_XSControl_TransferWriter*) &$self;
	}
};
%extend XSControl_TransferWriter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_TransferWriter::~XSControl_TransferWriter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_TransferWriter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_WorkSession;
class XSControl_WorkSession : public IFSelect_WorkSession {
	public:
		%feature("autodoc", "1");
		XSControl_WorkSession();
		%feature("autodoc", "1");
		virtual		void ClearData(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Boolean SelectNorm(const char * normname, const char * profile="");
		%feature("autodoc", "1");
		Standard_Boolean SelectProfile(const char * profile);
		%feature("autodoc", "1");
		void SetController(const XSControl_Controller *ctl);
		%feature("autodoc", "1");
		virtual		void AdaptNorm();
		%feature("autodoc", "1");
		char * SelectedNorm(const Standard_Boolean rsc=0) const;
		%feature("autodoc", "1");
		Handle_XSControl_Controller NormAdaptor() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient Context() const;
		%feature("autodoc", "1");
		void SetAllContext(const Dico_DictionaryOfTransient *context);
		%feature("autodoc", "1");
		void ClearContext();
		%feature("autodoc", "1");
		Standard_Boolean PrintTransferStatus(const Standard_Integer num, const Standard_Boolean wri, const Message_Messenger *S) const;
		%feature("autodoc", "1");
		void InitTransferReader(const Standard_Integer mode);
		%feature("autodoc", "1");
		void SetTransferReader(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader TransferReader() const;
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess MapReader() const;
		%feature("autodoc", "1");
		Standard_Boolean SetMapReader(const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Handle_Standard_Transient Result(const Standard_Transient *ent, const Standard_Integer mode) const;
		%feature("autodoc", "1");
		Standard_Integer TransferReadOne(const Standard_Transient *ents);
		%feature("autodoc", "1");
		Standard_Integer TransferReadRoots();
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel NewModel();
		%feature("autodoc", "1");
		Handle_XSControl_TransferWriter TransferWriter() const;
		%feature("autodoc", "1");
		Handle_Transfer_FinderProcess MapWriter() const;
		%feature("autodoc", "1");
		Standard_Boolean SetMapWriter(const Transfer_FinderProcess *FP);
		%feature("autodoc", "1");
		void SetModeWriteShape(const Standard_Integer mode);
		%feature("autodoc", "1");
		Standard_Integer ModeWriteShape() const;
		%feature("autodoc", "1");
		IFSelect_ReturnStatus TransferWriteShape(const TopoDS_Shape &shape, const Standard_Boolean compgraph=1);
		%feature("autodoc", "1");
		Interface_CheckIterator TransferWriteCheckList() const;
		%feature("autodoc", "1");
		Handle_XSControl_Vars Vars() const;
		%feature("autodoc", "1");
		void SetVars(const XSControl_Vars *newvars);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_WorkSession {
	Handle_XSControl_WorkSession GetHandle() {
	return *(Handle_XSControl_WorkSession*) &$self;
	}
};
%extend XSControl_WorkSession {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_WorkSession::~XSControl_WorkSession %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_WorkSession {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_TransferReader;
class XSControl_TransferReader : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		XSControl_TransferReader();
		%feature("autodoc", "1");
		void SetController(const XSControl_Controller *control);
		%feature("autodoc", "1");
		void SetActor(const Transfer_ActorOfTransientProcess *actor);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess Actor();
		%feature("autodoc", "1");
		void SetModel(const Interface_InterfaceModel *model);
		%feature("autodoc", "1");
		void SetGraph(const Interface_HGraph *graph);
		%feature("autodoc", "1");
		Handle_Interface_InterfaceModel Model() const;
		%feature("autodoc", "1");
		void SetContext(const char * name, const Standard_Transient *ctx);
		%feature("autodoc", "1");
		Standard_Boolean GetContext(const char * name, const Standard_Type *type, Handle_Standard_Transient & ctx) const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & Context();
		%feature("autodoc", "1");
		void SetFileName(const char * name);
		%feature("autodoc", "1");
		char * FileName() const;
		%feature("autodoc", "1");
		void Clear(const Standard_Integer mode);
		%feature("autodoc", "1");
		Handle_Transfer_TransientProcess TransientProcess() const;
		%feature("autodoc", "1");
		void SetTransientProcess(const Transfer_TransientProcess *TP);
		%feature("autodoc", "1");
		Standard_Boolean RecordResult(const Standard_Transient *ent);
		%feature("autodoc", "1");
		Standard_Boolean IsRecorded(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasResult(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient RecordedList() const;
		%feature("autodoc", "1");
		Standard_Boolean Skip(const Standard_Transient *ent);
		%feature("autodoc", "1");
		Standard_Boolean IsSkipped(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsMarked(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel FinalResult(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		char * FinalEntityLabel(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Standard_Integer FinalEntityNumber(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Handle_Transfer_ResultFromModel ResultFromNumber(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient TransientResult(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		TopoDS_Shape ShapeResult(const Standard_Transient *ent) const;
		%feature("autodoc", "1");
		Standard_Boolean ClearResult(const Standard_Transient *ent, const Standard_Integer mode);
		%feature("autodoc", "1");
		Handle_Standard_Transient EntityFromResult(const Standard_Transient *res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient EntityFromShapeResult(const TopoDS_Shape &res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient EntitiesFromShapeList(const TopTools_HSequenceOfShape *res, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator CheckList(const Standard_Transient *ent, const Standard_Integer level=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasChecks(const Standard_Transient *ent, const Standard_Boolean failsonly) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient CheckedList(const Standard_Transient *ent, const Interface_CheckStatus withcheck=Interface_CheckAny, const Standard_Boolean result=1) const;
		%feature("autodoc", "1");
		Standard_Boolean BeginTransfer();
		%feature("autodoc", "1");
		Standard_Boolean Recognize(const Standard_Transient *ent);
		%feature("autodoc", "1");
		Standard_Integer TransferOne(const Standard_Transient *ent, const Standard_Boolean rec=1);
		%feature("autodoc", "1");
		Standard_Integer TransferList(const TColStd_HSequenceOfTransient *list, const Standard_Boolean rec=1);
		%feature("autodoc", "1");
		Standard_Integer TransferRoots(const Interface_Graph &G);
		%feature("autodoc", "1");
		void TransferClear(const Standard_Transient *ent, const Standard_Integer level=0);
		%feature("autodoc", "1");
		void PrintStats(const Standard_Integer what, const Standard_Integer mode=0) const;
		%feature("autodoc", "1");
		Interface_CheckIterator LastCheckList() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient LastTransferList(const Standard_Boolean roots) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape ShapeResultList(const Standard_Boolean rec);
		%feature("autodoc", "1");
		void PrintStatsProcess(const Transfer_TransientProcess *TP, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		void PrintStatsOnList(const Transfer_TransientProcess *TP, const TColStd_HSequenceOfTransient *list, const Standard_Integer what, const Standard_Integer mode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_TransferReader {
	Handle_XSControl_TransferReader GetHandle() {
	return *(Handle_XSControl_TransferReader*) &$self;
	}
};
%extend XSControl_TransferReader {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_TransferReader::~XSControl_TransferReader %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_TransferReader {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl;
class XSControl {
	public:
		%feature("autodoc", "1");
		XSControl();
		%feature("autodoc", "1");
		Handle_XSControl_WorkSession Session(const IFSelect_SessionPilot *pilot);
		%feature("autodoc", "1");
		Handle_XSControl_Vars Vars(const IFSelect_SessionPilot *pilot);

};
%feature("shadow") XSControl::~XSControl %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XSControl_SelectForTransfer;
class XSControl_SelectForTransfer : public IFSelect_SelectExtract {
	public:
		%feature("autodoc", "1");
		XSControl_SelectForTransfer();
		%feature("autodoc", "1");
		XSControl_SelectForTransfer(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		void SetReader(const XSControl_TransferReader *TR);
		%feature("autodoc", "1");
		void SetActor(const Transfer_ActorOfTransientProcess *act);
		%feature("autodoc", "1");
		Handle_Transfer_ActorOfTransientProcess Actor() const;
		%feature("autodoc", "1");
		Handle_XSControl_TransferReader Reader() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Sort(const Standard_Integer rank, const Standard_Transient *ent, const Interface_InterfaceModel *model) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExtractLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XSControl_SelectForTransfer {
	Handle_XSControl_SelectForTransfer GetHandle() {
	return *(Handle_XSControl_SelectForTransfer*) &$self;
	}
};
%extend XSControl_SelectForTransfer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XSControl_SelectForTransfer::~XSControl_SelectForTransfer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XSControl_SelectForTransfer {
	void _kill_pointed() {
		delete $self;
	}
};