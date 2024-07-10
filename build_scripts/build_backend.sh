#!/bin/bash
[ -d $GITHUB_WORKSPACE/tmp_backend_builder ] || mkdir $GITHUB_WORKSPACE/tmp_backend_builder
cd $GITHUB_WORKSPACE/tmp_backend_builder
git clone --single-branch --branch main https://github.com/v-at-gkaz/js-sandbox-2024.git
cd js-sandbox-2024/project_17_nest_app_swagger
npm ci
npm run build
cp -r dist ~/compose/backend/app/
cp package.json ~/compose/backend/app/
cp package-lock.json ~/compose/backend/app/
cd $GITHUB_WORKSPACE
rm -rf tmp_backend_builder