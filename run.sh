#!/bin/bash

rnn_prof rnn assistments ~/Documents/StudentLearningProcess/skill_builder_data_corrected_big.txt --no-remove-skill-nans --drop-duplicates --num-folds 5 --item-id-col skill_id --num-iters 50 --dropout-prob 0.25 --first-learning-rate 5.0  --compress-dim 50 --hidden-dim 100 &> output_rnn_09.txt &

rnn_prof irt assistments ~/Documents/StudentLearningProcess/skill_builder_data_corrected_big.txt --onepo --drop-duplicates --no-remove-skill-nans --num-folds 5 --item-id-col problem_id --concept-id-col single &> output_irt_09_prob.txt &

rnn_prof irt assistments ~/Documents/StudentLearningProcess/skill_builder_data_corrected_big.txt --onepo --drop-duplicates --no-remove-skill-nans --num-folds 5 --item-id-col skill_id --concept-id-col single &> output_irt_09_skill.txt &

rnn_prof rnn assistments ~/Documents/StudentLearningProcess/2015_ASSISTment_big.txt  --no-remove-skill-nans --drop-duplicates --num-folds 5 --item-id-col skill_id --num-iters 50 --dropout-prob 0.25 --first-learning-rate 5.0  --compress-dim 50 --hidden-dim 100 &> output_rnn_15.txt &

rnn_prof irt assistments ~/Documents/StudentLearningProcess/2015_ASSISTment_big.txt --onepo --drop-duplicates --no-remove-skill-nans --num-folds 5 --item-id-col skill_id --concept-id-col single &> output_irt_15.txt &
 
