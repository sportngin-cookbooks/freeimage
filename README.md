# freeimage cookbook

[![Build Status](https://travis-ci.org/sportngin-cookbooks/freeimage.svg?branch=master)](https://travis-ci.org/sportngin-cookbooks/freeimage)

Compiles and installs the [freeimage](http://freeimage.sourceforge.net/) library from source.

# Requirements

Amazon Linux.

# Usage

Set the source url attribute if you want a custom version. The file must be a Zip archive of the `FreeImage` source folder.
The official list can be found on [SourceForge](http://sourceforge.net/projects/freeimage/files/Source%20Distribution/)

Add to your run list.

# Attributes

- `node[:freeimage][:source][:url]` - URL to source distrobution ZIP archive file.

# Recipes

- `default` - Fetches source archive, compiles and installs freeimage library if not already installed.

# Author

Author:: Sport Ngin (<infrastructure@sportngin.com>)
