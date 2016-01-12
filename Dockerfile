FROM opensuse:42.1

RUN zypper -n install git ca-certificates-mozilla make which tar \
        curl gcc5-c++ gcc5-fortran patch m4 cmake libopenssl-devel && \
    git clone https://github.com/JuliaLang/julia /home/julia-x86_64 && \
    cd /home/julia-x86_64 && \
    echo 'override CC = gcc-5' >> Make.user && \
    echo 'override CXX = g++-5' >> Make.user && \
    echo 'override FC = gfortran-5' >> Make.user && \
    make -j8
WORKDIR /home/julia-x86_64

