/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_HLRBRep_InternalAlgo::DownCast;
%rename(downcast) Handle_HLRBRep_Algo::DownCast;
%rename(downcast) Handle_HLRBRep_ListNodeOfListOfBPoint::DownCast;
%rename(downcast) Handle_HLRBRep_AreaLimit::DownCast;
%rename(downcast) Handle_HLRBRep_ListNodeOfListOfBPnt2D::DownCast;
%rename(downcast) Handle_HLRBRep_PolyAlgo::DownCast;
%rename(downcast) Handle_HLRBRep_SequenceNodeOfSeqOfShapeBounds::DownCast;
%rename(downcast) Handle_HLRBRep_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter::DownCast;
%rename(downcast) Handle_HLRBRep_Data::DownCast;
%rename(findparameter) HLRBRep_TheProjPCurOfCInter::FindParameter;
%rename(findparameter) HLRBRep_TheProjPCurOfCInter::FindParameter;
%rename(firstparameter) HLRBRep_LineTool::FirstParameter;
%rename(lastparameter) HLRBRep_LineTool::LastParameter;
%rename(continuity) HLRBRep_LineTool::Continuity;
%rename(nbintervals) HLRBRep_LineTool::NbIntervals;
%rename(intervals) HLRBRep_LineTool::Intervals;
%rename(intervalfirst) HLRBRep_LineTool::IntervalFirst;
%rename(intervallast) HLRBRep_LineTool::IntervalLast;
%rename(intervalcontinuity) HLRBRep_LineTool::IntervalContinuity;
%rename(isclosed) HLRBRep_LineTool::IsClosed;
%rename(isperiodic) HLRBRep_LineTool::IsPeriodic;
%rename(period) HLRBRep_LineTool::Period;
%rename(value) HLRBRep_LineTool::Value;
%rename(d0) HLRBRep_LineTool::D0;
%rename(d1) HLRBRep_LineTool::D1;
%rename(d2) HLRBRep_LineTool::D2;
%rename(d3) HLRBRep_LineTool::D3;
%rename(dn) HLRBRep_LineTool::DN;
%rename(resolution) HLRBRep_LineTool::Resolution;
%rename(gettype) HLRBRep_LineTool::GetType;
%rename(line) HLRBRep_LineTool::Line;
%rename(circle) HLRBRep_LineTool::Circle;
%rename(ellipse) HLRBRep_LineTool::Ellipse;
%rename(hyperbola) HLRBRep_LineTool::Hyperbola;
%rename(parabola) HLRBRep_LineTool::Parabola;
%rename(bezier) HLRBRep_LineTool::Bezier;
%rename(bspline) HLRBRep_LineTool::BSpline;
%rename(degree) HLRBRep_LineTool::Degree;
%rename(nbpoles) HLRBRep_LineTool::NbPoles;
%rename(poles) HLRBRep_LineTool::Poles;
%rename(isrational) HLRBRep_LineTool::IsRational;
%rename(polesandweights) HLRBRep_LineTool::PolesAndWeights;
%rename(nbknots) HLRBRep_LineTool::NbKnots;
%rename(knotsandmultiplicities) HLRBRep_LineTool::KnotsAndMultiplicities;
%rename(nbsamples) HLRBRep_LineTool::NbSamples;
%rename(samplepars) HLRBRep_LineTool::SamplePars;
%rename(load) HLRBRep_ShapeToHLR::Load;
%rename(bounding) HLRBRep_ThePolygonToolOfInterCSurf::Bounding;
%rename(deflectionoverestimation) HLRBRep_ThePolygonToolOfInterCSurf::DeflectionOverEstimation;
%rename(closed) HLRBRep_ThePolygonToolOfInterCSurf::Closed;
%rename(nbsegments) HLRBRep_ThePolygonToolOfInterCSurf::NbSegments;
%rename(beginofseg) HLRBRep_ThePolygonToolOfInterCSurf::BeginOfSeg;
%rename(endofseg) HLRBRep_ThePolygonToolOfInterCSurf::EndOfSeg;
%rename(dump) HLRBRep_ThePolygonToolOfInterCSurf::Dump;
%rename(bounding) HLRBRep_ThePolyhedronToolOfInterCSurf::Bounding;
%rename(componentsbounding) HLRBRep_ThePolyhedronToolOfInterCSurf::ComponentsBounding;
%rename(deflectionoverestimation) HLRBRep_ThePolyhedronToolOfInterCSurf::DeflectionOverEstimation;
%rename(nbtriangles) HLRBRep_ThePolyhedronToolOfInterCSurf::NbTriangles;
%rename(triangle) HLRBRep_ThePolyhedronToolOfInterCSurf::Triangle;
%rename(point) HLRBRep_ThePolyhedronToolOfInterCSurf::Point;
%rename(triconnex) HLRBRep_ThePolyhedronToolOfInterCSurf::TriConnex;
%rename(isonbound) HLRBRep_ThePolyhedronToolOfInterCSurf::IsOnBound;
%rename(getborderdeflection) HLRBRep_ThePolyhedronToolOfInterCSurf::GetBorderDeflection;
%rename(dump) HLRBRep_ThePolyhedronToolOfInterCSurf::Dump;
%rename(value) HLRBRep_SLPropsATool::Value;
%rename(d1) HLRBRep_SLPropsATool::D1;
%rename(d2) HLRBRep_SLPropsATool::D2;
%rename(dn) HLRBRep_SLPropsATool::DN;
%rename(continuity) HLRBRep_SLPropsATool::Continuity;
%rename(bounds) HLRBRep_SLPropsATool::Bounds;
%rename(addinterference) HLRBRep_EdgeIList::AddInterference;
%rename(processcomplex) HLRBRep_EdgeIList::ProcessComplex;
%rename(firstparameter) HLRBRep_BCurveTool::FirstParameter;
%rename(lastparameter) HLRBRep_BCurveTool::LastParameter;
%rename(continuity) HLRBRep_BCurveTool::Continuity;
%rename(nbintervals) HLRBRep_BCurveTool::NbIntervals;
%rename(intervals) HLRBRep_BCurveTool::Intervals;
%rename(isclosed) HLRBRep_BCurveTool::IsClosed;
%rename(isperiodic) HLRBRep_BCurveTool::IsPeriodic;
%rename(period) HLRBRep_BCurveTool::Period;
%rename(value) HLRBRep_BCurveTool::Value;
%rename(d0) HLRBRep_BCurveTool::D0;
%rename(d1) HLRBRep_BCurveTool::D1;
%rename(d2) HLRBRep_BCurveTool::D2;
%rename(d3) HLRBRep_BCurveTool::D3;
%rename(dn) HLRBRep_BCurveTool::DN;
%rename(resolution) HLRBRep_BCurveTool::Resolution;
%rename(gettype) HLRBRep_BCurveTool::GetType;
%rename(line) HLRBRep_BCurveTool::Line;
%rename(circle) HLRBRep_BCurveTool::Circle;
%rename(ellipse) HLRBRep_BCurveTool::Ellipse;
%rename(hyperbola) HLRBRep_BCurveTool::Hyperbola;
%rename(parabola) HLRBRep_BCurveTool::Parabola;
%rename(bezier) HLRBRep_BCurveTool::Bezier;
%rename(bspline) HLRBRep_BCurveTool::BSpline;
%rename(degree) HLRBRep_BCurveTool::Degree;
%rename(isrational) HLRBRep_BCurveTool::IsRational;
%rename(nbpoles) HLRBRep_BCurveTool::NbPoles;
%rename(nbknots) HLRBRep_BCurveTool::NbKnots;
%rename(poles) HLRBRep_BCurveTool::Poles;
%rename(polesandweights) HLRBRep_BCurveTool::PolesAndWeights;
%rename(nbsamples) HLRBRep_BCurveTool::NbSamples;
%rename(firstuparameter) HLRBRep_BSurfaceTool::FirstUParameter;
%rename(firstvparameter) HLRBRep_BSurfaceTool::FirstVParameter;
%rename(lastuparameter) HLRBRep_BSurfaceTool::LastUParameter;
%rename(lastvparameter) HLRBRep_BSurfaceTool::LastVParameter;
%rename(nbuintervals) HLRBRep_BSurfaceTool::NbUIntervals;
%rename(nbvintervals) HLRBRep_BSurfaceTool::NbVIntervals;
%rename(uintervals) HLRBRep_BSurfaceTool::UIntervals;
%rename(vintervals) HLRBRep_BSurfaceTool::VIntervals;
%rename(utrim) HLRBRep_BSurfaceTool::UTrim;
%rename(vtrim) HLRBRep_BSurfaceTool::VTrim;
%rename(isuclosed) HLRBRep_BSurfaceTool::IsUClosed;
%rename(isvclosed) HLRBRep_BSurfaceTool::IsVClosed;
%rename(isuperiodic) HLRBRep_BSurfaceTool::IsUPeriodic;
%rename(uperiod) HLRBRep_BSurfaceTool::UPeriod;
%rename(isvperiodic) HLRBRep_BSurfaceTool::IsVPeriodic;
%rename(vperiod) HLRBRep_BSurfaceTool::VPeriod;
%rename(value) HLRBRep_BSurfaceTool::Value;
%rename(d0) HLRBRep_BSurfaceTool::D0;
%rename(d1) HLRBRep_BSurfaceTool::D1;
%rename(d2) HLRBRep_BSurfaceTool::D2;
%rename(d3) HLRBRep_BSurfaceTool::D3;
%rename(dn) HLRBRep_BSurfaceTool::DN;
%rename(ucontinuity) HLRBRep_BSurfaceTool::UContinuity;
%rename(vcontinuity) HLRBRep_BSurfaceTool::VContinuity;
%rename(udegree) HLRBRep_BSurfaceTool::UDegree;
%rename(nbupoles) HLRBRep_BSurfaceTool::NbUPoles;
%rename(nbuknots) HLRBRep_BSurfaceTool::NbUKnots;
%rename(isurational) HLRBRep_BSurfaceTool::IsURational;
%rename(vdegree) HLRBRep_BSurfaceTool::VDegree;
%rename(nbvpoles) HLRBRep_BSurfaceTool::NbVPoles;
%rename(nbvknots) HLRBRep_BSurfaceTool::NbVKnots;
%rename(isvrational) HLRBRep_BSurfaceTool::IsVRational;
%rename(uresolution) HLRBRep_BSurfaceTool::UResolution;
%rename(vresolution) HLRBRep_BSurfaceTool::VResolution;
%rename(gettype) HLRBRep_BSurfaceTool::GetType;
%rename(plane) HLRBRep_BSurfaceTool::Plane;
%rename(cylinder) HLRBRep_BSurfaceTool::Cylinder;
%rename(cone) HLRBRep_BSurfaceTool::Cone;
%rename(torus) HLRBRep_BSurfaceTool::Torus;
%rename(sphere) HLRBRep_BSurfaceTool::Sphere;
%rename(bezier) HLRBRep_BSurfaceTool::Bezier;
%rename(bspline) HLRBRep_BSurfaceTool::BSpline;
%rename(axeofrevolution) HLRBRep_BSurfaceTool::AxeOfRevolution;
%rename(direction) HLRBRep_BSurfaceTool::Direction;
%rename(basiscurve) HLRBRep_BSurfaceTool::BasisCurve;
%rename(nbsamplesu) HLRBRep_BSurfaceTool::NbSamplesU;
%rename(nbsamplesv) HLRBRep_BSurfaceTool::NbSamplesV;
%rename(nbsamplesu) HLRBRep_BSurfaceTool::NbSamplesU;
%rename(nbsamplesv) HLRBRep_BSurfaceTool::NbSamplesV;
%rename(makeedge) HLRBRep::MakeEdge;
%rename(polyhlrangleanddeflection) HLRBRep::PolyHLRAngleAndDeflection;
%rename(bounding) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::Bounding;
%rename(deflectionoverestimation) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::DeflectionOverEstimation;
%rename(closed) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::Closed;
%rename(nbsegments) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::NbSegments;
%rename(beginofseg) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::BeginOfSeg;
%rename(endofseg) HLRBRep_ThePolygon2dToolOfTheIntPCurvePCurveOfCInter::EndOfSeg;
%rename(value) HLRBRep_CLPropsATool::Value;
%rename(d1) HLRBRep_CLPropsATool::D1;
%rename(d2) HLRBRep_CLPropsATool::D2;
%rename(d3) HLRBRep_CLPropsATool::D3;
%rename(continuity) HLRBRep_CLPropsATool::Continuity;
%rename(firstparameter) HLRBRep_CLPropsATool::FirstParameter;
%rename(lastparameter) HLRBRep_CLPropsATool::LastParameter;
%rename(curvaturevalue) HLRBRep_EdgeFaceTool::CurvatureValue;
%rename(uvpoint) HLRBRep_EdgeFaceTool::UVPoint;
%rename(firstparameter) HLRBRep_CurveTool::FirstParameter;
%rename(lastparameter) HLRBRep_CurveTool::LastParameter;
%rename(continuity) HLRBRep_CurveTool::Continuity;
%rename(nbintervals) HLRBRep_CurveTool::NbIntervals;
%rename(intervals) HLRBRep_CurveTool::Intervals;
%rename(getinterval) HLRBRep_CurveTool::GetInterval;
%rename(isclosed) HLRBRep_CurveTool::IsClosed;
%rename(isperiodic) HLRBRep_CurveTool::IsPeriodic;
%rename(period) HLRBRep_CurveTool::Period;
%rename(value) HLRBRep_CurveTool::Value;
%rename(d0) HLRBRep_CurveTool::D0;
%rename(d1) HLRBRep_CurveTool::D1;
%rename(d2) HLRBRep_CurveTool::D2;
%rename(d3) HLRBRep_CurveTool::D3;
%rename(dn) HLRBRep_CurveTool::DN;
%rename(resolution) HLRBRep_CurveTool::Resolution;
%rename(gettype) HLRBRep_CurveTool::GetType;
%rename(thetype) HLRBRep_CurveTool::TheType;
%rename(line) HLRBRep_CurveTool::Line;
%rename(circle) HLRBRep_CurveTool::Circle;
%rename(ellipse) HLRBRep_CurveTool::Ellipse;
%rename(hyperbola) HLRBRep_CurveTool::Hyperbola;
%rename(parabola) HLRBRep_CurveTool::Parabola;
%rename(bezier) HLRBRep_CurveTool::Bezier;
%rename(bspline) HLRBRep_CurveTool::BSpline;
%rename(epsx) HLRBRep_CurveTool::EpsX;
%rename(nbsamples) HLRBRep_CurveTool::NbSamples;
%rename(nbsamples) HLRBRep_CurveTool::NbSamples;
%rename(firstuparameter) HLRBRep_SurfaceTool::FirstUParameter;
%rename(firstvparameter) HLRBRep_SurfaceTool::FirstVParameter;
%rename(lastuparameter) HLRBRep_SurfaceTool::LastUParameter;
%rename(lastvparameter) HLRBRep_SurfaceTool::LastVParameter;
%rename(nbuintervals) HLRBRep_SurfaceTool::NbUIntervals;
%rename(nbvintervals) HLRBRep_SurfaceTool::NbVIntervals;
%rename(uintervals) HLRBRep_SurfaceTool::UIntervals;
%rename(vintervals) HLRBRep_SurfaceTool::VIntervals;
%rename(utrim) HLRBRep_SurfaceTool::UTrim;
%rename(vtrim) HLRBRep_SurfaceTool::VTrim;
%rename(isuclosed) HLRBRep_SurfaceTool::IsUClosed;
%rename(isvclosed) HLRBRep_SurfaceTool::IsVClosed;
%rename(isuperiodic) HLRBRep_SurfaceTool::IsUPeriodic;
%rename(uperiod) HLRBRep_SurfaceTool::UPeriod;
%rename(isvperiodic) HLRBRep_SurfaceTool::IsVPeriodic;
%rename(vperiod) HLRBRep_SurfaceTool::VPeriod;
%rename(value) HLRBRep_SurfaceTool::Value;
%rename(d0) HLRBRep_SurfaceTool::D0;
%rename(d1) HLRBRep_SurfaceTool::D1;
%rename(d2) HLRBRep_SurfaceTool::D2;
%rename(d3) HLRBRep_SurfaceTool::D3;
%rename(dn) HLRBRep_SurfaceTool::DN;
%rename(uresolution) HLRBRep_SurfaceTool::UResolution;
%rename(vresolution) HLRBRep_SurfaceTool::VResolution;
%rename(gettype) HLRBRep_SurfaceTool::GetType;
%rename(plane) HLRBRep_SurfaceTool::Plane;
%rename(cylinder) HLRBRep_SurfaceTool::Cylinder;
%rename(cone) HLRBRep_SurfaceTool::Cone;
%rename(torus) HLRBRep_SurfaceTool::Torus;
%rename(sphere) HLRBRep_SurfaceTool::Sphere;
%rename(bezier) HLRBRep_SurfaceTool::Bezier;
%rename(bspline) HLRBRep_SurfaceTool::BSpline;
%rename(axeofrevolution) HLRBRep_SurfaceTool::AxeOfRevolution;
%rename(direction) HLRBRep_SurfaceTool::Direction;
%rename(basiscurve) HLRBRep_SurfaceTool::BasisCurve;
%rename(basissurface) HLRBRep_SurfaceTool::BasisSurface;
%rename(offsetvalue) HLRBRep_SurfaceTool::OffsetValue;
%rename(nbsamplesu) HLRBRep_SurfaceTool::NbSamplesU;
%rename(nbsamplesv) HLRBRep_SurfaceTool::NbSamplesV;
%rename(nbsamplesu) HLRBRep_SurfaceTool::NbSamplesU;
%rename(nbsamplesv) HLRBRep_SurfaceTool::NbSamplesV;