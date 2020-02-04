# Setup an AWX install on a CentOS8 Vagrant Created VirtualBox VM

Create the initial virtual box instance.

``` bash
vagrant up
```

Log into the virtual box instance.

``` bash
vagrant ssh ansible
```

Run the setup script

``` bash
cd shared/ansible
./awxsetup.sh
```

Once this is run you can browse to localhost:8080 on your machine and login using admin and password as the credentials.
