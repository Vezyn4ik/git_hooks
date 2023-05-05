#!/bin/bash

# Increment the minor version
old_version=$(grep -oP '(?<=version ).*' build.gradle)
minor_version=$(echo $old_version | grep -oP '(?<=\.).*')
new_minor_version=$(expr $minor_version + 1)
new_version=$(echo $old_version | sed "s/\.[0-9]*$/.${new_minor_version}/")

# Commit the version change and create a Git tag
git add build.gradle version.properties
#git commit -m "Bump version to ${new_version}"
git tag -a ${new_version} -m "Version ${new_version}"