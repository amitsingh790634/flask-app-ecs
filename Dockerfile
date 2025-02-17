
# pull python image 
FROM python:3.7-slim

# Work Directory
WORKDIR /app


#copy src code to container
COPY . .

#Run build cmd
RUN pip install -r requirements.txt

#Expose port for network port 80
EXPOSE 80

# run cmd 
CMD ["python", "run.py"]
