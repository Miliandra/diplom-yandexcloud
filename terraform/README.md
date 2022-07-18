# Файлы Terraform
 1. `app.tf` - Установка Wordpress.
 2. `Cluster_db.tf` - Установка кластера mysql.
 3. `dns.tf` - Создание DNS-зон в YC.
 4. `gitlab_runner` - Установка GitLab и Runner.
 5. `inventory.tf` - Создание `inventory.yml` для использования в `ansible`.
 6. `mon.tf` - Установка стека мониторинга.
 7. `network.tf` - Создание VPC с подсетями в разных зонах доступности.
 8. `nginx.tf` - Установка Nginx.
 9. `provider.tf` - Файл провайдера и его настройки
 10. `variables,tf` - Файл с описанием переменных и значениями по дефолту.

 ## Обязательные переменные для заполнения
 `provider.tf`:
  - bucket - имя создаваемого бакета.
  - access_key - Идентификатор статического ключа доступа.
  - secret_key - Значение секретного ключа доступа.

 `variables,tf`:
  - cloud_id - Идентификатор облака YC, в котором Terraform создаст ресурсы.
  - folder_id - Идентификатор каталога YC, в котором по умолчанию будут создаваться ресурсы.
  - domain - Доменное имя вашей зоны.
  - int_ip - Зарезервированный серый ip адрес для `nginx`.
  - ext_ip - Зарезервированный публичный ip адрес для `nginx`.
  - token - OAuth-токен для доступа к Yandex Cloud.
  - image_id - Образ операционной системы в YC.

# Ссылки
 **Ссылки используемые во время написания диплома и для более глубокого понимания конфигурации**:\
  [Создание статического маршрута в YC](https://cloud.yandex.ru/docs/vpc/operations/static-route-create)\
  [Создание бакета s3](https://cloud.yandex.ru/docs/storage/operations/buckets/create)\
  [Создание DNS-зоны в YC](https://cloud.yandex.ru/docs/dns/quickstart#create-public-zone)
