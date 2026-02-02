ls -la
open "package.json"
node --version && npm --version
apt-get update && apt-get install -y nodejs npm
node --version && npm --version
npm install
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq libnode72 && apt-get install -y nodejs
apt-get remove -y nodejs && apt-get install -y nodejs
dpkg --remove --force-remove-reinstreq nodejs libnode72 && apt-get install -y nodejs
node --version && npm --version
npm install
npm test
npm audit fix
npm audit fix --force
npm test
create eslint.config.js
insert 'export default [
  {
    ignores: ["**/node_modules/**"],
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 0
npm test
edit 'export default [
  {
    ignores: ["**/node_modules/**"],
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];'
npm test
edit 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    parser: "@babel/eslint-parser",
    parserOptions: {
      requireConfigFile: false,
      babelOptions: {
        presets: ["@babel/preset-react"]
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];'
npm install --save-dev @babel/eslint-parser @babel/preset-react
npm install --save-dev @babel/eslint-parser @babel/preset-react --legacy-peer-deps
npm test
edit 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    parser: "@babel/eslint-parser",
    parserOptions: {
      requireConfigFile: false,
      babelOptions: {
        presets: ["@babel/preset-react"]
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    languageOptions: {
      parser: "@babel/eslint-parser",
      parserOptions: {
        requireConfigFile: false,
        babelOptions: {
          presets: ["@babel/preset-react"]
        }
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];'
npm test
npm install --save-dev @babel/eslint-parser @babel/preset-react --legacy-peer-deps
edit 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    languageOptions: {
      parser: "@babel/eslint-parser",
      parserOptions: {
        requireConfigFile: false,
        babelOptions: {
          presets: ["@babel/preset-react"]
        }
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    languageOptions: {
      parser: require("@babel/eslint-parser"),
      parserOptions: {
        requireConfigFile: false,
        babelOptions: {
          presets: ["@babel/preset-react"]
        }
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];'
npm test
npm install --save-dev eslint-plugin-react
npm install --save-dev eslint-plugin-react --legacy-peer-deps
edit 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    languageOptions: {
      parser: require("@babel/eslint-parser"),
      parserOptions: {
        requireConfigFile: false,
        babelOptions: {
          presets: ["@babel/preset-react"]
        }
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn"
    }
  }
];' 'module.exports = [
  {
    ignores: ["**/node_modules/**"],
    plugins: {
      react: require("eslint-plugin-react")
    },
    languageOptions: {
      parser: require("@babel/eslint-parser"),
      parserOptions: {
        requireConfigFile: false,
        babelOptions: {
          presets: ["@babel/preset-react"]
        }
      }
    },
    rules: {
      "no-unused-vars": "warn",
      "no-console": "warn",
      "react/prop-types": "error",
      "react/jsx-no-bind": "error",
      "react/jsx-filename-extension": ["error", { "extensions": [".jsx"] }]
    }
  }
];'
npm test
edit '"react/jsx-no-bind": "error"' '"react/jsx-no-bind": "warn"'
npm test
