fqdn_uuid
=========

This is a Puppet fact, and supporting manifest, that will return a UUID based on the machine's fqdn. 

I created this fact because I had an issue where all system UUIDs on certain Dell hardware of mine were identical. This broke libvirt migration. I therefore needed to generate UUIDs for each server, but I did not want to deal with the possibility of the UUID changing at random.

How To Use
----------
``` bash
$ facter -p fqnd_uuid
```
