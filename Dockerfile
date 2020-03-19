FROM i386/debian:buster-slim

RUN apt-get update -qq -y \
    && apt-get install -qq -y curl ca-certificates bison libopts25 libselinux1-dev autogen m4 autoconf help2man libopts25-dev flex libfont-freetype-perl automake autotools-dev libfreetype6-dev texinfo autopoint libfuse-dev libdevmapper-dev make --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && curl https://alpha.gnu.org/gnu/grub/grub-2.04~rc1.tar.gz --output /opt/grub.tar.gz \
    && tar -xzf /opt/grub.tar.gz --strip-components=1 -C /opt/grub

WORKDIR /opt/grub
