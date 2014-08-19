hosts-formula
=============
Manages ``/etc/hosts`` file.

It ensures the minion id of the host is set as the hostname and is added to /etc/hosts as the IPv4 address from eth0.

It also reads values from the ``hosts`` pillar key:

.. code-block:: yaml

    hosts:
      127.0.0.2:
        - front.local
        - back.local
        - memcache.local
        - postgresql.local
        - mongodb.local
        - elasticsearch.local
