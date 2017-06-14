#!/bin/bash

#wait for systemd to be ready
while ! systemctl status >/dev/null ; do sleep 1 ; done
#wait for tmpfiles cleaner to be started so that it does not clean /tmp while tests are running
while ! systemctl status systemd-tmpfiles-clean.timer >/dev/null ; do sleep 1 ; done

exit 0
