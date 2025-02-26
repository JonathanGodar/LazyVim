{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          lua-language-server
          nil
          pyright
          bash-language-server
          nushell
          matlab-language-server
          jdt-language-server
          nixfmt-rfc-style
        ];
      };
    };
}
