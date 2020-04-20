# Create a child image of scipy-notebook with extensions used in this project
# docker build -t derekwlms/jupyter-notebook .
# docker push derekwlms/jupyter-notebook

FROM jupyter/scipy-notebook:latest

# Leave out the files for now, to allow quick changes 
RUN mkdir src
WORKDIR src/
COPY ./notebooks .

COPY requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt && \
    jupyter nbextension enable --py --sys-prefix gmaps

 CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
