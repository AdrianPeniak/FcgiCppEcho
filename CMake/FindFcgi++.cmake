# CMake module to search for FastCGI headers
#
# If it's found it sets FCGIPP_FOUND to TRUE
# and following variables are set:
#    FCGIPP_LIBRARY

FIND_LIBRARY(FCGIPP_LIBRARY NAMES fcgi++ libfcgi++ PATHS 
  /usr/local/lib 
  /usr/lib 
  "$ENV{LIB_DIR}/lib"
  "$ENV{LIB}"
  )

IF (FCGIPP_FOUND)
   IF (NOT FCGIPP_FIND_QUIETLY)
      MESSAGE(STATUS "Found FCGI++: ${FCGIPP_LIBRARY}")
   ENDIF (NOT FCGIPP_FIND_QUIETLY)
ELSE (FCGIPP_FOUND)
   IF (FCGIPP_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find FCGI++")
   ENDIF (FCGIPP_FIND_REQUIRED)
ENDIF (FCGIPP_FOUND)
