data ibm_resource_group "resource_group" {
  name = "Default"
}

resource ibm_container_cluster "tfcluster1406" {
    name            = "tfcluster1406"
    datacenter      = "dal10"
    machine_type    = "u2c.2x4"
    hardware        = "shared"
    public_vlan_id  = "2496063"
    private_vlan_id = "2496065"

    kube_version = "1.17"

    default_pool_size = 2

    public_service_endpoint  = "true"
    private_service_endpoint = "true"

    resource_group_id = data.ibm_resource_group.resource_group.id
}

