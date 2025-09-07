# ベースイメージとしてOpenJDK 17のslimバージョンを使用
FROM openjdk:17-jdk-slim

# 作成したアプリケーションのJarファイルをイメージ内にコピー
COPY target/handson-0.0.1-SNAPSHOT.jar /app.jar

# アプリケーションを実行
ENTRYPOINT ["java", "-jar", "/app.jar"]