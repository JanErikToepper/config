{ ... } @ inputs: let
  outlookUrl = "https://outlook.live.com/mail/0/";
in {
  programs.firefox = {
    policies = {
      Homepage = {
        URL = "https://vault.bitwarden.com/#/vault/";
        Locked = true;
        StartPage = "homepage-locked";
      };
      Handler.schemes.mailTo.handlers = [{
        name = "Outlook";
        urlTemplate = outlookUrl;
      }];
    };
    profiles.toepper.bookmarks.settings = [
      {
        name = "Bitwarden";
        url = "https://vault.bitwarden.com/#/vault/";
      }
      {
        name = "Outlook";
        url = outlookUrl;
      }
      {
        name = "Github";
        url = "https://github.com/JanErikToepper/";
      }
    ];
  };
}

