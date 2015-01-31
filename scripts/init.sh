#!/bin/bash

mkdir ./repository
find . -maxdepth 1 | grep -v dest_dir | grep -v "build\.sh" | xargs -i mv {} ./repository

mkdir builds
mkdir shared
mkdir shared/files
touch .platform-project

