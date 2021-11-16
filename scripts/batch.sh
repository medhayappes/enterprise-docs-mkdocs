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

# to modify all the relative paths of the images from '../images' to 'images'
# find . -name '*.md' | xargs sed -i 's/\.\.\/images/images/g'
# to exclude the directories from changing the relative paths
# find . -name '*.md' -type f -not -path "*docs/APIAnalytics*" -not -path "*docs/APIGroups*" -not -path "*docs/APIMonitoring*" -not -path "*docs/CliTool*" -not -path "*docs/CreateNewAPI*" -not -path "*docs/DashboardMetrics*" -not -path "*docs/ErrorSettings*" -not -path "*docs/JSOReferences*" -not -path "*docs/JSOReferencesMyApiSubscriptions*" -not -path "*docs/RemoteSources*" -not -path "*docs/ShareAPI*" -not -path "*docs/Versions*"