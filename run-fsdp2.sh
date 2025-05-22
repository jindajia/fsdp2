export NCCL_DEBUG=WARN
torchrun --nproc_per_node 2 train.py
torchrun --nproc_per_node 2 train.py --explicit-prefetch