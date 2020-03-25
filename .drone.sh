#/bin/sh

set -e

# run test for every scenario
for scenario in molecule/*
do
        if [ "$scenario" = "molecule/resources" ]
        then
                continue
        else
                molecule test -s "${scenario##*/}"
        fi
done
