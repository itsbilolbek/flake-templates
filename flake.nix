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
      };
    };
}
