# Using two roles "balancer" and "phpinfo" we have a create a playbook named roles.yml.

1. Role balancer to apply role on balancers group.
2. make sure you get a loadbalance between web nodes.
3. Validate by running curl http://serverc.lab.example.com twice, each time you should get a different response from one different web node.

    Web1
    Web2

4. Role phpinfo to apply role on webservers group.
5. make sure you get a hello.php on webservers host groups.
6. Validate by http://servera.lab.example.com/hello.php each time you should get a different response from server.

    Hello PHP on Web1

7. Validate by http://serverb.lab.example.com/hello.php each time you should get a different response from server.

    Hello PHP on Web2
