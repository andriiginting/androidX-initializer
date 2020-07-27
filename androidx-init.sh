#!/bin/sh
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

mkdir androidx-master-dev
cd androidx-master-dev

repo init -u https://android.googlesource.com/platform/manifest -b androidx-master-dev --partial-clone

echo "Grab your coffee while downloading the repository\n Have a good day! :)"

repo sync -j8 -c
