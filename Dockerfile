FROM node:10-slim

LABEL version="0.1.0"
LABEL repository="https://github.com/oddbit/firebase-bolt-action"
LABEL homepage="https://github.com/oddbit/firebase-bolt-action/blob/master/README.md"
LABEL maintainer="Dennis Alund <dennis.alund@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Firebase Bolt Compiler"
LABEL com.github.actions.description="Wraps the firebase bolt compiler CLI"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm install -g firebase-bolt

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]