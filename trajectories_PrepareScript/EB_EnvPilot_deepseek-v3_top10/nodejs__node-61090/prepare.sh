ls -la
ls -la .github/workflows
open ".github/workflows/test-linux.yml"
open "package.json"
open "README.md"
open "Makefile"
sudo apt-get update && sudo apt-get install -y clang-19 clang++-19 python3.14 rustc1.82 xcode-select sccache nix gcc g++ build-essential libssl-dev curl git tar gzip autoconf automake libtool pkg-config
apt-get update && apt-get install -y clang-19 clang++-19 python3.14 rustc1.82 xcode-select sccache nix gcc g++ build-essential libssl-dev curl git tar gzip autoconf automake libtool pkg-config
apt-get install -y gcc g++ build-essential libssl-dev curl git tar gzip autoconf automake libtool pkg-config
curl -s https://apt.llvm.org/llvm.sh | bash -s -- 19
apt-get install -y lsb-release
curl -s https://apt.llvm.org/llvm.sh | bash -s -- 19
apt-get install -y wget software-properties-common gnupg
curl -s https://apt.llvm.org/llvm.sh | bash -s -- 19
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain 1.82.0
source $HOME/.cargo/env
clang-19 --version && rustc --version
cargo install sccache
cargo install sccache --version 0.11.0
make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"
make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"
export CXX=clang++-19 CC=clang-19 && make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"
apt-get install -y clang-17 clang++-17
export CXX=g++ CC=gcc && make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support --without-ngtcp2"
export CXX=clang++-19 CC=clang-19 && make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"
open "deps/ngtcp2/ngtcp2/examples/util.h"
edit 'constexpr std::string format_hex(R &&r) {' 'std::string format_hex(R &&r) {' True
edit 'template <std::unsigned_integral T> constexpr std::string format_hex(T n) {' 'template <std::unsigned_integral T> std::string format_hex(T n) {' True
edit 'template <std::unsigned_integral T> constexpr std::string format_uint(T n) {' 'template <std::unsigned_integral T> std::string format_uint(T n) {' True
edit 'template <std::unsigned_integral T, std::weakly_incrementable O>
requires(std::indirectly_writable<O, char>)
constexpr O format_hex(T n, O result) {' 'template <std::unsigned_integral T, std::weakly_incrementable O>
requires(std::indirectly_writable<O, char>)
O format_hex(T n, O result) {' True
edit 'template <std::unsigned_integral T, std::weakly_incrementable O>
requires(std::indirectly_writable<O, char>)
constexpr O utos(T n, O result) {' 'template <std::unsigned_integral T, std::weakly_incrementable O>
requires(std::indirectly_writable<O, char>)
O utos(T n, O result) {' True
edit 'constexpr char lowcase(char c) noexcept {' 'char lowcase(char c) noexcept {' True
edit 'constexpr bool istarts_with(const std::string_view &s,
                            const std::string_view &prefix) {' 'bool istarts_with(const std::string_view &s,
                            const std::string_view &prefix) {' True
edit 'template <std::unsigned_integral T> constexpr size_t count_digit(T x) {' 'template <std::unsigned_integral T> size_t count_digit(T x) {' True
edit 'constexpr O operator()(T n, O result) {' 'O operator()(T n, O result) {' True
edit 'constexpr bool operator()(char lhs, char rhs) const noexcept {' 'bool operator()(char lhs, char rhs) const noexcept {' True
edit 'inline constexpr auto lowcase_tbl = [] {' 'inline auto lowcase_tbl = [] {' True
edit 'inline constexpr auto utos_digits = [] {' 'inline auto utos_digits = [] {' True
edit 'inline constexpr auto count_digit_tbl = [] {' 'inline auto count_digit_tbl = [] {' True
edit 'constexpr auto as_signed = []<class T>(T x) {' 'auto as_signed = []<class T>(T x) {' True
search_file as_signed /testbed/deps/ngtcp2/ngtcp2/examples/util.h
export CXX=clang++-19 CC=clang-19 && make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"
search_file format_hex /testbed/deps/ngtcp2/ngtcp2/examples/util.h
edit 'constexpr O format_hex_uint8(uint8_t b, O result) {' 'O format_hex_uint8(uint8_t b, O result) {' True
edit 'constexpr O format_hex(I first, I last, O result) {' 'O format_hex(I first, I last, O result) {' True
edit 'constexpr O format_hex(I first, std::iter_difference_t<I> n, O result) {' 'O format_hex(I first, std::iter_difference_t<I> n, O result) {' True
edit 'constexpr std::string format_hex(I first, std::iter_difference_t<I> n) {' 'std::string format_hex(I first, std::iter_difference_t<I> n) {' True
edit 'constexpr O format_hex(R &&r, O result) {' 'O format_hex(R &&r, O result) {' True
export CXX=clang++-19 CC=clang-19 && make build-ci -j4 V=1 CONFIG_FLAGS="--error-on-warn --v8-enable-temporal-support"

