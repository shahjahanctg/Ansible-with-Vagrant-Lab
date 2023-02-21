Create ansible playbook about.yml and run it on webservers host group to do the following:

- create directory /webdev owned by webdav group and permissions are as the following:
  • user : read/write/execute
  • group: read/write/execute
  • others: read/execute
  • set group id
- create symbolic link for /var/www/html/webdev to /webdev
- create file index.html contains “This is webdev content” in /webdev directory
- you should be able to browse http://serverd.lab.example.com/webdev/ and get "This is webdev content"
- These changes must survive after reboot
