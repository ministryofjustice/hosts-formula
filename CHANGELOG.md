## Version 3.0.0

* Non backward compatible changes. Entries in the hosts pillar will no longer be included in /etc/hosts. To migrate you should create a host_aliases entry in your pillar and create an alias for any entries that used to be static in your pillar. See the README for how the new method works.
* Sets all minion ids as host entries
* Allows aliases in pillar 
* Removed ipv6 record from hosts file

## Version 2.0.0

* Ensure that the FQDN of the box resolves to the IPV4 of eth0
* Remove the accumulator named `hosts` on `/etc/hosts`. **Breaking Change**

## Version 1.0.0

* Initial release
