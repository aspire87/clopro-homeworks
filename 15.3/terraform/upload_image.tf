
resource "yandex_storage_object" "picture" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = "ayuulyanov"
  key    = "welcome-to-hell.jpg"
  source = "~/welcome-to-hell.jpg"
  acl = "public-read"
  depends_on = [yandex_storage_bucket.ayuulyanov]
}
