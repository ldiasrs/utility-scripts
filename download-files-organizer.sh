#!/bin/sh
DOWNLOAD_DIR=~/Downloads
NOW=$(date +%Y%m%d%Hh%Mm%Ss)
ARQUIVE_DIR=$DOWNLOAD_DIR/arquivado
LOG_FILE=$ARQUIVE_DIR/log.txt
mkdir -p $ARQUIVE_DIR
cd $ARQUIVE_DIR
mkdir zip-tar
mkdir docs-pdfs-ppts
mkdir logs
mkdir imgs
mkdir exes
mkdir emails
mkdir videos
mkdir sources
echo $NOW >> $LOG_FILE
#ZIP
mv -v $DOWNLOAD_DIR/*.zip  zip-tar | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.tar  zip-tar | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.rar  zip-tar | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.gz  zip-tar | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.bz2  zip-tar | tee -a $LOG_FILE
#LOGS
mv -v $DOWNLOAD_DIR/*.log  logs | tee -a $LOG_FILE
#IMGS
mv -v $DOWNLOAD_DIR/*.png  imgs | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.jpg  imgs | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.jpeg  imgs | tee -a $LOG_FILE
#VIDEOS
mv -v $DOWNLOAD_DIR/*.mp4  videos | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.vtt  videos | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.m4a  videos | tee -a $LOG_FILE
#EXE
mv -v $DOWNLOAD_DIR/*.dmg  exes | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.exe  exes | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.EXE  exes | tee -a $LOG_FILE
#EMAILS
mv -v $DOWNLOAD_DIR/*.msg  emails | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.eml  emails | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.EML  emails | tee -a $LOG_FILE
#SOURCES
mv -v $DOWNLOAD_DIR/*.jar  sources | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.jnlp  sources | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.jspa  sources | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.sql  sources | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.js  sources | tee -a $LOG_FILE
#DOCS
#mv -v $DOWNLOAD_DIR/*.doc  docs-pdfs-ppts | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.docx  docs-pdfs-ppts | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.doc  docs-pdfs-ppts | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.pdf  docs-pdfs-ppts | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.pptx  docs-pdfs-ppts | tee -a $LOG_FILE
mv -v $DOWNLOAD_DIR/*.xlsx  docs-pdfs-ppts | tee -a $LOG_FILE
#Remove empty dirs
find . -type d -empty -exec rmdir {} \;
