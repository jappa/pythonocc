//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#include <NMTTools_MapIteratorOfMapOfPaveBlock.hxx>

#ifndef _Standard_NoSuchObject_HeaderFile
#include <Standard_NoSuchObject.hxx>
#endif
#ifndef _BOPTools_PaveBlock_HeaderFile
#include <BOPTools_PaveBlock.hxx>
#endif
#ifndef _BOPTools_PaveBlockMapHasher_HeaderFile
#include <BOPTools_PaveBlockMapHasher.hxx>
#endif
#ifndef _NMTTools_MapOfPaveBlock_HeaderFile
#include <NMTTools_MapOfPaveBlock.hxx>
#endif
#ifndef _NMTTools_StdMapNodeOfMapOfPaveBlock_HeaderFile
#include <NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#endif
 

#define TheKey BOPTools_PaveBlock
#define TheKey_hxx <BOPTools_PaveBlock.hxx>
#define Hasher BOPTools_PaveBlockMapHasher
#define Hasher_hxx <BOPTools_PaveBlockMapHasher.hxx>
#define TCollection_StdMapNode NMTTools_StdMapNodeOfMapOfPaveBlock
#define TCollection_StdMapNode_hxx <NMTTools_StdMapNodeOfMapOfPaveBlock.hxx>
#define TCollection_MapIterator NMTTools_MapIteratorOfMapOfPaveBlock
#define TCollection_MapIterator_hxx <NMTTools_MapIteratorOfMapOfPaveBlock.hxx>
#define Handle_TCollection_StdMapNode Handle_NMTTools_StdMapNodeOfMapOfPaveBlock
#define TCollection_StdMapNode_Type_() NMTTools_StdMapNodeOfMapOfPaveBlock_Type_()
#define TCollection_Map NMTTools_MapOfPaveBlock
#define TCollection_Map_hxx <NMTTools_MapOfPaveBlock.hxx>
#include <TCollection_MapIterator.gxx>

