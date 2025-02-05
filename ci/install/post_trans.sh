#!/bin/sh



# Generated by: tyk-ci/wf-gen
# Generated on: Friday 04 March 2022 09:23:10 AM UTC

# Generation commands:
# ./pr.zsh -repos tyk-pump -base master -branch exp/sync-test -base master -title Sync from latest releng templates -p
# m4 -E -DxREPO=tyk-pump


if command -V systemctl >/dev/null 2>&1; then
    if [ ! -f /lib/systemd/system/tyk-pump.service ]; then
        cp /opt/tyk-pump/install/inits/systemd/system/tyk-pump.service /lib/systemd/system/tyk-pump.service
    fi
else
    if [ ! -f /etc/init.d/tyk-pump ]; then
        cp /opt/tyk-pump/install/inits/sysv/init.d/tyk-pump /etc/init.d/tyk-pump
    fi
fi
