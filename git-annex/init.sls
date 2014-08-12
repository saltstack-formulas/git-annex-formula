{% from "git-annex/map.jinja" import gitannex with context %}

{% if grains['os_family'] in ['Debian']  %}

git-annex-dependencies:
  pkg.installed:
    - pkgs:
{% for pkg in gitannex.pkgs %}
      - {{ pkg }}
{% endfor %}

git-annex-install:
  cmd.script:
    - name: salt://git-annex/install.sh.jinja
    - template: jinja
    - unless: 'git annex version | grep {{ gitannex.version }}'
    - require:
      - pkg: git-annex-dependencies

{% endif %}
