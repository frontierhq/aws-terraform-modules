.. image:: https://github.com/frontierhq/aws-terraform-modules/actions/workflows/ci.yml/badge.svg
    :target: https://github.com/frontierhq/aws-terraform-modules/actions/workflows/ci.yml

=========================
aws-terraform-modules
=========================

.. contents:: Table of Contents
    :local:

-----
About
-----

This repository contains a collection of Terraform modules based on the
`AWS Provider <https://registry.terraform.io/providers/hashicorp/aws/latest/docs>`_.
They're intended to be used as part of a
`module composition <https://developer.hashicorp.com/terraform/language/modules/develop/composition>`_
approach to Terraform use. The modules implement a standardised approach to naming and tagging,
are written to be `secure by default <https://www.ncsc.gov.uk/information/secure-default>`.

-----
Usage
-----

This repository maintains independent `semver <https://semver.org/>`_ versioning for each module,
and produces module-specific `releases <https://github.com/frontierhq/aws-terraform-modules/releases>`_.
This approach enables modules to be consumed independently of one another, and without the need for
Terraform to clone the entire repository.

To use a module, add a `module block <https://www.terraform.io/docs/language/modules/syntax.html>`_
and specify the source as a `module archive <https://developer.hashicorp.com/terraform/language/modules/sources#fetching-archives-over-http>`_
URL. The URL should be in the format:

``https://github.com/frontierhq/aws-terraform-modules/releases/download/[module-name]/[version]/module.tar.gz//src``

For example:

.. code:: hcl

    module "vpc" {
      source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc/1.0.0/module.tar.gz//src"

      environment = "dev"
      identifier  = "k8s"
      region      = "eu-west-2"
      zone        = "shd"

      cidr_block = var.cidr_block

      tags = {
        WorkloadType = "CustomerBankingLZ/container-platform"
      }
    }

See `Modules Overview <https://developer.hashicorp.com/terraform/language/modules>`_ for more information on Terraform Modules.

-------
Modules
-------

.. list-table::
   :widths: 25 25 50
   :header-rows: 1

   * - Module name
     - Latest version
     - Source URL
   * - `app-autoscaling-policy <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/app-autoscaling-policy>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/app-autoscaling-policy%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/app-autoscaling-policy/1.0.0/module.tar.gz//src``
   * - `app-autoscaling-target <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/app-autoscaling-target>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/app-autoscaling-target%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/app-autoscaling-target/1.0.0/module.tar.gz//src``
   * - `db-instance <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/db-instance>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/db-instance%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/db-instance/1.0.0/module.tar.gz//src``
   * - `db-parameter-group <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/db-parameter-group>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/db-parameter-group%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/db-parameter-group/1.0.0/module.tar.gz//src``
   * - `ec2-instance <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/ec2-instance>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/ec2-instance%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/ec2-instance/1.0.0/module.tar.gz//src``
   * - `ecr-repository <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/ecr-repository>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/ecr-repository%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/ecr-repository/1.0.0/module.tar.gz//src``
   * - `ecs-service <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/ecs-service>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/ecs-service%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/ecs-service/1.0.0/module.tar.gz//src``
   * - `ecs-task-definition <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/ecs-task-definition>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/ecs-task-definition%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/ecs-task-definition/1.0.0/module.tar.gz//src``
   * - `lb <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/lb>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/lb%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/lb/1.0.0/module.tar.gz//src``
   * - `lb-listener <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/lb-listener>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/lb-listener%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/lb-listener/1.0.0/module.tar.gz//src``
   * - `lb-listener-rule <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/lb-listener-rule>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/lb-listener-rule%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/lb-listener-rule/1.0.0/module.tar.gz//src``
   * - `lb-target-group <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/lb-target-group>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/lb-target-group%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/lb-target-group/1.0.0/module.tar.gz//src``
   * - `nat-gateway <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/nat-gateway>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/nat-gateway%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/nat-gateway/1.0.0/module.tar.gz//src``
   * - `security-group <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/security-group>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/security-group%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/security-group/1.0.0/module.tar.gz//src``
   * - `service-discovery-service <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/service-discovery-service>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/service-discovery-service%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/service-discovery-service/1.0.0/module.tar.gz//src``
   * - `subnet <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/subnet>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/subnet%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/subnet/1.0.0/module.tar.gz//src``
   * - `vpc <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/vpc>`__
     - `2.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/vpc%2F2.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc/2.0.0/module.tar.gz//src``
   * - `vpc-endpoint <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/vpc-endpoint>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/vpc-endpoint%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc-endpoint/1.0.0/module.tar.gz//src``

------------
Contributing
------------

We welcome contributions to this repository. Please see `CONTRIBUTING.md <https://github.com/frontierhq/aws-terraform-modules/tree/main/CONTRIBUTING.md>`_ for more information.
