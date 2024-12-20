#!/bin/bash

python -m pyserini.eval.trec_eval -q ./data/WET_PART_B/qrels_AP ./results/WET_PART_B_1.trec > ./results/WET_PART_B_1_eval.txt
python -m pyserini.eval.trec_eval -q ./data/WET_PART_B/qrels_AP ./results/WET_PART_B_2.trec > ./results/WET_PART_B_2_eval.txt