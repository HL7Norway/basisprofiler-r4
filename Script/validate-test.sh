#!/bin/sh
# Plan: Validate full repo with Torinox/.net
printf "FHIR, walk with me!\n"
# Torinox støtter ennå ikke bulk-validering
fhir4 validate ../StructureDefinition/no-basis-Address.structuredefinition-profile.xml
# TODO Fikse login på Simplifier.net
