Distributive
============

.. versionadded:: 1.1

`Distributive <https://www.consul.io/>`_ is used in Mantl to run detailed,
granular health checks for various services.

This role is run several times as a dependency for other roles.

Variables
---------

You can use these variables to customize your Distributive installation.

.. data:: checklist_versions

   The version of the checklist package to install for the specified role.
   Defaults are different for each role, but are of the form e.g.
   ``consul: 0.2.4-1``.

.. data:: consul_config_versions

   The version of the Consul health check configuration package to install for
   the specified role.  Defaults are different for each role, but are of the
   form e.g. ``consul: 0.1.0-1``.
