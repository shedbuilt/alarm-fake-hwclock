#!/bin/bash
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install &&
install -dm755 "${SHED_FAKE_ROOT}/lib/systemd/system" &&
install -m644 "${SHED_PKG_SOURCE_DIR}/systemd/fake-hwclock.service" "${SHED_FAKE_ROOT}/lib/systemd/system/"
