#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

"$DIR/npm-clean.sh"

for PACKAGE in \
  ng2-alfresco-core \
  ng2-alfresco-datatable \
  ng2-alfresco-documentlist \
  ng2-alfresco-login \
  ng2-alfresco-search \
  ng2-alfresco-upload \
  ng2-alfresco-viewer
do
  DESTDIR="$DIR/../ng2-components/${PACKAGE}"
  echo "====== PUBLISHING: ${DESTDIR} ====="
  cd ${DESTDIR}
  npm install
  npm publish
  cd ${DIR}
done
