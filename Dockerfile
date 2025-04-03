# Imagen base de Jupyter
FROM jupyter/base-notebook:latest

# Instalar paquetes adicionales (opcional)
RUN pip install --no-cache-dir pandas numpy matplotlib

# Puerto expuesto
EXPOSE 8888

# Comando para iniciar Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]