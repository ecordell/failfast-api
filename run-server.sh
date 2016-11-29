#!/bin/bash
PORT=${PORT:-5000}
GITLAB_TRIGGER=${GITLAB_TRIGGER:-b2cdcaa47b8e5bee6d827b11e5ae4a}
GITLAB_TOKEN=${GITLAB_TOKEN:-mytoken}
GITLAB_REPO=${GITLAB_REPO:-ant31/hub2lab}
GITLAB_REPO=$GITLAB_REPO \
           GITLAB_TRIGGER=$GITLAB_TRIGGER \
           GITLAB_TOKEN=$GITLAB_TOKEN \
           gunicorn hub2labhook.api.wsgi:app -b :$PORT --timeout 120 -w 4 --reload