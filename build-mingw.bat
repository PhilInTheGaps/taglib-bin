call download-source.bat

echo "Building TagLib ..."

cmake -S .. -G "MinGW Makefiles" -D ZLIB_SOURCE=%CD:\=/%/zlib-1.2.11 -D CMAKE_INSTALL_PREFIX=%CD:\=/%/release -D BUILD_SHARED_LIBS=ON -D CMAKE_BUILD_TYPE=Release -DCMAKE_SH="CMAKE_SH-NOTFOUND"

mingw32-make
mingw32-make install

echo "Packing artifacts ..."

cd release
7z a taglib-%COMPILER_NAME%.zip .
