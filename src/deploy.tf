provider "azurerm" {
    version = "~> 1.15"
    # subscription_id
    # client_id
    # client_secret
    # tenant_id
}

resource "azurerm_resource_group" "workshop" {
    name = "testgrp"
    location = "${var.azure_region}"
}

resource "azurerm_virtual_network" "network" {
    name = ""
    address_space = ""
    location = "westus"
    resource_group_name = azurerm_resource_group.workshop.name
}

resource "azurerm_subnet" "workshopsubnet" {
    
}

resource "azurerm_storage_account" "mystorageaccount" {
    name = ""
    resource_group_name = azurerm_resource_group.workshop.name
    location = "${var.azure_region}"
    account_replication_type = "LRS"
    account_tier = "standard"
}

resource "azurerm_network_security_group" "" {
    name = ""
    location = "${var.azure_region}"
    resource_group_name = azurerm_resource_group.workshop.name

    security_rule {
        name = ""
        priority = "1001"
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
    }
}

resource "azurerm_network_interface" "" {
    name = ""
    location = "${var.azure_region}"
    resource_group_name = azurerm_resource_group.workshop.name
    network_security_group_id = 
}

resource "azurerm_virtual_machine" "" {
    name = "myVM"
    location = "${var.azure_region}"
    resource_group_name = azurerm_resource_group.workshop.name
    vm_size = "Standard_DS1_v2"
    network_interface_ids = []

    storage_os_disk {
        name = ""
        caching = "ReadWrite"
        create_option = "FromImage"
        managed_disk_type = "Premium_LRS"    
    }
    storage_image_reference {
        publisher = "Canonical"
        offer = "UbuntuServer"
        sku = "16.04.0-LTS"
        version = "latest"
    }

    os_profile {
        computer_name = ""
        admin_username = ""
    }

    os_profile_linux_config {
        disable_password_authentication = true
    }

    boot_diagnostics {
        enabled = "true"
    }
}