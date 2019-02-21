FROM gentoo/stage3-amd64
ARG GCC_VERSION
ARG JOBS

WORKDIR /
ADD distccd.sh .

RUN touch /etc/init.d/functions.sh \
 && echo "ACCEPT_KEYWORDS=\"~amd64\"" >> /etc/portage/make.conf \
 && echo "MAKEOPTS=\"-j${JOBS}\"" >> /etc/portage/make.conf

RUN emerge --sync --quiet

WORKDIR /usr/portage/packages/sys-devel
RUN wget "http://packages.gentooexperimental.org/packages/amd64-stable/sys-devel/gcc-${GCC_VERSION}.tbz2" \
 && emerge -K1 =gcc-${GCC_VERSION} \
 && emerge --jobs ${JOBS} distcc

CMD ["/distccd.sh"]
