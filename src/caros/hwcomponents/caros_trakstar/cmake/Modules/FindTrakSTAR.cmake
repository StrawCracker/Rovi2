# Try to find 3D Guidance TrakSTAR libraries and API headers
# Once done this will define
#  TrakSTAR_FOUND - System has TrakSTAR
#  TrakSTAR_INCLUDE_DIRS - The TrakSTAR include directories
#  TrakSTAR_LIBRARIES - The libraries needed to use TrakSTAR
#  TrakSTAR_DEFINITIONS - Definitions required for using TrakSTAR

find_path(TrakSTAR_INCLUDE_DIR ATC3DG.h
          PATHS /opt/3DGuidance.Rev.E.64/3DGuidanceAPI)

find_library(TrakSTAR_LIBRARY ATC3DGlib64
             HINTS ${TrakSTAR_INCLUDE_DIR})

set(TrakSTAR_INCLUDE_DIRS ${TrakSTAR_INCLUDE_DIR})
set(TrakSTAR_LIBRARIES ${TrakSTAR_LIBRARY})

if(APPLE)
  set(TrakSTAR_DEFINITIONS -DMAC)
elseif(UNIX)
  set(TrakSTAR_DEFINITIONS -DLINUX)
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(TrakSTAR DEFAULT_MSG TrakSTAR_INCLUDE_DIR TrakSTAR_LIBRARY)

mark_as_advanced(TrakSTAR_INCLUDE_DIR TrakSTAR_LIBRARY)
