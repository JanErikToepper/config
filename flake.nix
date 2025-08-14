{
  outputs = { ... } @ inputs:
    let
      core = rec {
        nixpkgs = inputs.nixpkgs;
        home-manager = inputs.home-manager;
        firefox-addons = inputs.firefox-addons.packages.${ system.architecture };
        nixvim = inputs.nixvim;
        pkgs = nixpkgs.legacyPackages.${ system.architecture };
        version = "25.05";
      };

      system = {
        architecture = "x86_64-linux";
        hostName = "toepper";

        timeZone = "Europe/Berlin";

        defaultLocale = "en_US.UTF-8";
        extraLocale = "de_DE.UTF-8";

        keyboardLayout = "de-latin1";
        keyboardVariant = "cherryblue";

        packages = [ "vim" "git" ];
      };

      user = {
        name = "toepper";
        hashedPassword = "$6$K6xoZ6UoJ.FNUlGQ$q1gy5/8UtyYh/.hvioRHmzLE9ZHSygfO93Nm0ptVAV4e3gSPOlo84gY970O1j2Yl7tpYD9RuLEhdPHQJEM3L31";
        groups = [ "networkmanager" "wheel" ];
        packages = [ "nautilus" ];
      };

      args = {
        inherit
          core
          system
          user;
      };
    in {
      nixosConfigurations.${ system.hostName } = core.nixpkgs.lib.nixosSystem {
        system = system.architecture;
        modules = [
          ./system
          ./user
          core.home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "hm-backup";
              users.${ user.name } = import ./home;
              extraSpecialArgs = args;
            };
          }
        ];
        specialArgs = args;
      };
    };

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}

