GitLab Ansible playbook
=======================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Deploy GitLab server and CI runners using Ansible. At the moment it does not
configure the server and register runners automatically.


Prerequisite
------------

Make sure you can perform a password-less login to the servers you want to configure. Also, it is
advised to assign the servers a resolvable hostname, as the configure step of GitLab will use the
hostname as the login URL.


Usage
-----

### On the deployment node

```
$ yum install -y ansible
$ ansible-galaxy install -r roles.txt
$ vi hosts
$ ansible-playbook -i hosts deploy_gitlab.yml
```

After this you can access the GitLab servers' web interface.


### On the runners

```
sudo gitlab-ci-multi-runner register
```

The token to register the runners can be found at: `http://[server hostname]/admin/runners`

```
[root@gitlab-runner ~]# gitlab-ci-multi-runner register -u http://gitlab-server/ci -r DSame-i74XHyY13kHvgk 
Running in system-mode.                            

Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/ci):
[http://gitlab-server/ci]: 
Please enter the gitlab-ci token for this runner:
[DSame-i74XHyY13kHvgk]: 
Please enter the gitlab-ci description for this runner:
[gitlab-runner.novalocal]: 
Please enter the gitlab-ci tags for this runner (comma separated):

Registering runner... succeeded                     runner=DSame-i7
Please enter the executor: docker+machine, docker-ssh+machine, docker, docker-ssh, parallels, shell, ssh, virtualbox:
docker
Please enter the default Docker image (eg. ruby:2.1):
centos:7
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
```


Used roles
----------

  * gbraad.gitlab-server  
    [Galaxy](https://galaxy.ansible.com/gbraad/gitlab-server/), [GitHub](https://github.com/gbraad/ansible-role-gitlab-server) / [GitLab](https://gitlab.com/gbraad/ansible-role-gitlab-server)
  * gbraad.gitlab-cirunner  
    [Galaxy](https://galaxy.ansible.com/gbraad/gitlab-cirunner/), [GitHub](https://github.com/gbraad/ansible-role-gitlab-cirunner) / [GitLab](https://gitlab.com/gbraad/ansible-role-gitlab-cirunner)


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
