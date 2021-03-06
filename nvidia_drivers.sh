[[ -z "$HOME" || ! -d "$HOME" ]] && { echo 'fixing $HOME'; HOME=/root; } 
export HOME 

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install dkms

CUDA_REPO_PKG=cuda-repo-rhel7-9.1.85-1.x86_64.rpm
wget http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/${CUDA_REPO_PKG} -O /tmp/${CUDA_REPO_PKG}

rpm -ivh /tmp/${CUDA_REPO_PKG}
rm -f /tmp/${CUDA_REPO_PKG}

yum -y install cuda-drivers

yum -y install cuda

reboot
