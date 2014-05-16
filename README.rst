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
