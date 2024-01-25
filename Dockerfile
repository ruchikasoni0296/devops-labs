# Dockerfile
FROM base-image

ARG GIT_COMMIT
LABEL git-commit=$GIT_COMMIT
