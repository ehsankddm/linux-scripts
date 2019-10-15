sudo yum install wget bzip2 tmux
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
sudo mkdir /nlp/anaconda3
sudo chown khoddammohammadie:khoddammohammadie -R /nlp/anaconda3
bash Anaconda* -u

conda create --no-default-packages -n name python=3.7
nvcc --version #cuda version

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

source .bashrc	

#read https://github.com/pytorch/pytorch#from-source
sudo yum install gflags-devel glog-devel lmdb-devel
#didn't work because of not having cuda 9.2
conda activate name

conda install pytorch-nightly-cpu -c pytorch #CPU
conda install pytorch-nightly cudatoolkit=9.0 -c pytorch #GPU

conda install -c conda-forge ipywidgets ipykernel jupyterlab ipython pandas matplotlib 
pip install pytorch-pretrained-bert
python -m ipykernel install --user --name laqua-classification --display-name "Anaconda Pytorch nightly Py37 (laqua-classification)"
jupyter notebook --generate-config
jupyter notebook password


ssh -i ~/.ssh/private_key user@remote_ip -L 7777:localhost:remote_port -fN






