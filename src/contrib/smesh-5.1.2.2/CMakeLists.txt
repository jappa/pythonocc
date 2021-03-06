# SMESH cmake build file
IF(WIN32)
  PROJECT(SMESH CXX)
ELSE(WIN32)
  PROJECT(SMESH Fortran CXX)
ENDIF(WIN32)
SET(SMESH_VERSION_MAJOR 5)
SET(SMESH_VERSION_MINOR 1)
SET(SMESH_VERSION_PATCH 2)
SET(SMESH_VERSION_TWEAK 2)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

#####################
# Set ABI SOVERSION #
#####################
SET(SMESH_ABI_SOVERSION 1)
SET(SMESH_ABI_VERSION ${SMESH_ABI_SOVERSION}.0.0)

SET(CMAKE_BUILD_TYPE "Release") # By default, build in release mode
SET(BUILD_SHARED_LIBS ON)
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(inc)

################################
# OCE include and lib location #
################################
SET( OCE_INCLUDE_PATH /usr/local/include/oce CACHE
  PATH "OCE headers location" )
SET( OCE_LIB_PATH /usr/local/lib CACHE
  PATH "OCE libraries location" )
# Tells CMake where are the required headers
INCLUDE_DIRECTORIES(${OCE_INCLUDE_PATH})
LINK_DIRECTORIES(${OCE_LIB_PATH})

#################
# Release build #
#################
IF (NOT MSVC)
  IF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
    SET( ${PROJECT_NAME}_BUILD_TYPE "Release" CACHE STRING "Build type" ) # By default set release build
  ENDIF( NOT DEFINED ${PROJECT_NAME}_BUILD_TYPE )
  SET( CMAKE_BUILD_TYPE ${${PROJECT_NAME}_BUILD_TYPE} CACHE INTERNAL "Build type,
    immutable" FORCE )
ENDIF(NOT MSVC)

##############################
# Boost headers are required #
##############################
INCLUDE_DIRECTORIES(../boost-1.52.0)

################
# Check Fortran#
################
IF(UNIX)
  INCLUDE(CMakeDetermineFortranCompiler)
ENDIF(UNIX)

############################
# Check 32/64 bit platform #
############################
IF (${CMAKE_SIZEOF_VOID_P} MATCHES "8") # It is 64bit, 32 bit systems returns 4
    ADD_DEFINITIONS(-D_OCC64)
    MESSAGE("-- Build 64bit")
    SET(BIT 64)
ELSE (${CMAKE_SIZEOF_VOID_P} MATCHES "8")
    MESSAGE("-- Build 32bit")
    SET(BIT 32)
ENDIF(${CMAKE_SIZEOF_VOID_P} MATCHES "8")

######################################################
# Configure Build settings according to the platform #
######################################################
IF(UNIX)
    # Same settings are used for both MacOSX and Unix/Linux
    ADD_DEFINITIONS(-DHAVE_CONFIG_H -DLIN -DCSFDB -DOCC_CONVERT_SIGNALS)
ELSE(UNIX)
  IF(WIN32)
    ######### Windows ###########
    MESSAGE("-- Windows system detected")
    ADD_DEFINITIONS(-DWNT -DWIN32 -D_WINDOWS -DCSFDB -DHAVE_CONFIG_H)
  ELSE(WIN32)
    MESSAGE("Unknown platform")
  ENDIF(WIN32)
ENDIF(UNIX)

##########################
# SMESH lib source files #
##########################
IF(WIN32)
FILE(GLOB SMESH_LIB_SOURCE_FILES src/SMDS/SMDS*.cpp
                                 src/Driver/*.cpp
                                 src/DriverSTL/DriverSTL*.cpp
                                 src/DriverDAT/DriverDAT*.cpp
                                 src/DriverUNV/DriverUNV*.cpp src/DriverUNV/UNV24*.cpp
                                 src/SMESHDS/*.cpp
                                 src/SMESH/*.cpp src/Controls/*.cpp
                                 src/StdMeshers/*.cpp
                                 src/MEFISTO2/aptrte.cpp src/MEFISTO2/MEFISTO2F.def)
ELSE(WIN32)
FILE(GLOB SMESH_LIB_SOURCE_FILES src/SMDS/SMDS*.cpp
                                 src/Driver/*.cpp
                                 src/DriverSTL/DriverSTL*.cpp
                                 src/DriverDAT/DriverDAT*.cpp
                                 src/DriverUNV/DriverUNV*.cpp src/DriverUNV/UNV24*.cpp
                                 src/SMESHDS/*.cpp
                                 src/SMESH/*.cpp src/Controls/*.cpp
                                 src/StdMeshers/*.cpp src/MEFISTO2/*.cpp src/MEFISTO2/trte.f)
ENDIF(WIN32)
INCLUDE_DIRECTORIES(src/SMDS src/Driver src/DriverSTL src/DriverDAT
                    src/DriverUNV src/SMESHDS src/SMESH src/StdMeshers)
ADD_LIBRARY(SMESH ${SMESH_LIB_SOURCE_FILES})
TARGET_LINK_LIBRARIES(SMESH TKernel TKMath TKBRep TKG2d TKG3d TKMeshVS
                            TKPrim TKGeomBase TKGeomAlgo TKTopAlgo TKShHealing TKAdvTools)
IF(UNIX)
  IF (${CMAKE_Fortran_COMPILER} MATCHES "f77")
    TARGET_LINK_LIBRARIES(SMESH f2c)
  ENDIF (${CMAKE_Fortran_COMPILER} MATCHES "f77")
  SET_TARGET_PROPERTIES(SMESH PROPERTIES
        SOVERSION ${${PROJECT_NAME}_ABI_SOVERSION}
        VERSION ${${PROJECT_NAME}_ABI_VERSION})
ENDIF(UNIX)
IF(WIN32)
  TARGET_LINK_LIBRARIES(SMESH MEFISTO2 MEFISTO2F)
ENDIF(WIN32)

################################################
# Define output path for generated libraries:  #
# platform/compiler-build_type-bits            #
# for instance:                                #
#     ./win32/bin/vc7.1-release-64             #
#     ./win32/bin/vc9-debug-32                 #
#     ./Unix/i386-debug-64                     #
################################################
IF(WIN32)
  IF(MSVC) # The compiler used is MSVC
    MESSAGE(STATUS "Found MSVC compiler: ${MSVC} ${MSVC_VERSION}")
    SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin/)
  ELSEIF (BORLAND) # The compiler used is BORLAND
    SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/win${BIT}/bin/${CMAKE_BUILD_TYPE})
  ELSE()
    SET(LIBRARY_OUTPUT_PATH win${BIT}/bin/${CMAKE_BUILD_TYPE})
  ENDIF()
  SET(EXECUTABLE_OUTPUT_PATH ${LIBRARY_OUTPUT_PATH})
ELSE(WIN32)
  IF(APPLE)
  SET(PLATFORM Darwin)
    ELSE(APPLE)
  SET(PLATFORM Unix)
    ENDIF(APPLE)
  SET(LIBRARY_OUTPUT_PATH ${PLATFORM}-${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_BUILD_TYPE}-${BIT})
ENDIF(WIN32)
MESSAGE(STATUS "output_path: ${LIBRARY_OUTPUT_PATH}")

####################
# Install location #
####################
IF( NOT DEFINED ${PROJECT_NAME}_INSTALL_PREFIX )
  IF( WIN32 )
    SET(${PROJECT_NAME}_INSTALL_PREFIX
      "c:/${PROJECT_NAME}-${${PROJECT_NAME}_VERSION}")
  ELSE( WIN32 )
    SET(${PROJECT_NAME}_INSTALL_PREFIX
      "/usr/local")
  ENDIF( WIN32 )
ENDIF( NOT DEFINED ${PROJECT_NAME}_INSTALL_PREFIX )

SET( ${PROJECT_NAME}_INSTALL_PREFIX ${${PROJECT_NAME}_INSTALL_PREFIX} CACHE
  PATH "Install prefix prepended to target to create install location" )
SET( CMAKE_INSTALL_PREFIX "${${PROJECT_NAME}_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
  prepended to install directories if target destination is not absolute,
  immutable" FORCE )

###########
# INSTALL #
###########
IF(UNIX)
    # Libraries are installed by default to /usr/local/lib
    INSTALL(TARGETS SMESH DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
    # Headers are installed by default in /usr/local/include/smesh
    INSTALL(DIRECTORY inc/
            DESTINATION ${CMAKE_INSTALL_PREFIX}/include/smesh
            FILES_MATCHING PATTERN "*.*")
ENDIF(UNIX)

########################
# Packaging with CPack #
########################
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SMESH library")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENCE.lgpl.txt")
SET(CPACK_SET_DESTDIR "ON")

# Define version
SET(CPACK_PACKAGE_VERSION_MAJOR ${SMESH_VERSION_MAJOR})
SET(CPACK_PACKAGE_VERSION_MINOR ${SMESH_VERSION_MINOR})
SET(CPACK_PACKAGE_VERSION_PATCH ${SMESH_VERSION_PATCH})
SET(CPACK_PACKAGE_NAME ${PROJECT_NAME} )
SET(CPACK_PACKAGE_CONTACT "pythonocc mailing list <pythonocc-users@gna.org>")
INCLUDE(InstallRequiredSystemLibraries)

INCLUDE(CPack)
