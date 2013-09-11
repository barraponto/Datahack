#!/usr/bin/env bash
for file in ../tabelas/*.csv; do ./csv2yaml.rb -i $file; done
