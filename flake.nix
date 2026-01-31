{
  description = "Bilolbek's collection of flake templates";

  outputs = { self }: {

    templates = {
      default = self.templates.trivial;

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

      c-hello = {
        path = ./c-hello;
        description = "An over-engineered Hello World in C";
      };
    };
  };
}
