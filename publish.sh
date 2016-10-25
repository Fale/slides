#!/bin/bash
scp output/*.pdf fedorapeople.org:~/public_html/slides
touch output/index.html
scp output/* fale.io:~/public_html/slides
