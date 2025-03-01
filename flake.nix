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
      required_packages = with pkgs; [
        lua-language-server

        # Nix
        nil
        nixfmt-rfc-style

        # Python
        pyright
        ruff

        # Shells
        bash-language-server
        nushell

        matlab-language-server
        jdt-language-server
      ];

      luaConfig = ./.;

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = self.required_packages;
      };
    };
}
