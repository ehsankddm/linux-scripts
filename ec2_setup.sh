sudo yum install git -y
sudo yum groupinstall "Development Tools" -y
sudo yum install libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver -y
sudo yum install gcc-c++ -y
sudo yum install openssl-devel -y
sudo yum install htop tmux -y
mkdir git
mkdir Projects
mkdir Downloads && cd Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
sh ./Anaconda3-2021.05-Linux-x86_64.sh
source ~/.bashrc
conda create -n ml-pairs python=3.8.10
conda activate ml-pairs
conda install scikit-learn pandas jupyterlab matplotlib plotly seaborn tqdm ipython ipykernel scikit-learn-intelex pyarrow fastparquet boto3
pip install fire
wget https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2.tar.gz
tar  -xvzf cmake-3.21.2.tar.gz
cd cmake-3.21.2/
./bootstrap
make
sudo make install
cd ~/git
git clone --recursive https://github.com/dmlc/xgboost.git
cd xgboost
make
cd python-package
python setup.py install --user
