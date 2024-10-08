#!/bin/bash

sbatch -p rush                                      \
  --nodelist=rush-compute-03                        \
  --gres=gpu:a6000:1                                \
  --ntasks=1                                        \
  --cpus-per-task=12                                \
  --mem=128G                                        \
  --time 30-00:00:00                                \
  --wrap "python openai_sparse_autoencoder/train.py"