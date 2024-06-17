FROM nvidia/cuda:12.5.0-runtime-ubi9
RUN curl -s -L https://nvidia.github.io/libnvidia-container/stable/rpm/nvidia-container-toolkit.repo | tee /etc/yum.repos.d/nvidia-container-toolkit.repo
RUN yum install -y yum-utils
RUN yum-config-manager --enable nvidia-container-toolkit-experimental
RUN yum install -y nvidia-container-toolkit
RUN curl -fsSL https://ollama.com/install.sh | sh
CMD ["ollama", "serve"]
