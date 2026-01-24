{
  description = "Bilolbek's collection of flake templates";

  outputs = { self }: {

    templates = {
      default = self.templates.trivial;

      trivial = {
        path = ./trivial;
        description = "A very basic flake";
      };

      python = {
        path = ./python;
        description = "Python template, using poetry2nix";
        welcomeText = ''
          # Getting started
          - Run `nix develop`
          - Run `poetry run python -m sample_package`
        '';
      };

      c-hello = {
        path = ./c-hello;
        description = "An over-engineered Hello World in C";
      };
    };
  };
}
