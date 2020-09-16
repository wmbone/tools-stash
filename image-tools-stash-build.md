# This is build tools container based on https://github.com/Praqma/Network-MultiTool/

Usage from Network-MultiTool

###################################################################################################

# Build and Push (to dockerhub) instructions:
# -------------------------------------------
# docker build -t local/network-multitool .
# docker tag local/network-multitool praqma/network-multitool
# docker login
# docker push praqma/network-multitool


# Pull (from dockerhub):
# ----------------------
# docker pull praqma/network-multitool


# Usage - on Docker:
# ------------------
# docker run --rm -it praqma/network-multitool /bin/bash 
# OR
# docker run -d  praqma/network-multitool
# OR
# docker run -p 80:80 -p 443:443 -d  praqma/network-multitool
# OR
# docker run -e HTTP_PORT=1080 -e HTTPS_PORT=1443 -p 1080:1080 -p 1443:1443 -d  praqma/network-multitool


# Usage - on Kubernetes:
# ---------------------
# kubectl run multitool --image=praqma/network-multitool --replicas=1