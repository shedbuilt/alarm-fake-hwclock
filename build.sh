#!/bin/bash
make -j $SHED_NUMJOBS
make DESTDIR=${SHED_FAKEROOT} install
install -dm755 ${SHED_FAKEROOT}/lib/systemd/system
install -m644 ${SHED_SRCDIR}/systemd/fake-hwclock.service ${SHED_FAKEROOT}/lib/systemd/system/
