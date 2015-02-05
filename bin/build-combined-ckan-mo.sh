#!/bin/bash

set -e

HERE=`dirname $0`
mkdir -p "$HERE/../build/i18n/fr/LC_MESSAGES/"
msgcat --use-first \
    "$HERE/../i18n/fr/LC_MESSAGES/canada.po" \
    "$HERE/../../ckan/ckan/i18n/fr/LC_MESSAGES/ckan.po" \
    "$HERE/../../ckanext-wet-boew/i18n/fr/LC_MESSAGES/wet_boew.po" \
    | msgfmt - -o "$HERE/../build/i18n/fr/LC_MESSAGES/ckan.mo"
