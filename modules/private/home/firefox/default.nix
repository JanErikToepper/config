{ ... } @ inputs: {
  programs.firefox = {
    policies = {
      Homepage = {
        URL = "https://vault.bitwarden.com/#/vault/";
        Locked = true;
        StartPage = "homepage-locked";
      };
    };
    profiles.toepper.bookmarks.settings = [
      {
        name = "Bitwarden";
        url = "https://vault.bitwarden.com/#/vault/";
      }
      {
        name = "Github";
        url = "https://github.com/JanErikToepper/";
      }
    ];
  };
}

