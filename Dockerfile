# Use the specified Jupyter R-notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# Install Python and R using conda
RUN conda install -y --quiet \
    jupyter \
    jupyterlab=3.* \
    r-base=4.1.* \
    r-irkernel

# Install pandas and ggplot using conda
RUN conda install --yes \
    'pandas=1.3.3' \
    'r-ggplot2=3.3.5'
