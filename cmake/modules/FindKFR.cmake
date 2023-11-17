# Copyright (C) 1995-2019, Rene Brun and Fons Rademakers.
# All rights reserved.
#
# For the licensing terms see $ROOTSYS/LICENSE.
# For the list of contributors see $ROOTSYS/README/CREDITS.

# Find the KFR includes and library.
#
# This module defines
# KFR_INCLUDE_DIR, where to locate kfr.h file
# KFR_LIBRARIES, the libraries to link against to use kfr
# KFR_FOUND.  If false, you cannot build anything that requires kfr.
# KFR_LIBRARY, where to find the libkfr library.

set(KFR_FOUND 0)
if(KFR_LIBRARY AND KFR_INCLUDE_DIR)
  set(KFR_FIND_QUIETLY TRUE)
endif()

find_path(KFR_INCLUDE_DIR kfr
  $ENV{KFR_DIR}/include
  $ENV{KFR} $ENV{KFR}/include
  /usr/local/include
  /usr/include
  /opt/kfr/include
  DOC "Specify the directory containing kfr"
)

find_library(KFR_LIBRARY_IO NAMES kfr_io PATHS
  $ENV{KFR_DIR}/lib
  $ENV{KFR} $ENV{KFR}/lib
  /usr/local/lib
  /usr/lib
  /opt/kfr/lib
  DOC "Specify the kfr_io library here."
)

find_library(KFR_LIBRARY_DFT NAMES kfr_dft PATHS
  $ENV{KFR_DIR}/lib
  $ENV{KFR} $ENV{KFR}/lib
  /usr/local/lib
  /usr/lib
  /opt/kfr/lib
  DOC "Specify the kfr_dft library here."
)

find_library(KFR_LIBRARY_CAPI NAMES kfr_capi PATHS
  $ENV{KFR_DIR}/lib
  $ENV{KFR} $ENV{KFR}/lib
  /usr/local/lib
  /usr/lib
  /opt/kfr/lib
  DOC "Specify the kfr_capi library here."
)

if(KFR_INCLUDE_DIR AND KFR_LIBRARY_IO)
  set(KFR_FOUND 1 )
  if(NOT KFR_FIND_QUIETLY)
     message(STATUS "Found KFR includes at ${KFR_INCLUDE_DIR}")
     message(STATUS "Found KFR library at ${KFR_LIBRARY_IO}")
  endif()
endif()

set(KFR_LIBRARIES ${KFR_LIBRARY_IO} ${KFR_LIBRARY_DFT} ${KFR_LIBRARY_CAPI})

mark_as_advanced(KFR_FOUND KFR_LIBRARY KFR_INCLUDE_DIR)
