{ pkgs , ... }:
{
  systemd.user.services.rclone-gdrive-mount = {
    Unit = {
      Description = "Service that connects to Google Drive";
#      After = [ "network-online.target" ];
#      Requires = [ "network-online.target" ];
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
    
    Service = let
      gdriveDirrufumaru = "/home/fuma/Gdrive/rufumaru";
      in
      {
        Type = "simple";
        ExecStartPre = "/run/current-system/sw/bin/mkdir -p ${gdriveDirrufumaru}";
        ExecStart = "${pkgs.rclone}/bin/rclone mount --vfs-cache-mode full rufumaru: ${gdriveDirrufumaru}";
        ExecStop = "/run/current-system/sw/bin/fusermount -u ${gdriveDirrufumaru}";
        Restart = "on-failure";
        RestartSec = "10s";
        Environment = [ "PATH=/run/wrappers/bin/:$PATH" ];
      
      };
    };
}
