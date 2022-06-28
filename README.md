# **Тестовое задание для компании SIFOX**

## Требования
- docker
- docker-compose

## Описание работы

В контейнер `server` устанавливается OpenSSH сервер и клиент. Так же устанавливается supervisord и nginx.
Отдельно в контейнер копируются основные конфиги и файлы ключей.
Пароль пользователя `root` для доступа по ssh: `secret`
SSH-ключ для доступа в контейнер можно увидеть в выводе логов контейнера.

Публичный ssh ключ:

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDq7QW+aia9UMg6Fw68m7D69hUtmbMQaxTriruRUpvfUkzPMSdafKP3kfwTa6obvFmE+/OBIeye/cYq4a4T2bqtq1JGKcOyQYQoPaAkhclvKQmyJI/fUPEj2AuePibxQlzlZAaADRuXJAf3pCFtL8ikU5TVGSBJpOLfU0zaBSVv55CCCiAaF8Cz20r8VN13wq/ad1QyIYyc5bUVDp0g9a9UcDOVKm6wdiQE/FFkxXvZqHfq4Ht7huiBfo5tNN1UHOpSYyrFqTsec79Rc+8zvxushD0orhZ+S03bC0bFGCE7czd0DU8Tf0fut4jHvwrUlmhq26Z6Sp3frR1VZT1W0XpC1gIrInR4yjzBnVhFo/nYJRNThwBk3EJLqQa1ZI7sFGVb4jF63NQK1bUnlfbx99Tif3EngIjx7L/MFal7Yp2RaLDoOU9wisNXT3TZd606xfR6ShnYDvjjRbvN4JHULZ6+cPc1dno5dl8dW50iFu3kiV/xu5RUNEFZZCEct3OAFzE= root@dev-test
```
Подключение осуществляется на порт 2223.

Директория репозитория прокидывается по адресу /opt/repo. Туда же настроен и основной локейшн nginx.

## Основные действия
### *Запуск
./run.sh - Запускает компоуз и билдит контейнеры

### Остановка
./stop.sh

### Тесты
./test.sh

Добавляет новый репозиторий с сервера в клиент и устанавливает тестовый пакет hello-world.
Установленный пакет можно проверить командой `tz` 


