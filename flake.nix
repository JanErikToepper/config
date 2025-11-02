{
  outputs = { ... } @ inputs:
    let
      core = rec {
        version = "25.05";
        nixpkgs = inputs.nixpkgs;
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        home-manager = inputs.home-manager;
        firefox-addons = inputs.firefox-addons.packages.x86_64-linux;
        nixvim = inputs.nixvim;
      };
    in {
      nixosConfigurations = builtins.listToAttrs
        (map (module: {
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

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}

