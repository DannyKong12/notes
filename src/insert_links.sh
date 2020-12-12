#!/bin/bash

n=$(ls *.html | wc -l)
x=2
prev='<a href=\">'
next='<a style=\"float:right\"\ href=\"'
a=$(ls *.html | head -n 2 | tail -n 1)
# echo $(ls *.html | head -1)
sed -i '/<div class=\"mume markdown-preview  \">/ a\ \t\t\t<nav style=\"display: flex;\">\n\t\t\t\t<a style=\"display: flex; flex: 1;\"></a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: center;\" href="../index.html">home</a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: flex-end;\" href=\"./'$a'\">next</a>\n\t\t\t</nav>' $(ls *.html | head -n 1)

while [ $x -le $((n-1)) ]
do
        a=$(ls *.html | head -n $((x-1)) | tail -n 1)
        b=$(ls *.html | head -n $((x+1)) | tail -n 1)
        sed -i '/<div class=\"mume markdown-preview  \">/ a\ \t\t\t<nav style=\"display: flex;\">\n\t\t\t\t<a style=\"display: flex; flex: 1;\" href=\"./'$a'\">prev</a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: center;\" href="../index.html">home</a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: flex-end;\" href=\"./'$b'\">next</a>\n\t\t\t</nav>' $(ls *.html | head -n $x | tail -n 1)
        x=$((x + 1))
done

b=$(ls *.html | tail -n 2 | head -n 1)
sed -i '/<div class=\"mume markdown-preview  \">/ a\ \t\t\t<nav style=\"display: flex; flex: 1;\">\n\t\t\t\t<a style="display: flex; flex: 1;" href=\"./'$a'\">prev</a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: center;\" href="../index.html">home</a>\n\t\t\t\t<a style=\"flex: 1; display: flex; justify-content: flex-end;\" href=\"\"></a>\n\t\t\t</nav>' $(ls *.html | tail -n 1)
