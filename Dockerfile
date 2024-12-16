FROM nvcr.io/nvidia/l4t-cuda:11.4.19-devel

# ###############################
#   ONNXRUNTIME WITH CUDNN CUDA
# ###############################
ENV DEBIAN_FRONTEND=noninteractive
ENV CUDA_HOME="/usr/local/cuda"
ENV PATH="/usr/local/cuda/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"

WORKDIR /ws

# COPY . .

RUN apt-get update && apt-get install -y \
    vim \
    cmake \
    build-essential

ENTRYPOINT ["tail", "-f", "/dev/null"]
