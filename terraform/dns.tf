# Создаем публичную DNS зону 
resource "yandex_dns_zone" "mili-zone" {
  name   = "mili-public-zone"
  zone   = "${var.domain}."
  public = true
}

# Прописываем основную A-запись
resource "yandex_dns_recordset" "m1" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "${var.domain}."
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

# Прописываем A-записи для доменов 3 уровня
resource "yandex_dns_recordset" "m2" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "www"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "m3" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "gitlab"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "m4" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "grafana"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "m5" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "prometheus"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}

resource "yandex_dns_recordset" "m6" {
  zone_id    = yandex_dns_zone.mili-zone.id
  name       = "alertmanager"
  type       = "A"
  ttl        = 600
  data       = [yandex_compute_instance.nginx.network_interface.0.nat_ip_address]
  depends_on = [yandex_compute_instance.nginx]
}