variable build_number {}

provider "vsphere" {
  vsphere_server = "test_server"
  user = "test_user"
  password = "test_password"
  allow_unverified_ssl = "false"
}

module "vsphere-dc" {
  source = "./terraform/vsphere"
  long_name = "mantl-ci-${var.build_number}"
  short_name = "mantl-ci-${var.build_number}"
  datacenter = "test_datacenter"
  cluster = "cluster_name"
  pool = "cluster_name/Resources/pool_name"
  template = "tmpl"
  network_label = "network"
  domain = "ci.mantl.io"
  dns_server1 = "8.8.8.8"
  dns_server2 = "8.8.4.4"
  datastore = "test_datastore"
  control_count = 3
  worker_count = 4
  edge_count = 2
  kubeworker_count = 0
  control_volume_size = 20 # size in gigabytes
  worker_volume_size = 20
  edge_volume_size = 20
  ssh_user = "test_user"
  ssh_key = "~/.ssh/id_rsa.pub"
  consul_dc = "test_datacenter"
}
