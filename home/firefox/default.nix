{ ... } @ inputs:
  let
    outlookUrl = "https://outlook.live.com/mail/0";
  in {
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" ];
    policies = {
      AppAutoUpdate = false;
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "never";
      DisplayMenuBar = "never";
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      ExtensionUpdate = false;
      FirefoxHome = {
        Search = true;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        Stories = false;
        SponsoredPocket = false;
        SponsoredStories = false;
        Snippets = false;
        Locked = true;
      };
      FirefoxSuggest = {
        WebSuggestions = false;
        SponsoredSuggesions = false;
        ImproveSuggest = false;
        Locked = true;
      };
      Handler = {
        schemes = {
          mailTo = {
            action = "useHelperApp";
            ask = false;
            handlers = [{
              name = "Outlook";
              urlTemplate = outlookUrl;
            }];
          };
        };
      };
      Homepage = {
        URL = "https://vault.bitwarden.com/#/vault/";
        Locked = true;
        StartPage = "homepage-locked";
      };
      ManualAppUpdateOnly = true;
      NetworkPredicton = true;
      OfferToSaveLogins = false;
      OfferToSaveLoginsDefault = false;
      OverrideFirstRunPage = "";
      PasswordManagerEnabled = false;
      Preferences = {
        "browser.sessionstore.resume_from_crash" = false;
      };
      PDFjs = {
        Enabled = true;
        EnablePermissions = true;
      };
      PictureInPicture = {
        Enabled = false;
        Locked = true;
      };
      PopupBlocking = {
        Default = false;
        Locked = true;
      };
      PostQuantumKeyAgreementEnabled = true;
      PromptForDownloadLocation = false;
      SearchEngines = {
        PreventInstalls = true;
      };
      ShowHomeButton = false;
      SkipTermsOfUse = true;
      TranslateEnabled = false;
      UserMessaging = {
        ExtensionRecommendations = false;
        FeatureRecommendations = false;
        UrlbarInterventions = false;
        SkipOnboarding = false;
        MoreFromMozilla = false;
        FirefoxLabs = false;
        Locked = true;
      };
    };

    profiles.toepper = {
      bookmarks = {
        force = true;
        settings = [
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
          {
            name = "Git";
            url = "https://git-scm.com/docs/";
          }
          {
            name = "MDN";
            url = "https://developer.mozilla.org/";
          }
          {
            name = "TypeScript";
            url = "https://www.typescriptlang.org/docs/";
          }
          {
            name = "Playwright";
            url = "https://playwright.dev/docs/intro/";
          }
        ];
      };

      extensions.packages = with inputs.core.firefox-addons; [
        vimium
      ];
    };
  };
}

