FROM openjdk:17-alpine
WORKDIR /app
COPY . .
RUN chmod +x start.sh build-paper.sh
RUN ./build-paper.sh
CMD ["./start.sh"]
