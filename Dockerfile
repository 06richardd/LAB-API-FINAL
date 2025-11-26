# Usar uma imagem base oficial do Python 
FROM python:3.9-slim 
 
# Definir o diret¢rio de trabalho 
WORKDIR /app 
 
# Copiar dependˆncias 
COPY requirements.txt requirements.txt 
 
# Instalar dependˆncias 
RUN pip install -r requirements.txt 
 
# Copiar os arquivos da API para o container 
COPY . . 
 
# Expor a porta 1313 
EXPOSE 1313 
 
# Comando para rodar a aplica‡Æo 
CMD ["python", "app.py"] 
