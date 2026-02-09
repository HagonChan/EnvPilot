

find_file '*.yml'

open "/testbed/.github/workflows/ci.yml"
goto 60
goto 100
goto 132
goto 185
goto 1
insert '# Install dependencies
apt-get update && apt-get install -y \
    build-essential \
    clang \
    curl \
    git \
    python3 \
    python3-pip \
    nodejs \
    npm \
    cargo \
    rustc

# Install Deno
curl -fsSL https://deno.land/x/install/install.sh | sh
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
' 0
