{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    nixvim.url = "github:nix-community/nixvim/nixos-25.11";
    firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
  };

  outputs = { ... } @ inputs:
    let
      core = rec {
        nixpkgs = inputs.nixpkgs;
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        home-manager = inputs.home-manager;
        nixvim = inputs.nixvim;
        firefox-addons = inputs.firefox-addons.packages.x86_64-linux;
      };
    in {
      nixosConfigurations = builtins.listToAttrs (map (module: {
        name = module;
        value = core.nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./modules/common
            (./modules + "/${module}")
            core.home-manager.nixosModules.home-manager {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "hm-backup";
                extraSpecialArgs = { inherit core; };
              };
            }
          ];
          specialArgs = { inherit core; };
        };
      }) [ "private" "work" ]);
    };
}

