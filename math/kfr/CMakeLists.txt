# Copyright (C) 1995-2019, Rene Brun and Fons Rademakers.
# All rights reserved.
#
# For the licensing terms see $ROOTSYS/LICENSE.
# For the list of contributors see $ROOTSYS/README/CREDITS.

############################################################################
# CMakeLists.txt file for building ROOT math/kfr package
# @author Marco Meyer-Conde, CERN
############################################################################

# ROOT_STANDARD_LIBRARY_PACKAGE(KFR
#   HEADERS
#     TKFRComplexFFT.h
#     TKFRComplexRealFFT.h
#     TKFRRealFFT.h
#     TKFRRealComplexFFT.h
#   SOURCES
#     src/TKFRComplexFFT.cxx
#     src/TKFRComplexRealFFT.cxx
#     src/TKFRRealFFT.cxx
#     src/TKFRRealComplexFFT.cxx
#   DEPENDENCIES
#     Core
#     MathCore
#   BUILTINS
#     KFR
# )

target_include_directories(KFR PRIVATE ${KFR_INCLUDE_DIR})
target_link_libraries(KFR PRIVATE ${KFR_LIBRARIES})
