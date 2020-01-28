set BOOST_INCLUDEDIR=%CONDA_PREFIX%\include

rmdir /S /Q lang\c++\build
mkdir lang\c++\build
cd lang\c++\build

cmake -G "Ninja" -E env CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=1" -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_CXX_STANDARD=11 ..
ninja install
move %LIBRARY_PREFIX%\lib\avro-cpp.dll %LIBRARY_PREFIX%\bin\avro-cpp.dll
cd ..\..\..
