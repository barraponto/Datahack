#!/usr/bin/env bash
mkdir -p ../tabelas
for file in ../*.yaml; do cp $file ../tabelas; done
for file in ../tabelas/*.yaml; do ./yaml2csv.rb -i $file; done
