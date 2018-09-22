#!/bin/bash
component="$1"
prepend="frontend" # This might be different later
fullpath="./$prepend/components/$component"
name="${component##*:}"
echo "Creating Component: $name..."
if [[ -d $fullpath ]]; then
    echo "$fullpath already exists" 1>&2
    echo "Exiting..."
    exit 0
fi
echo "New Filepath: $fullpath"
mkdir -p "$fullpath"
cd "$fullpath"
echo "import \"./$name.css\";" > $name.js
echo ".$name {
  background: yellow;
}
" > $name.css
echo "<p class=\"$name\">This is a test</p>" > $name.html.erb
echo "Completed..."
