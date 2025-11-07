{ ... } @ inputs: let
  outlookUrl = "https://outlook.office.com/mail/0/";
in {
  programs.firefox = {
    policies = {
      Homepage = {
        URL = "https://pw-vault.hornetsecurity.com/#/vault/";
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
        name = "Vaultwarden";
        url = "https://pw-vault.hornetsecurity.com/#/vault/";
      }
      {
        name = "Personio";
        url = "https://hornetsecurity.app.personio.com/";
      }
      {
        name = "Hive";
        url = "https://hive.hornetsecurity.com/";
      }
      {
        name = "Teams";
        url = "https://teams.microsoft.com/v2/";
      }
      {
        name = "Outlook";
        url = outlookUrl;
      }
      {
        name = "Jira";
        url = "https://hornetsecurity.atlassian.net/jira/dashboards/10279/";
      }
      {
        name = "Confluence";
        url = "https://hornetsecurity.atlassian.net/wiki/spaces/~71202057f4f674c427493d9ffeaa613e7b0358/overview";
      }
      {
        name = "Gitlab";
        url = "https://gitlab.hornetsecurity.com/";
      }
      {
        name = "Gitlab - Internal";
        url = "https://gitlabdev.internal.hornetsecurity.com/";
      }
      {
        name = "Pyxis - Design System";
        url = "https://pyxis.vadesecure.com/latest/components/components-overview-5QsSkdUr/";
      }
      {
        name = "Pyxis - Storybook";
        url = "http://pyxis.pages.internal.vadesecure.io/pyxis/angular/";
      }
      {
        name = "Cptest 2";
        url = "https://cptest2.hornetsecurity.com/";
      }
      {
        name = "SE - Help Center";
        url = "https://hornetsecurity.atlassian.net/servicedesk/customer/portals/";
      }
    ];
  };
} 

