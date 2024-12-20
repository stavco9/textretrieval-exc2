#!/bin/bash

python -m pyserini.index.lucene --collection TrecCollection --input ./data/WET_PART_A --index ./index/WET_PART_A \
--keepStopwords --stemmer none --storePositions --storeDocvectors -storeRaw \
--optimize
