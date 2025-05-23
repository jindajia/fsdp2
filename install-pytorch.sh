# After conda installed, need to set path
# export PATH=/root/miniconda3/bin/:$PATH
# source /root/miniconda3/bin/activate

# # Install Pytorch from source
# conda create -y -n pytorch-src
# conda activate pytorch-src

# export _GLIBCXX_USE_CXX11_ABI=1
# export CMAKE_PREFIX_PATH="${CONDA_PREFIX:-'$(dirname $(which conda))/../'}:${CMAKE_PREFIX_PATH}"
# python setup.py develop

pip3 install torch==2.7.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

# v2.5.1
conda install pytorch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 pytorch-cuda=12.4 -c pytorch -c nvidia

# v2.6.0
pip install torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cu124

# v2.7.0
export http_proxy=http://sys-proxy-rd-relay.byted.org:3128
export https_proxy=http://sys-proxy-rd-relay.byted.org:3128
export no_proxy=code.byted.org
pip install torch==2.7.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118


# import torch
# print(torch.__file__)

# /home/tiger/.local/lib/python3.11/site-packages/torch/
torchrun --nproc_per_node 2 /home/tiger/scripts/fsdp2-train.py
torchrun --nproc_per_node 2 /home/tiger/scripts/fsdp2-train.py --explicit-prefetch