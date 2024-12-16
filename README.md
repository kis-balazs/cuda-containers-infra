# cuda-containers-infra
Repository keeping generated infrastructure topics for x86/ARM64 CUDA containers, used for research and development.

Branches structure:
- [jetson-dev](https://github.com/kis-balazs/cuda-containers-infra/tree/jetson-dev): development container for Nvidia Jetsons, installs useful packages, such as tensorrt-dev, opencv-dev, cudnn-dev. Used for development, testing, etc.
- [jetson-main](https://github.com/kis-balazs/cuda-containers-infra/tree/jetson-main): prod-like container for Nvidia Jetsons, only core runtime executables are available, such as trtexec. Used for deploying inference.
