resource "openstack_compute_keypair_v2" "keypair" {
  name       = "${var.name}-keypair"
  public_key = "${replace("${file("${var.portal_public_key_path}")}", "\n" , "")}"
}
