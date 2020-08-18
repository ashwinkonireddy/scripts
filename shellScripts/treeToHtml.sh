#!/bin/bash
#There are enough valid reasons to explicitly disable automatic directory indexes in apache or other web servers. Or, for example, you might only want to include certain file types in the index. In such cases you might still want to have a statically generated index.html file for specific folders.

#This can be easily achieved with tree - a minimalistic utility that is available on most unix-like systems (ubuntu/debian: sudo apt install tree, mac: brew install tree) and which can generate plain text, XML, JSON or HTML output.

#Generate an HTML directory index one level deep:

tree -H '.' -L 1 --noreport --charset utf-8 > index.html

#Only include specific file types that match a glob pattern, e.g. *.zip files:

tree -H '.' -L 1 --noreport --charset utf-8 -P "*.zip" > index.html
