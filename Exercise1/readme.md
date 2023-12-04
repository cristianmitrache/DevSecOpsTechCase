INFO exercise 1

These are the files required for the first exercise. 

For 1.1 we have site.yml and install_ansible.sh. 

For 1.2 we have getweather.sh.

For 1.3 we have Dockerfile. 

While I tried to apply security best practices, like using --no-cache when building containers, assigning a dedicated user for running the script inside the container, 
it kept breaking the bash script, so I left it in the current state.

PS: While it is technically complete, the output in 1.3 for "grep -i Honolulu /var/log/syslog" comes out empty, meaning I missed something.
PS2: You wrote that you prefer Python and Go, but I am more experienced in using Bash, but I am quite confident I will expand my Python knowledge going forward.
