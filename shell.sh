##Finding  File Type in particular location

#! bin/bash/
echo "Enter the filename:"
read filename

# Check if the file exists
if [ -e "$filename" ]; then
    # Display file information
    echo "File Information for: $filename"
    echo "Type: $(file -b $filename)"
    echo "Permissions: $(ls -l $filename | cut -d ' ' -f 1)"
    echo "Size: $(du -b $filename | cut -f 1) bytes"
    echo "Last Modified: $(stat -c '%y' $filename)"
else
    echo "Error: File '$filename' not found."
fi