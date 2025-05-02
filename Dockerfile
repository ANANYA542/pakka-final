FROM alpine:latest
WORKDIR /app
COPY pocketbase .
RUN chmod +x ./pocketbase
COPY pb_public ./pb_public
COPY pb_data ./pb_data
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
