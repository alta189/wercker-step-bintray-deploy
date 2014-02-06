#!/bin/bash

if [ ! -n "$BINTRAY_DEPLOY_USER" ]; then
error 'Please specify user property'
  exit 1
fi

if [ ! -n "$BINTRAY_DEPLOY_PASSWORD" ]; then
error 'Please specify subdomain property'
  exit 1
fi

mv settings-default.xml ~/.m2/settings.xml

sed -i s/BINTRAY_DEPLOY_USER/$BINTRAY_DEPLOY_USER/g ~/.m2/settings.xml
sed -i s/BINTRAY_DEPLOY_PASS/$BINTRAY_DEPLOY_PASS/g ~/.m2/settings.xml

mvn deploy