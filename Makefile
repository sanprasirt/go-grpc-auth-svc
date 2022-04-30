proto:
	protoc pkg/pb/*.proto --go_out=plugins=grpc:.
server:
	go run cmd/main.go

docker:
	docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=mypassword -e POSTGRES_DB=auth_svc -d postgres