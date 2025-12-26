{ ... } @ inputs: {
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
          };
        };
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
            name = "Angular";
            url = "https://angular.dev/overview/";
          }
          {
            name = "Compodoc";
            url = "https://compodoc.app/guides/getting-started.html";
          }
          {
            name = "Faker";
            url = "https://fakerjs.dev/api/";
          }
          {
            name = "Git";
            url = "https://git-scm.com/docs/";
          }
          {
            name = "Localhost";
            url = "http://localhost:4200/";
          }
          {
            name = "MDN";
            url = "https://developer.mozilla.org/";
          }
          {
            name = "Module Federation";
            url = "https://module-federation.io/guide/start/index.html";
          }
          {
            name = "MSW";
            url = "https://mswjs.io/docs/";
          }
          {
            name = "MSW data";
            url = "https://github.com/mswjs/data/";
          }
          {
            name = "NGRX";
            url = "https://ngrx.io/docs/";
          }
          {
            name = "Node.js";
            url = "https://nodejs.org/docs/latest/api/";
          }
          {
            name = "npm";
            url = "https://docs.npmjs.com/";
          }
          {
            name = "Playwright";
            url = "https://playwright.dev/docs/";
          }
          {
            name = "pnpm";
            url = "https://pnpm.io/motivation/";
          }
          {
            name = "RxJS";
            url = "https://rxjs.dev/guide/overview/";
          }
          {
            name = "SCSS";
            url = "https://sass-lang.com/documentation/";
          }
          {
            name = "Tailwind";
            url = "https://tailwindcss.com/docs/";
          }
          {
            name = "TypeScript";
            url = "https://www.typescriptlang.org/docs/";
          }
          {
            name = "Vite";
            url = "https://vite.dev/config/";
          }
          {
            name = "Vitest";
            url = "https://vitest.dev/guide/";
          }
          {
            name = "Webpack";
            url = "https://webpack.js.org/concepts/";
          }
        ];
      };

      extensions.packages = with inputs.core.firefox-addons; [
        vimium
      ];
    };
  };
}

