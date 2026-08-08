{
  description = "Bilolbek's collection of flake templates";

  outputs =
    { self }:
    {

      templates = {
        default = self.templates.trivial;

        cpp-cmake = {
          path = ./cpp-cmake;
          description = "An over-engineered Hello World in C";
        };

        cpp-make = {
          path = ./cpp-make;
          description = "Basic cpp template using make";
        };

        go = {
          path = ./go;
          description = "Basic go template";
        };

        trivial = {
          path = ./trivial;
          description = "A very basic flake";
        };

        python-devenv = {
          path = ./python-devenv;
          description = "Basic devenv environment for python and uv";
        };

        python-script = {
          path = ./python-script;
          description = "One file python script with Typer and Loguru";
          welcomeText = "Enable execution by `chmod +x script.py` and run with `./script.py`";
        };

        python-uv = {
          path = ./python-uv;
          description = "Basic flake for Python and UV development";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
          '';
        };

        rust = {
          path = ./rust;
          description = "Basic rust template";
        };

        vite-tailwind = {
        	path = ./vite-tailwind;
        	description = "Vite with tailwind";
        };
      };
    };
}
