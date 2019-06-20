sudo yum install wget
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
sudo mkdir /nlp/anaconda3
sudo chown khoddammohammadie:khoddammohammadie -R /nlp/anaconda3
bash Anaconda* -u
nvcc --version #cuda version
source .bashrc	

#read https://github.com/pytorch/pytorch#from-source
sudo yum install gflags-devel glog-devel lmdb-devel
#didn't work because of not having cuda 9.2

conda install pytorch-nightly cudatoolkit=9.0 -c pytorch

conda install -c conda-forge ipywidgets ipykernel jupyterlab ipython





