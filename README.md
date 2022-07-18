# Дипломный практикум в YandexCloud
  * [Этапы выполнения:](#этапы-выполнения)
      * [Регистрация доменного имени](#регистрация-доменного-имени)
      * [Создание инфраструктуры](#создание-инфраструктуры)
          * [Основные скриншоты](#основные-скриншоты)
          * [Стек мониторинга нашей системы](#стек-мониторинга-нашей-системы)
          * [Gitlab и Runner](#gitlab-и-runner)
          * [Реализация CI/CD](#реализация-cicd)

# Этапы выполнения:

## Регистрация доменного имени

1. Был зарегистрирован домен `miliandra.site` на [reg.ru](https://reg.ru)
2. Проверка на `whois` [Информация](https://www.reg.ru/whois/miliandra.site)

## Создание инфраструктуры

1. Был выбран альтернативный вариант(В нашем случае и ситуации - единственный): `S3 bucket` в  YC аккаунте.
2. Настроили `workspaces`. Воспользовались альтернативным вариантом и используем один `workspace`, назвав его *stage*.\
![img](Images/terraform_workspace.png)
4. Домен был делегирован под управление `ns1.yandexcloud.net` и `ns2.yandexcloud.net`.
5. Вся конфигурация инфраструктуры с комментариями находится в папке [terraform](terraform/).
6. Все Ansible роли находятся в папке [ansible](ansible/).
___

## Основные скриншоты
 - **Успешно выполненный terraform**
 ![img](Images/terraform_apply.png)
 - **Основная инфраструктура после создания**
 ![img](Images/infra_yc.png)
 - **VPC с подсетями в разных зонах доступности**
 ![img](Images/vpc.png)
 - **DNS Записи**
 ![img](Images/dns.png)
 - **Основной сайт, после выполнения роли `wordpress`**
 ![img](Images/wp.png)
 - **Настроенная репликация `mysql`**
 ![img](Images/mysql_rep.png)

### Стек мониторинга нашей системы

 - **Prometheus**
 ![img](Images/prometheus_1.png)
  - **Специально перезагрузили БД**
 ![img](Images/prometheus_2.png)
  - **Ноды в Prometheus**
 ![img](Images/prometheus_3.png)
 - **Alertmanager**
 ![img](Images/alertmanager.png)
 ![img](Images/alertmanager_status.png)
 - **Grafana**
 ![img](Images/grafana_dashboards.png)
 - **Dashboards Node Exporter**
 ![img](Images/grafana_node_exporter.png)

### Gitlab и Runner

 - **Gitlab и Gitlab Runner**
 ![img](Images/gitlab.png)
 ![img](Images/gitlab_runner.png)

## Реализация CI/CD

Дипломный практикум про реализацию CI/CD находится [тут](gitlab-ci-cd/)
