#!/bin/bash

# get the minor version
minorVersion=$(cat gradle.properties | grep minorVersion | cut -d= -f2)

minorVersion=$(( $minorVersion+1))
sed -i "s/^minorVersion=.*/minorVersion=$minorVersion/" gradle.properties
echo "Minor version: $minorVersion"

# Commit the version change and create a Git tag
git add gradle.properties
git commit -m "Bump version to ${minorVersion}"
git tag -a "${minorVersion}" -m "Version ${minorVersion}"
git remote add origin https://github.com/Vezyn4ik/git_hooks.git
git push -u origin task4
read -p "Press enter"