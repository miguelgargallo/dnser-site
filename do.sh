#!/bin/bash

# Create the INFO.md file if it doesn't exist
INFO="Info.md"
if [ ! -e "$INFO" ]; then
    touch "$INFO"
fi

# Extract the title from the README.md file
if [ -e "README.md" ]; then
    TITLE=$(head -n 1 README.md | sed 's/# //')
else
    TITLE="About ICANN or HNS tld API"
fi

# Save the output of the "tre" command to the INFO.md file
echo -e "\n# $TITLE" > "$INFO"
echo -e "\n " >> "$INFO"
echo -e "\n## Tree File Structure" >> "$INFO"
tre >> "$INFO"

# Check if 0.index.md exists in the content folder
if [ -e "./content/0.index.md" ]; then
    echo -e "\n### This is 0.index.md." >> "$INFO"
    echo -e "\n" >> "$INFO"
    echo "Path: ./content/0.index.md" >> "$INFO"
    echo -e "\n\`\`\`md" >> "$INFO"
    cat "./content/0.index.md" >> "$INFO"
    echo -e "\n\`\`\`" >> "$INFO"
else
    # Append the file titles and content to the INFO.md file
    find . -type f \( -iname '*.swift' -o -iname '*.rs' -o -iname '*.py' -o -iname '*.pylar' -o -iname '*.astro' -o -iname '*.js' -o -iname '*.ts' -o -iname '*.tsx' -o -iname '*.css' -o -iname '*.html' -o -iname '*.vue' -o -iname '*.json' -o -iname '*.md' \) ! -path '*/.next/*' ! -path '*/.nuxt/*' ! -path '*/.output/*' ! -path '*/node_modules/*' ! -path '*/build/*' ! -path '*/public/*' ! -path '*/target/*' ! -name "$INFO" ! -name "do.sh" -exec bash -c '{
    filepath="{}"
    filename="$(basename "$filepath")"
    extension="${filename##*.}"

    echo -e "\n### This is $filename." >> "$INFO"
    echo -e "\n" >> "$INFO"
    echo "Path: $filepath" >> "$INFO"
    echo -e "\n\`\`\`$extension" >> "$INFO"
    cat "$filepath" | grep -v "^\/\/" >> "$INFO"
    echo -e "\n\`\`\`" >> "$INFO"
    }' \;
fi
