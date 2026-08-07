{ pkgs, ... }: {
  languages.python = {
    enable = true;
    venv.enable = true;
    uv = {
      enable = true;
      sync.enable = true;
    };
  };

  treefmt = {
    enable = true;
    config.programs = {
      nixfmt.enable = true;
      biome.enable = true;
      ruff.enable = true;
      taplo.enable = true;
      yamlfmt.enable = true;
    };
  };

  git-hooks = {
    enable = true;
    hooks = {
      treefmt.enable = true;
    };
  };
}
