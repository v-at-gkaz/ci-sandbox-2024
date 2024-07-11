#!/bin/bash
destination='dev_compose'
[ -d $GITHUB_WORKSPACE/tmp_frontend_builder ] || mkdir $GITHUB_WORKSPACE/tmp_frontend_builder
cd $GITHUB_WORKSPACE/tmp_frontend_builder
git clone --single-branch --branch main https://github.com/v-at-gkaz/js-sandbox-2024.git
cd js-sandbox-2024/project_25_spa_angular_material
npm ci
npm run build
cp -r dist/spa/* ~/${destination}/frontend/client/
cd $GITHUB_WORKSPACE
rm -rf tmp_frontend_builder