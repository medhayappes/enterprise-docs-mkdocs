#/bin/sh

SEARCH_FOLDER="/var/www/html/enterprise-docs/public/views"
DESTINATION_FOLDER="/var/www/html/enterprise-docs-mkdocs/testdocs"
for f in $(find $SEARCH_FOLDER -name '*.html')
do
    TEMP_FOLDER=$DESTINATION_FOLDER 
    echo "$f"
    echo "$(dirname $f)" 
    LAST_FOLDER=$(echo "$(dirname $f)" | sed 's/.*\///')
    CURRENT_FILE=$(echo $f | sed 's/.*\///' | sed 's/\.html//g')
    echo $LAST_FOLDER
    if [ $LAST_FOLDER != "views" ]
    then
        CURRENT_FOLDER=$(pwd)
        TEMP_FOLDER=$DESTINATION_FOLDER/$LAST_FOLDER
        if [ ! -d "$TEMP_FOLDER" ]
        then
            mkdir $TEMP_FOLDER
        fi    
    fi    
    pandoc $f --lua-filter=remove-attr.lua -f html -t markdown_github-raw_html -s -o $TEMP_FOLDER/$CURRENT_FILE.md
done