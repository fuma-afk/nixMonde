#   ____ _ _       _     _     _    
#  / ___| (_)_ __ | |__ (_)___| |_  
# | |   | | | '_ \| '_ \| / __| __| 
# | |___| | | |_) | | | | \__ \ |_  
#  \____|_|_| .__/|_| |_|_|___/\__| 
#           |_|                     
#  

case $1 in
    d) kitty --class clipse -e 'clipse' -clear-text &
       ;;

    w) kitty --class clipse -e 'clipse' -clear-all &
       ;;

    *) kitty --class clipse -e 'clipse'
       ;;
esac

