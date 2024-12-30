{
  xdg.mimeApps = {
    enable = true;
    associations.added = {
	"application/pdf" = ["org.gnome.Evince.desktop"];
	"inode/directory"= ["nemo.desktop"]; 
	"x-scheme-handler/http" = ["zen.desktop"];
    	"x-scheme-handler/https" = ["zen.desktop"];
	"x-scheme-handler/chrome"= ["zen.desktop"];
  	"text/html" = ["zen.desktop"];
	"application/x-extension-htm" = ["zen.desktop"];
	"application/x-extension-html" = ["zen.desktop"];
	"application/x-extension-shtml" = ["zen.desktop"];
	"application/xhtml+xml" = ["zen.desktop"];
	"application/x-extension-xhtml" = ["zen.desktop"];
	"application/x-extension-xht"= ["zen.desktop"];
   };
	
    defaultApplications = {

	"inode/directory" = ["nemo.desktop"];
	"x-scheme-handler/http" = ["zen.desktop"];
	"x-scheme-handler/https" = ["zen.desktop"];
	"x-scheme-handler/chrome"= ["zen.desktop"];
	"text/html" = ["zen.desktop"];
	"application/x-extension-htm" = ["zen.desktop"];
        "application/x-extension-html" = ["zen.desktop"];
        "application/x-extension-shtml" = ["zen.desktop"];
        "application/xhtml+xml" = ["zen.desktop"];
        "application/x-extension-xhtml" = ["zen.desktop"];
        "application/x-extension-xht"= ["zen.desktop"];
	};
  };
}
