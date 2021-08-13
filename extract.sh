
#!/bin/sh


DOC=../BuildInstructions.tex


for n in `mintangle -L $DOC | egrep -v "[.]sh$|[.]exp$"`; do
    mintangle -r $n $DOC
done


for n in `mintangle -L $DOC | egrep "[.]sh$|[.]exp"$`; do
    mintangle -r $n $DOC && touch $n && chmod +x $n
done

