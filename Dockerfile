FROM jwiii/pdal:dependencies

COPY *.deb /tmp

RUN dpkg -i /tmp/*.deb \
 && rm /tmp/* \
 && pdal --version

ENV PATH=$PATH:/matlab/bin
