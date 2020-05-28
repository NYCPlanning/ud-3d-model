# NYC 3D Model

This repository contains scripts used by the Urban Design division to generate the [NYC 3D Model](https://www1.nyc.gov/site/planning/data-maps/open-data/dwn-nyc-3d-model-download.page). Tutorials on how to work with the model are published separately as part of the DCP Parametric Tools project and are available [here](https://nycplanning.github.io/ud-parametric-tools/nycmodel/tutorials.html).

## About

Uses the following libraries

- [geopandas](http://geopandas.org/install.html)
- [rhino3dm](https://pypi.org/project/rhino3dm/) (pip, not in spec-file)

Over time, we'll want to have these available in a centrally hosted location. 

- [DOITT 3D Building Model](https://github.com/CityOfNewYork/nyc-geo-metadata/blob/master/Metadata/Metadata_3DBuildingModel.md)
- [DOITT NYC Planimetrics](https://github.com/CityOfNewYork/nyc-planimetrics/blob/master/Capture_Rules.md)

## Using the Scripts

Provide a `.env` file defining the following variables in the repository root:

- PG_HOST
- PG_PORT
- PG_NAME
- PG_USER
- PG_PASSWORD

These variables are used in the included Jupyter notebooks as well as shell scripts provided under `scripts`. After running `$ set -o allexport; source ./.env; set +o allexport` to source the variables, you can then run either `pg_backup.sh` or `pg_restore.sh` like so:

`$ zsh ./scripts/pg_backup.sh /path/to/backup.dump`
