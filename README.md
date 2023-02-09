# CORSとCSRF対策について勉強しましょう

## 概要
CORSとCSRF対策を理解し、<br>
`Railsのバックエンド Vueのフロントエンドx2` からなるdocker-composeを使って、<br>
実際に手を動かす。

## 目標
`localhost:8080` で起動するVueからは、`GET` `POST` ともに成功するようにする。<br>
`localhost:8081` で起動するVueからは、`GET` `POST` ともに失敗するようにする。

## 起動方法
```
$ git clone git@github.com:matcher-inc/cors_csrf_practice.git
$ cd cors_csrf_practice
$ sudo docker-compose up
```
