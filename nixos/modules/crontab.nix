{

  # Enable cron service
  services.cron = {
    enable = true;
    systemCronJobs = [
     @reboot rclone mount rufumaru: $HOME/Gdrive/rufumaru
    ];
  };


}


