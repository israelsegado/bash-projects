#! /bin/bash

#declaration of the variables with the path
FILE_ORIGIN="$(pwd)"
ORGANIZED_FOLDER="$FILE_ORIGIN/../files_organized"

mkdir -p -v "$ORGANIZED_FOLDER" #creation of the organized folder

for file in "FILE_ORIGIN/*"
do
    case "$file" in
        *.txt)
            mkdir -p -v "$ORGANIZED_FOLDER/txt_files"
            mv "$file" "$ORGANIZED_FOLDER/txt_files/"
            ;;
        *.pdf)
            mkdir -p -v "$ORGANIZED_FOLDER/pdf_files"
            mv "$file" "$ORGANIZED_FOLDER/pdf_files"
            ;;
        *.jpg)
            mkdir -p -v "$ORGANIZED_FOLDER/images_folder"
            mv "$file" "$ORGANIZED_FOLDER/images_folder"
            ;;
        *.docx)
            mkdir -p -v "$ORGANIZED_FOLDER/doc_folder"
            mv "$file" "$ORGANIZED_FOLDER/doc_folder"
            ;;
        *)
            mkdir -p -v "$ORGANIZED_FOLDER/other_files"
            #mv "$file" "$ORGANIZED_FOLDER/other_files"
    esac
done