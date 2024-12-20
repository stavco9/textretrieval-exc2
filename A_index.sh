#!/bin/bash

python -m pyserini.index.lucene --collection TrecCollection --input ./data/WET_PART_A --index ./index/WET_PART_A \
--keepStopwords --stemmer none --storePositions --storeDocvectors -storeRaw \
--optimize

python -m pyserini.index.lucene --collection TrecCollection --input ./data/WET_PART_A --index ./index/WET_PART_A_KROVETZ \
--keepStopwords --stemmer krovetz --storePositions --storeDocvectors -storeRaw \
--optimize
