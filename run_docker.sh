docker build . -t l5kit-demo --no-cache
docker run -d l5kit-demo --ipc=host --gpus=all -v /home/temp/jupyter-data:/data --net=host 