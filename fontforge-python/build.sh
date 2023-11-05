mkdir build
cd build
cmake ${CMAKE_ARGS} \
  -GNinja \
  -DCMAKE_INSTALL_PREFIX=${PREFIX} \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_SYSTEM_PREFIX_PATH=${PREFIX} \
  -DENABLE_GUI=OFF \
  -DENABLE_NATIVE_SCRIPTING=OFF \
  ..
ninja fontforge fontforge_pyhook psMat_pyhook
ninja fontforge/install
ninja pyhook/install
