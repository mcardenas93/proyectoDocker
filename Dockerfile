# Imagen base de Jupyter
FROM jupyter/base-notebook:latest
COPY ./archivos /work/archivos/
ENV JUPYTER_WORKSPACE=/work/archivos
WORKDIR /home/jovyan/work 
RUN ln -s /work/archivos /home/jovyan/work
RUN pip install --no-cache-dir pandas numpy matplotlib gtfs-realtime-bindings
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]