{ ... } @ inputs: {
  services.cron = {
    enable = true;
    mailto = "";
    systemCronJobs = [
      "@reboot root /run/current-system/sw/bin/docker system prune --force"
    ];
  };
}

