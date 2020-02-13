FROM quay.io/enarx/fedora

ENV PATH /root/.cargo/bin:$PATH

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y -q

RUN rustup target add x86_64-unknown-linux-musl

RUN rustup default stable

RUN rustup component add rustfmt

RUN cargo install --force cargo-audit
