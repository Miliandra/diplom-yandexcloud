# Nginx Install Role
## Что делает Role
1. Устанавка для `GitLab` зависимостей.
2. Открывает в доступ по HTTP.
3. Настройка репозитория `GitLab`
4. Установка `GitLab`
5. Настройка для возможности миниторинга Prometheus и Node Exporter
6. Добавляем `token` для `runner` и устанаваливаем пароль для `root`
7. Производим запуск конфигуратора `Gitlab`

## Переменные

| Название переменной | Значение по умолчанию | Описание |
| --- | --- | --- |
| `gitlab_domain` |   | Домен GitLab |
| `gitlab_external_url` |  | Внешний URL для Gitlab  |
| `gitlab_git_data_dir` | `/var/opt/gitlab/git-data` | Папка для данных Gitlab |
| `gitlab_edition` | `gitlab-ce` | Версия распространения Gitlab |
| `gitlab_version` |   | Версия Gitlab |
| `gitlab_backup_path` | `/var/opt/gitlab/backups` | Папка для Бэкапов |
| `gitlab_repository_installation_script_url` |  | Ссылка на установочный скрипт |
| `gitlab_pass` | `Passwordforgit!` | Пароль от root Gitlab |
| `reg_runner_token` | `GR1348941zhxmNwD8zrzySqCyJtM3` | Token для Runner |
|`gitlab_dependencies` | `curl`,`tzdata`,`perl`, `gnupg2` | Зависимости для Gitlab |