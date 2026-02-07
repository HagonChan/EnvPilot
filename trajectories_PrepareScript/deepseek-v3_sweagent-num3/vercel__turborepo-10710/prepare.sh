ls -la
ls -la .github/workflows
open ".github/workflows/turborepo-test.yml"
goto 200
open "Cargo.toml"
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get update && apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustc --version
cargo build
git config --global http.postBuffer 1048576000 && git config --global https.postBuffer 1048576000 && git config --global core.compression 0 && git config --global http.lowSpeedLimit 0 && git config --global http.lowSpeedTime 999999
cargo build
cargo test
open "Cargo.toml"
cargo tree --workspace
open "crates/turborepo-updater/Cargo.toml"
edit 'update-informer = { git = "https://github.com/nicholaslyang/update-informer.git", default-features = false, features = [
  "reqwest",
]' '# update-informer = { git = "https://github.com/nicholaslyang/update-informer.git", default-features = false, features = [
#   "reqwest",
# ]'
cargo build
edit 'native-tls = ["reqwest/native-tls", "update-informer/native-tls"]
rustls-tls = ["reqwest/rustls-tls", "update-informer/rustls-tls"]' '# native-tls = ["reqwest/native-tls", "update-informer/native-tls"]
# rustls-tls = ["reqwest/rustls-tls", "update-informer/rustls-tls"]'
cargo build
open "crates/turborepo-lib/Cargo.toml"
edit 'native-tls = ["turborepo-api-client/native-tls", "turbo-updater/native-tls"]
rustls-tls = ["turborepo-api-client/rustls-tls", "turbo-updater/rustls-tls"]' '# native-tls = ["turborepo-api-client/native-tls", "turbo-updater/native-tls"]
# rustls-tls = ["turborepo-api-client/rustls-tls", "turbo-updater/rustls-tls"]'
cargo build
edit 'default = ["rustls-tls", "daemon-package-discovery"]' 'default = ["daemon-package-discovery"]'
cargo build
open "crates/turborepo/Cargo.toml"
edit 'native-tls = ["turborepo-lib/native-tls"]
rustls-tls = ["turborepo-lib/rustls-tls"]' '# native-tls = ["turborepo-lib/native-tls"]
# rustls-tls = ["turborepo-lib/rustls-tls"]'
edit 'default = ["rustls-tls", "turborepo-lib/daemon-package-discovery"]' 'default = ["turborepo-lib/daemon-package-discovery"]'
cargo build
open "crates/turborepo-lsp/Cargo.toml"
edit 'native-tls = ["turborepo-lib/native-tls"]
rustls-tls = ["turborepo-lib/rustls-tls"]' '# native-tls = ["turborepo-lib/native-tls"]
# rustls-tls = ["turborepo-lib/rustls-tls"]'
edit 'default = ["rustls-tls"]' 'default = []'
cargo build
apt-get update && apt-get install -y build-essential pkg-config
cargo build
apt-get install -y protobuf-compiler
cargo build
open "crates/turborepo-lib/build.rs"
edit 'let tonic_build_result = tonic_build::configure()
        .build_server(true)
        .file_descriptor_set_path("src/daemon/file_descriptor_set.bin")
        .compile(
            &["./src/daemon/proto/turbod.proto"],
            &["./src/daemon/proto"],
        );' 'let tonic_build_result = tonic_build::configure()
        .build_server(true)
        .file_descriptor_set_path("src/daemon/file_descriptor_set.bin")
        .protoc_arg("--experimental_allow_proto3_optional")
        .compile(
            &["./src/daemon/proto/turbod.proto"],
            &["./src/daemon/proto"],
        );'
cargo build
apt-get install -y capnproto
cargo build
open "crates/turborepo-updater/src/lib.rs"
edit 'use update_informer::{
    http_client::{GenericHttpClient, HttpClient},
    Check, Package, Registry, Result as UpdateResult, Version,
};' '// use update_informer::{
//     http_client::{GenericHttpClient, HttpClient},
//     Check, Package, Registry, Result as UpdateResult, Version,
// };'
edit 'struct NPMRegistry;

impl Registry for NPMRegistry {
    const NAME: &'"'"'static str = "npm-registry";
    fn get_latest_version<T: HttpClient>(
        http: GenericHttpClient<T>,
        pkg: &Package,
    ) -> UpdateResult<Option<String>> {
        // determine tag to request
        let tag = get_tag_from_version(&pkg.version().semver().pre);
        // since we'"'"'re overloading tag within name, we need to split it back out
        let full_name = pkg.to_string();
        let split_name: Vec<&str> = full_name.split('"'"'/'"'"').collect();
        let name = split_name[1];
        let url = format!("https://turborepo.com/api/binaries/version?name={name}&tag={tag}");

        let result: NpmVersionData = http.get(&url)?;
        Ok(Some(result.version))
    }
}' '// struct NPMRegistry;

// impl Registry for NPMRegistry {
//     const NAME: &'"'"'static str = "npm-registry";
//     fn get_latest_version<T: HttpClient>(
//         http: GenericHttpClient<T>,
//         pkg: &Package,
//     ) -> UpdateResult<Option<String>> {
//         // determine tag to request
//         let tag = get_tag_from_version(&pkg.version().semver().pre);
//         // since we'"'"'re overloading tag within name, we need to split it back out
//         let full_name = pkg.to_string();
//         let split_name: Vec<&str> = full_name.split('"'"'/'"'"').collect();
//         let name = split_name[1];
//         let url = format!("https://turborepo.com/api/binaries/version?name={name}&tag={tag}");

//         let result: NpmVersionData = http.get(&url)?;
//         Ok(Some(result.version))
//     }
// }'
edit 'pub fn display_update_check(
    package_name: &str,
    github_repo: &str,
    footer: Option<&str>,
    current_version: &str,
    timeout: Option<Duration>,
    interval: Option<Duration>,
    package_manager: &PackageManager,
) -> Result<(), UpdateNotifierError> {
    // bail early if the user has disabled update notifications
    if should_skip_notification() {
        return Ok(());
    }

    let version = check_for_updates(package_name, current_version, timeout, interval);

    if let Ok(Some(version)) = version {
        let latest_version = version.to_string();

        let update_cmd = match package_manager {
            PackageManager::Npm => style("npx @turbo/codemod@latest update").cyan().bold(),
            PackageManager::Yarn | PackageManager::Berry => {
                style("yarn dlx @turbo/codemod@latest update").cyan().bold()
            }
            PackageManager::Pnpm | PackageManager::Pnpm6 | PackageManager::Pnpm9 => {
                style("pnpm dlx @turbo/codemod@latest update").cyan().bold()
            }
            PackageManager::Bun => style("bunx @turbo/codemod@latest update").cyan().bold(),
        };

        let msg = format!(
            "
            Update available {version_prefix}{current_version} ≫ {latest_version}
            Changelog: {github_repo}/releases/tag/{latest_version}
            Run \"{update_cmd}\" to update
            ",
            version_prefix = style("v").dim(),
            current_version = style(current_version).dim(),
            latest_version = style(latest_version).green().bold(),
            github_repo = github_repo,
            update_cmd = update_cmd
        );

        if let Some(footer) = footer {
            return ui::message(&format!("{msg}\n{footer}"));
        }

        ui::message(&msg)
    } else {
        Ok(())
    }
}' '// pub fn display_update_check(
//     package_name: &str,
//     github_repo: &str,
//     footer: Option<&str>,
//     current_version: &str,
//     timeout: Option<Duration>,
//     interval: Option<Duration>,
//     package_manager: &PackageManager,
// ) -> Result<(), UpdateNotifierError> {
//     // bail early if the user has disabled update notifications
//     if should_skip_notification() {
//         return Ok(());
//     }

//     let version = check_for_updates(package_name, current_version, timeout, interval);

//     if let Ok(Some(version)) = version {
//         let latest_version = version.to_string();

//         let update_cmd = match package_manager {
//             PackageManager::Npm => style("npx @turbo/codemod@latest update").cyan().bold(),
//             PackageManager::Yarn | PackageManager::Berry => {
//                 style("yarn dlx @turbo/codemod@latest update").cyan().bold()
//             }
//             PackageManager::Pnpm | PackageManager::Pnpm6 | PackageManager::Pnpm9 => {
//                 style("pnpm dlx @turbo/codemod@latest update").cyan().bold()
//             }
//             PackageManager::Bun => style("bunx @turbo/codemod@latest update").cyan().bold(),
//         };

//         let msg = format!(
//             "
//             Update available {version_prefix}{current_version} ≫ {latest_version}
//             Changelog: {github_repo}/releases/tag/{latest_version}
//             Run \"{update_cmd}\" to update
//             ",
//             version_prefix = style("v").dim(),
//             current_version = style(current_version).dim(),
//             latest_version = style(latest_version).green().bold(),
//             github_repo = github_repo,
//             update_cmd = update_cmd
//         );

//         if let Some(footer) = footer {
//             return ui::message(&format!("{msg}\n{footer}"));
//         }

//         ui::message(&msg)
//     } else {
//         Ok(())
//     }
// }'
goto 100

