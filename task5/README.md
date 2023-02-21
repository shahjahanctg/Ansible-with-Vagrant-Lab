# Create apache custom roles

### Create a role called apache and store it in /home/custis/ansible/roles. The role should satisfy the following requirements:

   1. The httpd packages are installed. Apache service is running and enabled on boot.
   2. Firewall is enabled, running and configured to allow all incoming traffic on webserver.
   3. Apache service should be restarted every time the file /var/www/html/index.html is modified.
   4. A Jinja2 template file index.html.j2 is used to create the file /var/www/html/index.html with the following content:

      Welcome to Web Server <host_fqdn> on <ipv4 address>

Create a playbook apache.yml that uses the role and runs on hosts in the webservers host group.
