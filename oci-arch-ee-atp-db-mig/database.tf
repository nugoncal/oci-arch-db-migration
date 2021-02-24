## Copyright © 2020, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl


resource "oci_database_autonomous_database" "test_autonomous_database" {
    #Required
    admin_password = var.autonomous_database_admin_password
    compartment_id = var.compartment_ocid
    cpu_core_count = var.autonomous_database_cpu_core_count
    data_storage_size_in_tbs = var.autonomous_database_data_storage_size_in_tbs
    db_name = var.autonomous_database_db_name
    data_safe_status = var.autonomous_database_data_safe_status
    db_workload = var.autonomous_database_db_workload
    display_name = var.autonomous_database_display_name
    is_auto_scaling_enabled = var.autonomous_database_is_auto_scaling_enabled
    license_model = var.autonomous_database_license_model
    nsg_ids = [oci_core_network_security_group.dbnsg.id]
    subnet_id = oci_core_subnet.subnet_2.id
    defined_tags          = {"${oci_identity_tag_namespace.ArchitectureCenterTagNamespace.name}.${oci_identity_tag.ArchitectureCenterTag.name}" = var.release }
}