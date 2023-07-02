#!/bin/bash

type_of_compression="$1"
folder_to_compress="$2"
destination_path="$3"

current_date=$(date +'%d_%m_%y')

compressed_file_name="${folder_to_compres}s_${current_date}"

#compression type
if [[ $type_of_compression == "zip" ]];then
comressed_file_name="${compressed_file_name}.zip"
elif [[ $type_of_compression == "tar" ]];then
comressed_file_name="${compressed_file_name}.tar"
else
echo "please choose 'zip' or 'tar'."
exit 1
fi

#compress the folder
if [[ $type_of_compression == "zip" ]];then
    zip -r "$compressed_file_name" "$folder_to_compress"
elif [[ $type_of_compression == "tar" ]];then
    tar -cvf "$compressed_file_name" "$folder_to_compress"
fi

#move
mv "$compressed_file_name" "$destination_path"

#size
compressed_file_size=$(du -sh "$destination_path/$compressed_file_name" | awk -F " " '{print $1}')

original_folder_size=$(du -sh "$folder_to_compress" | awk -F " " '{print $1}')

#display
echo "Compressed file size: $compressed_file_size"
echo "Original folder size: $original_folder_size"
