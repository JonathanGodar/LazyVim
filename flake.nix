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
      requiredPackages = with pkgs; [
        lua-language-server
        stylua

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

        shfmt
        nodePackages.prettier

        rust-analyzer
      ];

      luaConfig = ./.;

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = self.requiredPackages;
      };
    };
}
