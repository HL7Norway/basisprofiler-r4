#!/bin/sh
VALIDATOR_PATH="/Users/espen/tools" # Bytt/kommenter ut om nødvendig (ikke slett)
VERSION="4.0.0"
IG="hl7.fhir.r4.core#4.0.0"
FILE_1="https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/NamingSystem/no-basis-fodselsnummer.namingsystem.xml"
FILE_2="../NamingSystem/no-basis-fodselsnummer.namingsystem.xml"
# Plan: Validate full repo with Torinox/.net
printf "FHIR, walk with me!\n"
# Torinox støtter ennå ikke bulk-validering
# TODO Fikse login på Simplifier.net
# [ERROR] Resolution of profile at 'http://hl7.org/fhir/StructureDefinition/NamingSystem' failed: One or more errors occurred. (The folder does not contain a package lock file.) (at NamingSystem)
# NPM-greier?
# Torinox funker ikke på volum eller nett :-(
# fhir4 validate $FILE_1
java -jar $VALIDATOR_PATH/validator_cli.jar $FILE_1 -ig $IG
