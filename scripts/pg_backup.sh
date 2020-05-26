#!/bin/zsh

pg_dump -Fc -v \
    -h $LOCAL_HOST \
    -p $LOCAL_PORT \
    -U $LOCAL_USER \
    -d $LOCAL_DB \
    -t dcp_elevpts_v2020 \
    -t doitt_3dbldgs_v2016 \
    -t dcp_mappluto_v2020_3 \
    -t doitt_hydrography_v2016 \
    -t doitt_sidewalk_v2016 \
    -t dpr_streettrees_v2016 \
    -t doitt_roadbed_v2016 \
    -f $1
