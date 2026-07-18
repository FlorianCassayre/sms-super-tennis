FROM inutano/wget AS downloader

RUN wget -O wla-dx.tar https://github.com/vhelin/wla-dx/tarball/v10.7 --progress=dot \
    && mkdir wla-dx \
    && tar -C wla-dx --strip-components=1 -xf wla-dx.tar


FROM debian:trixie-slim AS builder

RUN apt-get update \
    && apt-get install --assume-yes build-essential cmake

COPY --from=downloader /wla-dx /usr/src/wla-dx

RUN cd /usr/src/wla-dx \
    && mkdir build && cd build && cmake .. \
    && cmake --build . --target wla-z80 -- -j$(nproc --all) \
    && cmake --build . --target wlalink -- -j$(nproc --all)


FROM debian:trixie-slim

COPY --from=builder /usr/src/wla-dx/build/binaries/* /usr/local/bin/

RUN apt-get update \
    && apt-get install -y z80dasm adduser \
    && groupadd --gid 1000 dockeruser \
    && adduser --system --shell /bin/bash --uid 1000 --ingroup dockeruser dockeruser \
    && rm -rf /var/lib/apt/lists/*
