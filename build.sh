mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=`pwd`/install \
-DTRITON_BACKEND_REPO_TAG=r22.08 \
-DTRITON_CORE_REPO_TAG=r22.08 \
-DTRITON_COMMON_REPO_TAG=r22.08 \
-DTRITON_PYTORCH_DOCKER_IMAGE="nvcr.io/nvidia/pytorch:22.08-py3" \
-DPHANTOM_TORCH=/mnt/raid0nvme1/sl/lib/libtorch_dev ..
make install -j