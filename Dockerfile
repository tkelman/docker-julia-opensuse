FROM tkelman/docker-julia-opensuse:part1

RUN make -j4 -C deps install-llvm install-fftw
WORKDIR /home/julia-x86_64
