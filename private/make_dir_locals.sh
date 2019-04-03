#!/usr/bin/env bash
here=$(pwd)
num_compilation_threads=$(expr $(nproc) / 2)
echo "((nil .
  ((cmake-ide-project-dir . \"$here/\")
   (cmake-ide-build-dir . \"$here/cmake-ide-build\")
   (cmake-ide-cmake-opts . \"-DCMAKE_BUILD_TYPE=Debug\")
   (helm-make-build-dir . \"cmake-ide-build\")
   (helm-make-arguments . \"-j$num_compilation_threads\")
   (helm-ctest-dir . \"$here/build/cmake-ide-build\")
   (gtest-target-dir . \"$here/OUT/bin/\")
  )))" >> .dir-locals.el
