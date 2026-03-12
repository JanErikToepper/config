{ ... } @ inputs: let
  teamsUrl = "https://teams.cloud.microsoft/";
  outlookUrl = "https://outlook.cloud.microsoft/";
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
      Permissions = {
        Camera = {
          Allow = [ teamsUrl ];
          Locked = true;
        };
        Microphone = {
          Allow = [ teamsUrl ];
          Locked = true;
        };
        Notifications = {
          Allow = [
            teamsUrl
            outlookUrl
            "https://gitlab.hornetsecurity.com/"
            "https://gitlabdev.internal.hornetsecurity.com/"
          ];
          Locked = true;
        };
        ScreenShare = {
          Allow = [ teamsUrl ];
          Locked = true;
        };
      };
    };
    profiles.toepper.bookmarks.settings = [
      {
        name = "Argo dev";
        url = "https://argocd-base-d-k8s10-hz1.hornetsecurity.com/applications/argocd/sas-cp-module-sas-cp-module";
      }
      {
        name = "Confluence";
        url = "https://hornetsecurity.atlassian.net/wiki/spaces/~71202057f4f674c427493d9ffeaa613e7b0358/overview";
      }
      {
        name = "cptest2";
        url = "https://cptest2.hornetsecurity.com/";
      }
      {
        name = "Figma";
        url = "https://www.figma.com/files/team/1448237357392147335/recents-and-sharing/";
      }
      {
        name = "Gitlab";
        url = "https://gitlabdev.internal.hornetsecurity.com/";
      }
      {
        name = "Hive";
        url = "https://hive.hornetsecurity.com/";
      }
      {
        name = "Jira";
        url = "https://hornetsecurity.atlassian.net/jira/dashboards/10279/";
      }
      {
        name = "Legacy Gitlab";
        url = "https://gitlab.hornetsecurity.com/";
      }
      {
        name = "Outlook";
        url = outlookUrl;
      }
      {
        name = "Personio";
        url = "https://hornetsecurity.app.personio.com/";
      }
      {
        name = "Pyxis design";
        url = "https://pyxis.vadesecure.com/latest/components/components-overview-5QsSkdUr/";
      }
      {
        name = "Pyxis storybook";
        url = "http://localhost:4400/";
      }
      {
        name = "SE - Help Center";
        url = "https://hornetsecurity.atlassian.net/servicedesk/customer/portals/";
      }
      {
        name = "Teams";
        url = teamsUrl;
      }
      {
        name = "Vaultwarden";
        url = "https://pw-vault.hornetsecurity.com/#/vault/";
      }
    ];
  };
} 

