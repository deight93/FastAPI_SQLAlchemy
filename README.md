# FastAPI_SQLAlchemy
FastAPI, SQLAlchemy, postgresql

```
pip install fastapi
pip install uvicorn
pip install -r requirements.txt
```
```
uvicorn main:app --reload
```
**postgresql + docker image**
```
cd ..../FastAPI_SQLAlchemy
docker pull postgres:15.1
docker build -t fastapi:0.1 .
docker network create docker-net

docker run --name postgres_db --network docker-net -p 5432:5432 -e POSTGRES_PASSWORD=1234 -e POSTGRES_DB=fastapi -v ${PWD}/postgres_db_data:/var/lib/postgresql/data -d postgres:15.1
docker run -d --name fastapi --network docker-net -p 8000:8000 fastapi:0.1 
```

AWS EKS jenkins EC2 
webhook1