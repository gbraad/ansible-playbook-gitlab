GitLab Ansible playbook
=======================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Deploy GitLab server and CI runners using Ansible. At the moment it does not
configure the server and register runners automatically.


Usage
-----

On the deployment node
```
$ yum install -y ansible
$ vi hosts
$ ansible-playbook -i hosts deploy_gitlab.yml
```

On the server
```
sudo gitlab-ctl reconfigure
```

On the runners
```
sudo gitlab-ci-multi-runner register
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
