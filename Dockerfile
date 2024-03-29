FROM nvcr.io/nvidia/pytorch:23.01-py3
#BUG: use pytorch base container without the alpha pytorch

RUN git clone https://github.com/ash0ts/l5kit-ray-wandb-demo.git
WORKDIR l5kit-ray-wandb-demo

RUN pip install -r requirements.txt
#Ray air does not properly live in requirements
RUN pip install "ray[air]"
#Torch automatically installs CUDNN despite us having our own setup causing issues
RUN pip uninstall -y nvidia_cublas_cu11
RUN apt-get update && apt-get -y install libgl1
#Numpy pin does not work in reqs. Current workaround
RUN pip install numpy==1.19.5 gpustat==1.0

# CMD ["jupyter-lab", "--allow-root", "--NotebookApp.token=", "--ip=0.0.0.0", "--NotebookApp.base_url=/notebook/", "--port=8888"]