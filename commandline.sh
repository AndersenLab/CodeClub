#!/bin/bash
# That's a shebang up there.

# This is a comment.

# echo...
echo "Hello World"

# Lets create a file. But, be careful -
# because you can overwrite things very easy!
echo "Hello World" > hello.txt

# Overwrites file
echo "Goodbye, Cruel World" > hello.txt

# Using '>>' you can append to a file.
echo "Hello again!" >> hello.txt

# Let's write a file.
echo "dog" > animals.txt
echo "giraffe" >> animals.txt
echo "armadillo" >> animals.txt

# grep takes two arguments, a pattern to match and the file.
grep "dog" animals.txt

# 'cat' is used to concatenate files.
echo "rhino" > more_animals.txt
cat animals.txt more_animals.txt

# cat can also be used to output the contents of a file.
cat animals.txt

# Sort will sort the contents of a file.
sort animals.txt

# Variables can be set!
BIO="Awesome"
echo $BIO
echo "DAN is $Awesome"

# Lets get rid of animals
rm animals.txt more_animals.txt

# For loops
for x in 1 2 3 4 5;
do
    echo $x
done

# This is fast. But printing to the screen is slower than 
# writing to a file!
for x in {1..10000}; # Ten Thousand
do
    echo $x
done

# Lets write it to a file.
for x in {1..10000};
do
    echo $x >> ten_thousand.txt
done

# Did the computer remember to put in 5641
grep '5641' ten_thousand.txt

# Lets watch a movie!
towel.blinkenlights.nl 23

#############
# Homebrew! #
#############

# Ok, lets learn about pipes, but first; we need to install homebrew.
# Homebrew is THE package manager for mac.
open "http://brew.sh"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install wget
brew install wget

# Download homologous genes
wget 'ftp://ftp.ncbi.nih.gov/pub/HomoloGene/current/homologene.data'

# Head can be used to see what a file looks like.
head homologene.data

# You can specify the number of lines:
head -n 500 homologene.data

# You can count the number of lines:
wc homologene.data

# How many unique genes?
cat homologene.data | cut -f 4 | sort | uniq | wc -l

# Let's see if we can find a gene in the dataset
grep "irg" homologene.data

# Now lets get the list of accession numbers using a pipe!
grep "irg" homologene.data | cut -f 6

# Lets sort it too!
grep "irg" homologene.data | cut -f 6 | sort

# egrep lets us use regular expressions.
egrep "CMTM[47]" homologene.data

# How many?
egrep "CMTM[47]" homologene.data | wc -l

# Set it as a variable using command substitution:
CMTM_GENES=`egrep "CMTM[47]" homologene.data | wc -l`
echo $CMTM_GENES

# Split out individual accession numbers.
cut -f 6 homologene.data | cut -c 1,2
cut -f 6 homologene.data | cut -c 1,2 | sort
cut -f 6 homologene.data | cut -c 1,2 | sort | uniq | parallel "grep {} homologene.data > {}.txt"

# Loop over files using command substitution:
for f in `ls *.txt`;
do
    echo $f
done

# Lets generate a mapping between humans and c. elegans!
egrep "\t9606\t" homologene.data | sort | cut -f 1,3,4 > human.txt
egrep "\t6239\t" homologene.data | sort | cut -f 1,3,4 > celegans.txt
join -1 1 -2 1 -t $'\t' human.txt celegans.txt | cut -f 2,3,4,5 | sort | echo -e "Human_Entrez\tHuman_Symbol\tElegans_Entrez\tElegans_Symbol\n$(cat -)" > orthologs.txt
rm human.txt celegans.txt homologene.data

# Useful one-liners!
open "https://github.com/stephenturner/oneliners"

# Find and replace
sed 's/1/ BIOLOGYISGREAT /g' homologene.data

# Print individual lines using AWK
awk '{print $2,$4,$5}' homologene.data | head -n 50

# Print unique DNA Codes
echo {A,C,T,G}{A,C,T,G}{A,C,T,G}



# There is an alternative repository dedicated to science utilities!
brew install samtools

# Try this!
brew install tree
tree

# brew install youtube-dl
brew install youtube-dl
youtube-dl http://www.youtube.com/watch?v=-m3N_BnVdOI

# awk for biology; not stable yet!
brew install --HEAD bioawk

# GNU Parallel
brew install parallel
parallel echo ::: A B C D E F G


# pip is the comparable manager for python; can be
# install using brew install python
pip install pyp

open "https://code.google.com/p/pyp/"

# Other tools
open "http://jeroenjanssens.com/2013/09/19/seven-command-line-tools-for-data-science.html"
open "http://csvkit.readthedocs.org/en/0.7.3/"

csvstat homologene.data
csvsort -c 1,2 homologene.data 

pip install csvkit
