FROM tkelman/docker-julia-opensuse:part2

RUN make -j4
WORKDIR /home/julia-x86_64
