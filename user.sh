#!/bin/bash

useradd -m hadoopuser
mkdir /home/hadoopuser/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQol9+Jw3+Rwkoj8cw6pJN6Heb/G9sDDSJ/+p9ZdMapmOhYypd3mq8I+lYqxXHvZ+lWwNZCmWG27yRR5Q59KVYYjzlexuC9Bd+Dv7ivHRSFkd9CWnSuKuFW481TlITjALque/VOSGvii8cmF+AE4IeW/SELwtApQS5ywqijr2JJIrjQNX2lxxJZW1y9qu994Gjq2jix01G86eyrTcwnqvl25vqa7QrPjn0gogevaFF8uh2WFdhDsReD9143D5B6pm7CGCVTOgZdsa6pGYpkH8ioxGke+MeJo+J8y+/gpfVYRxYAwUE1pVkxa3t153TsMGFcdRJVWq6/l1gjJipPYDXzn88PIrpV36dCai8rXSOuUg/Lx3fd5EbXIT6Albpw7F0OHqSQmKQvxTJsy63nQDxbmtUu4w7rKMHsuOB2eQyG0t+qXmZZounfw2wTVtETSLv97oiw+Jczz/dAHWVZzo0BrzPKRMGLW1ONqTwok7dJ+XZHIb3MueikBp1RTN2oiGxyMWtP6UzKRGi8BPw4pFjoa/yIBogSm2CVPP0ewbKqGt0jnJIyb7jBqZYsS6SRKaPnZnW8FaOQhlv9+Cr3UV72nS+l1WsVzpYfhgrvBIsQo5LrwKwwpaIlkX28EETYk3NX3HVAJgpbDNM1icxx3OZNIEdTYpBI52RdlENr8vMVQ== tower@ansible" >> /home/hadoopuser/.ssh/authorized_keys
chown -R hadoopuser:hadoopuser /home/hadoopuser/.ssh
chmod 600 /home/hadoopuser/.ssh/authorized_keys
chmod 700 /home/hadoopuser/.ssh/
echo "" >> /etc/sudoers
echo "# hadoopuser - cluster master :))" >> /etc/sudoers
echo "hadoopuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
