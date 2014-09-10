hosts-formula
=============
Manages ``/etc/hosts`` file.

It sets the hosts file to include the minion id and ip of all minions. So you will end up with a hosts file like this::
    127.0.0.1 localhost localhost.localdomain
    
    10.0.0.1 minion1.domain
    10.0.0.2 minion2.domain

It also allows you to specify aliases in the pillar, for example:
.. code-block:: yaml

    host_aliases:
      minion1.domain:
        - mongodb.local
        - elasticsearch.local

Will modify the original example to this::
    127.0.0.1 localhost localhost.localdomain
    
    10.0.0.1 minion1.domain mongodb.local elasticsearch.local
    10.0.0.2 minion2.domain

Note you can also include grain values in the pillar i.e. the following will also work
.. code-block:: yaml

    host_aliases:
      minion1.{{ grains['domain'] }}:
        - mongodb.local
        - elasticsearch.local

