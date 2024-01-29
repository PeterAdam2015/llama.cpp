mkdir -p build && cd build
cmake .. -DLLAMA_CUBLAS=ON
cmake --build . --config Release
cd ..
export LLAMA_CUBLAS=on
make libllama.so
export LLAMA_CPP_LIB="$PWD/libllama.so"
