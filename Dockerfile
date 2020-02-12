FROM quay.io/enarx/fedora

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH ~/.cargo/bin:$PATH

RUN ~/.cargo/bin/rustup target add x86_64-unknown-linux-musl

RUN ~/.cargo/bin/rustup component add rustfmt

RUN ~/.cargo/bin/cargo install --force cargo-audit
