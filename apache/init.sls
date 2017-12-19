install_apache:
  pkg_installed:
    - pkgs:
      - httpd

index_html:
  file_managed:
    - name: /var/www/html/index.html
    - group: apache
    - user: apache
    - mode: 644
    - source: salt://apache/templates/index.html

apache_service:
  service.running:
    - enable: True
    - name: httpd