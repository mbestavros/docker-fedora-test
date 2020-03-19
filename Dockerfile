FROM quay.io/enarx/fedora

# This container is only for testing utilities.
# Development-only utilities belong in the parent container.

RUN cargo install --force cargo-audit
RUN cargo install --force cargo-deny
RUN cargo install --force toml-cli

# Install PyGithub
RUN pip install PyGithub
