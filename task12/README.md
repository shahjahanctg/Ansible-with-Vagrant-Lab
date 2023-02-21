Using two roles "balancer" and "phpinfo" we have a create a playbook named roles.yml

- Role balancer to apply role on balancers group
- make sure you get a loadbalance between web nodes.
- Validate by running curl http://serverc.lab.example.com twice, each time you should get a different response from one different web node.
  Web1
  Web2
- Role phpinfo to apply role on webservers group
- make sure you get a hello.php on webservers host groups
- Validate by http://servera.lab.example.com/hello.php each time you should get a different response from server
  Hello PHP on Web1
- Validate by http://serverb.lab.example.com/hello.php each time you should get a different response from server
  Hello PHP on Web2
