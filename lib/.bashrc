brew install sshpass 

function ssh() {
  ip="$(lookup_ip "$1")"
  echo "IP1 address: $ip"

  if [[ -n "$ip"  ]]; then
        command sshpass -p 'PASSWORD' ssh -o StrictHostKeyChecking=no root@$ip        
  else
        command ssh "$@"
  fi
}

lookup_ip() {
    local name="$1"
    awk -v key="$name" '$1 == key { print $2 }' ip.txt
}

