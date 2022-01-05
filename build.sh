#!/bin/bash

docker build . -t ghcr.io/bihealth/irods-docker:4.2.11
singularity build irods-icommands-4.2.11.sif docker://ghcr.io/bihealth/irods-docker:4.2.11
