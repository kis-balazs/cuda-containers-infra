FROM nvcr.io/nvidia/l4t-cuda:11.4.19-devel

WORKDIR /cudadev

#
# Install any utils needed for execution
#
RUN apt-get update && apt-get install -y --no-install-recommends sudo vim cmake build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

#
# Install nvidia-cuda-dev for CUDA developer packages
# Use nvidia-cuda if need CUDA runtime only
#
RUN apt-get update && apt-get install -y --no-install-recommends \
    nvidia-cuda-dev

#
# Install nvidia-cudnn8-dev for CuDNN developer packages
# Use nvidia-cudnn8 if need CuDNN runtime only
#
RUN apt-get install -y --no-install-recommends \
    nvidia-cudnn8-dev

#
# Install nvidia-tensorrt-dev for TensorRT developer packages
# Use nvidia-tensorrt if need TensorRT runtime only
#
RUN apt-get install -y --no-install-recommends \
    nvidia-tensorrt-dev

#
# Install nvidia-opencv-dev for OpenCV developer packages
# Use nvidia-opencv if need OpenCV runtime only
#
RUN apt-get install -y --no-install-recommends \
    nvidia-opencv-dev
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

#Update libraries
RUN ldconfig 

#
# Setup environment variables
#
ENV CUDA_HOME="/usr/local/cuda"

ENV PATH="/usr/local/cuda/bin:${PATH}"
ENV PATH="/usr/src/tensorrt/bin:${PATH}"

ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"


ENTRYPOINT ["tail", "-f", "/dev/null"]
