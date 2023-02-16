FROM nvcr.io/nvidia/pytorch:23.01-py3

RUN git clone https://github.com/ash0ts/l5kit-ray-wandb-demo.git
WORKDIR l5kit-ray-wandb-demo

RUN pip install -r requirements.txt
#Ray air does not properly live in requirements
RUN pip install "ray[air]"
RUN pip install -U numpy
#Torch automatically installs CUDNN despite us having our own setup causing issues
RUN pip uninstall -y nvidia_cublas_cu11
# BUG: need to fix this
# RUN apt install libgl1

CMD ["jupyter-lab", "--allow-root", "--NotebookApp.token=", "--ip=0.0.0.0", "--NotebookApp.base_url=/notebook/", "--port=8888"]