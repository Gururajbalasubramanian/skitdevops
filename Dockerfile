        FROM golang:1.17.6-alpine3.14 AS builder
        WORKDIR /app
        COPY . .
        RUN go build -o main main.go

        FROM alpine:3.14
        WORKDIR /app
        COPY --from=builder /app/main . 

        EXPOSE 8080
        CMD ["/app/main"] 
        
