docker run -it \
    -v ./notes:/notes\
    -v ./nvim_config:/nvim_config \
    --add-host=host.docker.internal:host-gateway \
    math /bin/bash