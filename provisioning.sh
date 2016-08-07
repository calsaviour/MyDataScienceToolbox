#!/bin/bash

# Configure environment
export CONDA_DIR=/opt/conda
export PATH=$CONDA_DIR/bin:$PATH


# Install conda
mkdir -p $CONDA_DIR
echo export PATH=$CONDA_DIR/bin:'$PATH' > /etc/profile.d/conda.sh
##wget https://repo.continuum.io/miniconda/Miniconda3-3.9.1-Linux-x86_64.sh
#cd /vagrant/
#cp Miniconda3-3.9.1-Linux-x86_64.sh ~/home/vagrant/
##cd ~/home/vagrant/
chmod +x Miniconda3-3.9.1-Linux-x86_64.sh
/bin/bash Miniconda3-3.9.1-Linux-x86_64.sh -f -b -p $CONDA_DIR
rm Miniconda3-3.9.1-Linux-x86_64.sh
$CONDA_DIR/bin/conda install --yes conda==3.14.1

# Install Jupyter notebook
conda install --yes 'notebook=4.0*' terminado
conda clean -yt

# Install Python packages
conda install --yes 'ipython=4.0*' 'ipywidgets=4.0*' 'pandas=0.16*' 'matplotlib=1.4*' 'scipy=0.15*' 'seaborn=0.6*' 'scikit-learn=0.16*' pyzmq
conda clean -yt