if [[ -z $1 ]]; then
   echo "Usage: ./deleteKnownHostEntry.sh lineNumber"
   exit
fi
sed -e "${1}d" ~/.ssh/known_hosts