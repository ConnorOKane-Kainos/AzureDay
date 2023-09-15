name     = "citilads"
location = "uksouth"



kubernetes_version         = "1.27.3"
agent_count                = 3
vm_size                    = "standard_b2ms"
ssh_public_key             = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCzIjSum1ceJyaMZU3C5Mpw+AiB2F9dGFX7+cVwSYECkPwHtD2NMPfqIboPgLOw7foKyjqO/nEEm0v13oUf6xEFG/yqE8FZ4yxKnFOxXFtnoZ03jSu+w95ASeCxE71o5OrDuYoawyA+rKTWhF+2u6LgoKKAuHZWn/4ym5nNDOEOgBKsid+TGOavxgpEJYgfCkT6SAqn0sG2Z2xtNFhCTqje249qGYXbBVQN9TOWwduSWhdLrYieHr/y3VXZihsMwqhjlkEfYPMdieb2a4h8kW1KeZUjrGxA4an4v4rN7/3K/zBJy4UcGk9IP/SwSBE4hxju0Xt3dY3iBtfMdST8QFJ+rAgrXOQeqfu/IU0LgEnATcxbVL/w2cR8ZWLrT7gP1xh9CfoDMQRQRhnXfyNA5QcvhpszY7AhoHiGcldOtBKn/fJOqPHUqKA3My389O3BLFWCkOHPOm8lZ+pXGkMhyVDgMEcv+4M1ukRiFkO+i3rAyNV2l/JFlghnGsWOtludBWw4pt1NXRJe2qlFZZaM6tPxKzLTI/9NxMM23/OyV/2OUOqftm6VvXy0WmBZ/5q7fTJaN1rbTdw377cBbiC27FpgncPOrWIicmPb5CGugXVxWRl0EWupJvHkV6/1l13wzNBmrzvF8AvMSF5h2sp6WdS4Ppn/pTcn6cnFMjxjrUQzzw== connorokane@MKXNMQVMHV"
aks_admins_group_object_id = "b0811e3a-a972-4c8c-9af7-0f45f92e05d9"


addons = {
  oms_agent                   = true
  ingress_application_gateway = true

}