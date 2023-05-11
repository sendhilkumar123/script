#!/bin/bash

for i in {1..10}
do
    touch "file$i.txt"
done

echo "10 files created successfully."
This script will create 10 files with the name file1.txt, file2.txt, file3.txt, and so on until file10.txt. You can modify the number of files by changing the {1..10} range to your desired range.

To use this script, simply save the code above to a .sh file (e.g. create-files.sh) and make it executable by running the following command:

bash
Copy code
chmod +x create-files.sh
Then, run the script by executing:

bash
Copy code
./create-files.sh
This will create the files in the current directory.






Regenerate resp
