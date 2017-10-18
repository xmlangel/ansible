docker run -it --rm \
-h ansible \
--name ansible \
-v $(pwd)/home:/home \
xmlangel/ansible /bin/bash
