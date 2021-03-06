# !/bin/bash
# ============================================================================================
# Copyright (c) 2010-2012 OpenStack Foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ============================================================================================
# Werite by: Jeon.sungwook 
# Create Date : 2015-06-02
# Update Date : 2015-06-02
#
# OS : CentOS-7-x86_64 1503-01
# OS : Ubuntu 14.04.02
#
# Text : OPENSTACK INSTALLATION GUIDE FOR RED HAT ENTERPRISE LINUX 7, CENTOS 7, AND FEDORA 21  - KILO
# Text : OPENSTACK INSTALLATION GUIDE FOR UBUNTU 14.04  - KILO
#
# This script is to be installed and run on OpenStack Kilo
# 
# Set environment and declare global variables
#
# ============================================================================================
# Chapter : 8. Add the Block Storage service
# Node : Block1

# Load Env global variables
source  ./kilo-perform-vars.common.sh
# Load Common functions
source ./kilo-function.00_common.sh
source ./kilo-function.08_blockstorage.sh

# ======================================================================================================
# 8. Add the Block Storage service
# 8.2 Install and configure a storage node
# (1) To configure prerequisites
 
func_cinder_configure_prerequisites_block1_node
 
##################################################################################################################
# (2) Install and configure Block Storage volume components
# (2-1) Install the packages:
func_cinder_install_package_block1_node

#=================================================================================================
# (2-2) Edit the /etc/cinder/cinder.conf file and complete the following actions:
func_cinder_configure_block1_node

# (3) To finalize installation
# (3-1) Start the Block Storage volume service including its dependencies and configure them to start when the system boots:
func_cinder_finalize_installation_block1_node
