#!/bin/bash

SRCDIR=https://github.com/westernacher-solutions/sample-ci-cd/blob/master
asciidoctor -D docs -o index.html -a sourcedir=$SRCDIR README.adoc
