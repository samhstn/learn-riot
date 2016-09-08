cd modular*; find . -type f > ../mod.temp; cd ..;
cd basic-cou*; find . -type f > ../basic.temp; cd ..;
diff mod.temp basic.temp > diff.txt
rm *.temp
