include:
  - qubescusto.configs.code.dev
  - qubescusto.configs.zsh

github_username:
  git.config_set:
    - name: user.name
    - value: bXV0ZQ
    - user: user
    - global: True

github_email:
  git.config_set:
    - name: user.email
    - value: 44335359+bXV0ZQ@users.noreply.github.com
    - user: user
    - global: True

dev_private_key:
  file.managed:
    - name: /home/user/.ssh/id_rsa
    - contents_pillar: dev:ssh:priv_key
    - user: user
    - group: user
    - mode: 600
    - attrs: a
    - makedirs: True

dev_public_key:
  file.managed:
    - name: /home/user/.ssh/id_rsa.pub
    - contents_pillar: dev:ssh:pub_key
    - user: user
    - group: user
    - mode: 644
    - makedirs: True
