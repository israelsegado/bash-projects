#! /bin/bash

#declaration of the variables with the path
FILE_ORIGIN="$(pwd)"
echo $FILE_ORIGIN
ORGANIZED_FOLDER="$FILE_ORIGIN/../files_organized"

mkdir -p -v "$ORGANIZED_FOLDER" #creation of the organized folder

#loop over the directory
for file in "$FILE_ORIGIN"/*
do
    case "$(basename "$file")" in #check the extension of the file
        *.txt)
            mkdir -p -v "$ORGANIZED_FOLDER/txt_folder"
            mv "$file" "$ORGANIZED_FOLDER/txt_folder/"
            ;;
        *.pdf)
            mkdir -p -v "$ORGANIZED_FOLDER/pdf_folder"
            mv "$file" "$ORGANIZED_FOLDER/pdf_folder"
            ;;
        *.jpg|*.jpeg|*.png)
            mkdir -p -v "$ORGANIZED_FOLDER/image_folder"
            mv "$file" "$ORGANIZED_FOLDER/images_folder"
            ;;
        *.docx|*.doc)
            mkdir -p -v "$ORGANIZED_FOLDER/doc_folder"
            mv "$file" "$ORGANIZED_FOLDER/doc_folder"
            ;;
        *)
            mkdir -p -v "$ORGANIZED_FOLDER/other_folder"
            mv "$file" "$ORGANIZED_FOLDER/other_folder"
    esac
done