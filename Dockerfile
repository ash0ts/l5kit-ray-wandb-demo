FROM nvcr.io/nvidia/pytorch:23.01-py3

WORKDIR /data
RUN git clone https://github.com/ash0ts/l5kit-ray-wandb-demo.git

RUN pip install -r requirements.txt
#Ray air does not properly live in requirements
RUN pip install "ray[air]"
#Torch automatically installs CUDNN despite us having our own setup causing issues
RUN pip uninstall -y nvidia_cublas_cu11
RUN apt install libgl1

CMD ["jupyter-lab", "--allow-root", "--NotebookApp.token=", "--ip=0.0.0.0", "--NotebookApp.base_url=/notebook/", "--port=8888"]