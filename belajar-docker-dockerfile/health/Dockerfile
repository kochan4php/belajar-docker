FROM golang:1.20-alpine3.18

# HEALTHCHECK adalah instruksi yang digunakan untuk memberi tahu Docker bagaimana untuk mengecek apakah Container masih berjalan dengan normal atau tidak.
# Jika terdapat HEALTHCHECK, secara otomatis Container akan memiliki status health, dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal bernilai unhealthy.

# Format :
# HEALTHCHECK NONE -> artinya health check disabled (defaultnya)
# HEALTHCHECK [OPTIONS] CMD command
# * OPTIONS: 
# --interval=DURATION (default:30s)
# --timeout=DURATION (default:30s)
# --start-period=DURATION (default:0s)
# --retries=N (default:3)

WORKDIR /app

RUN apk --no-cache add curl

COPY main.go /app

EXPOSE 8080

HEALTHCHECK --interval=5s --timeout=30s --start-period=5s CMD curl -f http://localhost:8080/health

CMD go run main.go