ls -la
open ".circleci/config.yml"
open "package.json"
yarn install --immutable
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
corepack enable
corepack prepare yarn@4.0.2 --activate
yarn install --immutable
yarn verify
nx view-logs
yarn nx view-logs
yarn nx test @blueprintjs/core
apt-get update && apt-get install -y google-chrome-stable
apt-get install -y chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
yarn nx reset
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
snap install chromium
apt-get update && apt-get install -y snapd
systemctl start snapd
snapd
apt-get install -y chromium-browser
which chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser && yarn nx test @blueprintjs/core
yarn add -D puppeteer
open "packages/core/karma.conf.js"
yarn exec puppeteer --version
yarn exec node -e "console.log(require('puppeteer').executablePath())"
edit 'createKarmaConfig({' 'createKarmaConfig({
            CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),'
yarn nx test @blueprintjs/core
open "packages/core/karma.conf.js"
export CHROME_BIN=$(yarn exec node -e "console.log(require('puppeteer').executablePath())") && yarn nx test @blueprintjs/core
apt-get update && apt-get install -y libnspr4 libnss3 libxss1 libasound2 libatk-bridge2.0-0 libgtk-3-0 libgbm1
export CHROME_BIN=$(yarn exec node -e "console.log(require('puppeteer').executablePath())") && yarn nx test @blueprintjs/core
edit 'createKarmaConfig({' 'createKarmaConfig({
            CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
            customLaunchers: {
                ChromeHeadlessNoSandbox: {
                    base: '"'"'ChromeHeadless'"'"',
                    flags: ['"'"'--no-sandbox'"'"']
                }
            },'
edit 'CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
            customLaunchers: {
                ChromeHeadlessNoSandbox: {
                    base: '"'"'ChromeHeadless'"'"',
                    flags: ['"'"'--no-sandbox'"'"']
                }
            },
            CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),' 'CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
            customLaunchers: {
                ChromeHeadlessNoSandbox: {
                    base: '"'"'ChromeHeadless'"'"',
                    flags: ['"'"'--no-sandbox'"'"']
                }
            },'
export CHROME_BIN=$(yarn exec node -e "console.log(require('puppeteer').executablePath())") && yarn nx test @blueprintjs/core
edit 'config.set(
        createKarmaConfig({' 'config.set({
            ...createKarmaConfig({
                CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
                customLaunchers: {
                    ChromeHeadlessNoSandbox: {
                        base: '"'"'ChromeHeadless'"'"',
                        flags: ['"'"'--no-sandbox'"'"']
                    }
                },
                dirname: __dirname,
                coverageExcludes: [
                    // don'"'"'t check barrel files
                    "src/**/index.ts",

                    // no need to test legacy APIs
                    "src/legacy/*",
                    "src/common/keyCodes.ts",
                    "src/deprecatedTypeAliases.ts",

                    // not worth full coverage
                    "src/accessibility/*",
                    "src/common/abstractComponent*",
                    "src/common/abstractPureComponent*",
                    "src/components/html/html.tsx",
                    // focus mangement is difficult to test, and this function may no longer be required
                    // if we use the react-focus-lock library in Overlay2.
                    "src/components/overlay/overlayUtils.ts",
                    // simple wrapper component
                    "src/context/blueprintProvider.tsx",

                    // HACKHACK: for karma upgrade only
                    "src/common/refs.ts",

                    // HACKHACK: need to add hotkeys tests
                    "src/components/hotkeys/*",
                    "src/context/hotkeys/hotkeysProvider.tsx",

                    // HACKHACK: need to add section tests
                    "src/components/section/*",
                ],
                coverageOverrides: {
                    "src/components/editable-text/editableText.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                    "src/components/popover/customModifiers.ts": {
                        lines: 66,
                        statements: 66,
                    },
                    "src/components/tag-input/tagInput.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                },
            }),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],'
edit 'config.set({
            ...createKarmaConfig({
                CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
                customLaunchers: {
                    ChromeHeadlessNoSandbox: {
                        base: '"'"'ChromeHeadless'"'"',
                        flags: ['"'"'--no-sandbox'"'"']
                    }
                },
                dirname: __dirname,
                coverageExcludes: [
                    // don'"'"'t check barrel files
                    "src/**/index.ts",

                    // no need to test legacy APIs
                    "src/legacy/*",
                    "src/common/keyCodes.ts",
                    "src/deprecatedTypeAliases.ts",

                    // not worth full coverage
                    "src/accessibility/*",
                    "src/common/abstractComponent*",
                    "src/common/abstractPureComponent*",
                    "src/components/html/html.tsx",
                    // focus mangement is difficult to test, and this function may no longer be required
                    // if we use the react-focus-lock library in Overlay2.
                    "src/components/overlay/overlayUtils.ts",
                    // simple wrapper component
                    "src/context/blueprintProvider.tsx",

                    // HACKHACK: for karma upgrade only
                    "src/common/refs.ts",

                    // HACKHACK: need to add hotkeys tests
                    "src/components/hotkeys/*",
                    "src/context/hotkeys/hotkeysProvider.tsx",

                    // HACKHACK: need to add section tests
                    "src/components/section/*",
                ],
                coverageOverrides: {
                    "src/components/editable-text/editableText.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                    "src/components/popover/customModifiers.ts": {
                        lines: 66,
                        statements: 66,
                    },
                    "src/components/tag-input/tagInput.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                },
            }),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
            CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
            customLaunchers: {
                ChromeHeadlessNoSandbox: {
                    base: '"'"'ChromeHeadless'"'"',
                    flags: ['"'"'--no-sandbox'"'"']
                }
            },
            dirname: __dirname,
            coverageExcludes: [
                // don'"'"'t check barrel files
                "src/**/index.ts",

                // no need to test legacy APIs
                "src/legacy/*",
                "src/common/keyCodes.ts",
                "src/deprecatedTypeAliases.ts",

                // not worth full coverage
                "src/accessibility/*",
                "src/common/abstractComponent*",
                "src/common/abstractPureComponent*",
                "src/components/html/html.tsx",
                // focus mangement is difficult to test, and this function may no longer be required
                // if we use the react-focus-lock library in Overlay2.
                "src/components/overlay/overlayUtils.ts",
                // simple wrapper component
                "src/context/blueprintProvider.tsx",

                // HACKHACK: for karma upgrade only
                "src/common/refs.ts",

                // HACKHACK: need to add hotkeys tests
                "src/components/hotkeys/*",
                "src/context/hotkeys/hotkeysProvider.tsx",

                // HACKHACK: need to add section tests
                "src/components/section/*",
            ],' 'config.set({
            ...createKarmaConfig({
                CHROME_BIN: require('"'"'puppeteer'"'"').executablePath(),
                customLaunchers: {
                    ChromeHeadlessNoSandbox: {
                        base: '"'"'ChromeHeadless'"'"',
                        flags: ['"'"'--no-sandbox'"'"']
                    }
                },
                dirname: __dirname,
                coverageExcludes: [
                    // don'"'"'t check barrel files
                    "src/**/index.ts",

                    // no need to test legacy APIs
                    "src/legacy/*",
                    "src/common/keyCodes.ts",
                    "src/deprecatedTypeAliases.ts",

                    // not worth full coverage
                    "src/accessibility/*",
                    "src/common/abstractComponent*",
                    "src/common/abstractPureComponent*",
                    "src/components/html/html.tsx",
                    // focus mangement is difficult to test, and this function may no longer be required
                    // if we use the react-focus-lock library in Overlay2.
                    "src/components/overlay/overlayUtils.ts",
                    // simple wrapper component
                    "src/context/blueprintProvider.tsx",

                    // HACKHACK: for karma upgrade only
                    "src/common/refs.ts",

                    // HACKHACK: need to add hotkeys tests
                    "src/components/hotkeys/*",
                    "src/context/hotkeys/hotkeysProvider.tsx",

                    // HACKHACK: need to add section tests
                    "src/components/section/*",
                ],
                coverageOverrides: {
                    "src/components/editable-text/editableText.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                    "src/components/popover/customModifiers.ts": {
                        lines: 66,
                        statements: 66,
                    },
                    "src/components/tag-input/tagInput.tsx": {
                        lines: 75,
                        statements: 75,
                    },
                },
            }),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],'
edit '}),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
            coverageOverrides: {
                "src/components/editable-text/editableText.tsx": {
                    lines: 75,
                    statements: 75,
                },
                "src/components/popover/customModifiers.ts": {
                    lines: 66,
                    statements: 66,
                },
                "src/components/tag-input/tagInput.tsx": {
                    lines: 75,
                    statements: 75,
                },
            },' '}),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],'
export CHROME_BIN=$(yarn exec node -e "console.log(require('puppeteer').executablePath())") && yarn nx test @blueprintjs/core
open "packages/core/karma.conf.js"
edit '}),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
        }),
    );' '}),
            browsers: ['"'"'ChromeHeadlessNoSandbox'"'"'],
        });'
export CHROME_BIN=$(yarn exec node -e "console.log(require('puppeteer').executablePath())") && yarn nx test @blueprintjs/core

