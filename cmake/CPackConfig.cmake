set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "SSE")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Package containing SSE CPack exercise library and executable.")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Functionality for solving a poisson problem with FEM, flatset modification,
  filesystem inspection and YAML file parsing")
set(CPACK_PACKAGE_CONTACT "feegeer@users.github.com")
set(CPACK_PACKAGE_MAINTAINERS "feegeer ${CPACK_PACKAGE_CONTACT}"
  CACHE STRING "This project acts as a demonstration of how CPack can be used to package CMake projects.")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/feegeer/cpack-exercise-wt2526")
set(CPACK_STRIP_FILES TRUE)

# DEB packaging
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "feegeer <${CPACK_PACKAGE_CONTACT}>")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/cpackexample.1.gz
      DESTINATION share/man/man1)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/changelog.gz debian/copyright
        DESTINATION share/doc/cpackexample)

set(CPACK_GENERATOR "TGZ;DEB")
include(CPack)
