#!/bin/zsh

pg_dump -Fc -v \
    -h $PG_HOST \
    -p $PG_PORT \
    -U $PG_USER \
    -d $PG_NAME \
    -f $1
    # -t dcp_elevpts_v2020 \
    # -t dcp_mappluto_v2020_3 \
    # -t dep_hydrants_v2019 \
    # -t doitt_3dbldgs_v2016 \
    # -t doitt_hydrography_v2016 \
    # -t doitt_linknyc_v2018 \
    # -t doitt_roadbed_v2016 \
    # -t doitt_sidewalk_v2016 \
    # -t dot_bikeracks_v2018 \
    # -t dot_bikeshelters_v2018 \
    # -t dot_busshelters_v2018 \
    # -t dot_citybench_v2016 \
    # -t dpr_streettrees_v2016 \
    # -t dsny_litterbaskets_v2018 \
    # -t dsny_recyclingbins_v2020 \
