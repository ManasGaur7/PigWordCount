A = load '/home/manas/Datasets/input.txt' using TextLoader() as (words:chararray);
DUMP A;
B = FOREACH A GENERATE FLATTEN (TOKENIZE(*)) ;
C = GROUP B BY $0 ;
D = FOREACH C GENERATE group, COUNT(B) ;
DUMP D;
