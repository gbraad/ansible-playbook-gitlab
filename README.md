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
$ ansible-galaxy install -r roles.txt
$ vi hosts
$ ansible-playbook -i hosts deploy_gitlab.yml
```

After this you can access the GitLab servers' web interface.


On the runners
```
sudo gitlab-ci-multi-runner register
```


Used roles
----------

  * gbraad.gitlab-server  
    [Galaxy](https://galaxy.ansible.com/gbraad/gitlab-server/), [GitHub](https://github.com/gbraad/ansible-role-gitlab-server)
  * gbraad.gitlab-cirunner  
    [Galaxy](https://galaxy.ansible.com/gbraad/gitlab-cirunner/), [GitHub](https://github.com/gbraad/ansible-role-gitlab-cirunner)


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
