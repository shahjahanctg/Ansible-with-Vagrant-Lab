# Create ansible playbook about.yml and run it on webservers host group to do the following:

1. create directory /webdev owned by webdav group and permissions are as the following:
    - user : read/write/execute
    - group: read/write/execute
    - others: read/execute
    - set group id
2. create symbolic link for /var/www/html/webdev to /webdev
3. create file index.html contains “This is webdev content” in /webdev directory
4. you should be able to browse http://serverd.lab.example.com/webdev/ and get "This is webdev content"
5. These changes must survive after reboot
