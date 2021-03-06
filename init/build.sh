#!/bin/bash
ROO_HOME=/home/enorrmann/alter_dev/spring-roo-1.3.2.RELEASE/bin
BACKUP_FOLDER=/home/enorrmann/git/ix/init
PROJECT_HOME=/home/enorrmann/git/ix

$ROO_HOME/roo.sh script $BACKUP_FOLDER/backup.roo
cp $BACKUP_FOLDER/messages_es.properties  $PROJECT_HOME/src/main/resources/ar/com/ix/shelters/web/i18n
cp $BACKUP_FOLDER/roo_logo.png  $PROJECT_HOME/src/main/webapp/resources/images
cp $BACKUP_FOLDER/persistence.xml $PROJECT_HOME/src/main/resources/META-INF
cp $BACKUP_FOLDER/pages/* $PROJECT_HOME/src/main/webapp/pages
cp $BACKUP_FOLDER/templates/* $PROJECT_HOME/src/main/webapp/templates
cp $BACKUP_FOLDER/css/* $PROJECT_HOME/src/main/webapp/resources/css
cp $BACKUP_FOLDER/java/web/* $PROJECT_HOME/src/main/java/ar/com/ix/shelters/web
cp $BACKUP_FOLDER/java/model/* $PROJECT_HOME/src/main/java/ar/com/ix/shelters/model