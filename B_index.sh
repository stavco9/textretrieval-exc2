#!/bin/bash

python -m pyserini.index.lucene --collection TrecCollection --input ./database --index ./index/WET_PART_B_1 \
--stopwords ./data/WET_PART_B/StopWords.txt --stemmer krovetz --storePositions --storeDocvectors -storeRaw \
--optimize

python -m pyserini.index.lucene --collection TrecCollection --input ./database --index ./index/WET_PART_B_2 \
--stopwords ./data/WET_PART_B/StopWords.txt --stemmer none --storePositions --storeDocvectors -storeRaw \
--optimize
