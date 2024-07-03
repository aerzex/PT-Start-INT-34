# PT-Start-INT-34
INT-34 Test Task

## Установка и запуск

Чтобы установить и запустить проект, выполните следующие команды:

```bash
git clone https://github.com/aerzex/PT-Start-INT-34
```
## Ansible

Внутри директории находится bash-скрипт `setup_debian.sh` необходимый для настройки Debian 10. Создание пользователя ansible, добавление его в группу sudo и запуск ssh

```bash
cd PT-Start-INT-34/Ansible
```
 Запуск
```bash
ansible-playbook -i inventory/hosts --extra-vars "@secrets.yml" playbook.yml
```
## CI/CD
```bas
cd PT-Start-INT-34/CI.CD
```
```bash
docker build -t http-server .
```
 Запуск 
```bash
docker run -d -p 5000:5000 http-server
```
