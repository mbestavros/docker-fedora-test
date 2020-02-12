FROM quay.io/enarx/fedora

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN echo 'export PATH="~/.cargo/bin:$PATH"' >> ~/.bashrc

RUN ~/.cargo/bin/rustup target add x86_64-unknown-linux-musl

RUN ~/.cargo/bin/cargo install cargo-audit
