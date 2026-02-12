{
  perSystem =
    { pkgs, self', ... }:
    {
      packages.default = pkgs.stdenv.mkDerivation {
        pname = "c-hello";
        version = "0.1.0";

        src = ./.;

        nativeBuildInputs = with pkgs; [
          cmake
        ];

        meta.mainProgram = "hello_world";
        doCheck = true; # Test
      };

      checks.build-and-test = self'.packages.default;
    };
}
