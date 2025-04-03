{ pkgs ? import <nixpkgs> {} }:

let
  unstable = import (fetchTarball "https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz") {};

in pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.redis
    unstable.python312Packages.redis
    unstable.python312Packages.rpyc
    unstable.python312Packages.pyzmq
    unstable.python312Packages.ipython
    unstable.python312Packages.jupyter
    unstable.python312Packages.jupyter-server
    unstable.python312Packages.ipyparallel
    unstable.python312Packages.pylint
    unstable.python312Packages.autopep8
    unstable.python312Packages.rope
    unstable.nodejs_22
    unstable.python312Packages.black
    unstable.python312Packages.yapf
    unstable.python312Packages.flake8
    unstable.python312Packages.mypy
    unstable.python312Packages.pydocstyle
    unstable.python312Packages.bandit
    unstable.uv
  ];
}
