#!/bin/sh
mkdir -p roles
git clone https://github.com/gbraad/ansible-role-gitlab-server.git roles/gbraad.gitlab-server
git clone https://github.com/gbraad/ansible-role-gitlab-cirunner.git roles/gbraad.gitlab-cirunner

