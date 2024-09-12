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
   * - `vpc <https://github.com/frontierhq/aws-terraform-modules/tree/main/modules/vpc>`__
     - `1.0.0 <https://github.com/frontierhq/aws-terraform-modules/releases/tag/vpc%2F1.0.0>`__
     - ``https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc/1.0.0/module.tar.gz//src``

------------
Contributing
------------

We welcome contributions to this repository. Please see `CONTRIBUTING.md <https://github.com/frontierhq/aws-terraform-modules/tree/main/CONTRIBUTING.md>`_ for more information.
