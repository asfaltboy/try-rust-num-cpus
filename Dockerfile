FROM clux/muslrust:stable as builder
WORKDIR /volume
COPY . .
RUN cargo build --release

FROM alpine
# Copy the compiled binary from the builder container
COPY --from=builder /volume/target/x86_64-unknown-linux-musl/release/try-rust-num-cpus .
# Pass all arguments etc to binary
ENTRYPOINT [ "/try-rust-num-cpus" ]
