# Almond if primarly used for Scala.
# FROM almondsh/almond

FROM jupyter/scipy-notebook

COPY --chown=jovyan:users 00-startup.py /home/jovyan/.ipython/profile_default/startup/00-startup.py
# RUN conda install -c conda-forge arviz pymc3 # This is for Probabilistic programming
RUN pip3 install jupyterthemes jupyter_contrib_nbextensions autopep8 yapf 
RUN pip3 install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
RUN conda install pytorch-lightning -c conda-forge
RUN jt -t onedork -fs 95 -tfs 11 -nfs 115 -cellw 88% -T
RUN jupyter contrib nbextension install --user
