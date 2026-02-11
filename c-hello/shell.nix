{ inputs, ... }:
{
  imports = [
    inputs.treefmt-nix.flakeModule
    inputs.git-hooks.flakeModule
  ];

  perSystem =
    {
      config,
      pkgs,
      ...
    }:
    {
      treefmt = {
        projectRootFile = "flake.nix";
        programs = {
          nixfmt.enable = true;
          prettier.enable = true;
          statix.enable = true;
          deadnix.enable = true;
          yamlfmt.enable = true;
          taplo.enable = true;

          clang-format.enable = true;
        };
      };

      pre-commit = {
        check.enable = true;
        settings.hooks = {
          treefmt.enable = true;

          end-of-file-fixer.enable = true;
          trim-trailing-whitespace.enable = true;
          check-added-large-files.enable = true;
        };
      };

      devShells.default = pkgs.mkShell {
        shellHook = config.pre-commit.installationScript;
        dontStrip = true;

        nativeBuildInputs = with pkgs; [
          config.treefmt.build.wrapper
          just
          nixd
          entr

          clang-tools
          cmake
          gdb
          gnumake
          lldb
          # valgrind # check for memory leaks
        ];
      };
    };
}
