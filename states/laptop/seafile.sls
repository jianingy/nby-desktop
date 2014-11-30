seafile:
  pkg.installed:
    - pkgs:
      - libjansson4
      - python-simplejson
{% if grains['cpuarch'] == 'x86_64' %}
      - seafile: https://bitbucket.org/haiwen/seafile/downloads/seafile_3.1.11_amd64.deb
{% else %}
      - seafile:https://bitbucket.org/haiwen/seafile/downloads/seafile_3.1.11_i386.deb
{% endif %}

