hosts-formula
=============
Manages ``/etc/hosts`` file.

It ensures the fqdn of the host is resolved to the IPv4 address from eth0 and
also reads values from the ``hosts`` pillar key:

.. code-block:: yaml

    hosts:
      127.0.0.2:
        - front.local
        - back.local
        - memcache.local
        - postgresql.local
        - mongodb.local
        - elasticsearch.local

You can also do dynamic hosts (note this will return the first IP salt finds that matches the compound match):

.. code-block:: yaml

    dynamic_hosts:
      'G@roles:monitoring.server':
        - graphite.local
        - monitoring.local
