export NCCL_DEBUG=WARN
torchrun --nproc_per_node 2 train.py
torchrun --nproc_per_node 2 train.py --explicit-prefetch

torchrun --nproc_per_node 2 /home/tiger/scripts/fsdp2/simple-test/shard-tensor.py
