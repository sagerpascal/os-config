def cconn() {
    select endpoint in APU-160.85.252.38 APU-160.85.253.235 dgx dgx2 dgx3 dgx-a100 dgx-admin dgx2-admin dgx3-admin dgx-a100-admin ceph01-admin ceph02-admin ceph03-admin
    do
        echo "connecting to $endpoint..."
        if [[ $REPLY -eq 1 ]]
        then
            ssh apu2038
	    break
	elif [[ $REPLY -eq 2 ]]
        then
            ssh apu3235
            break
        elif [[ $REPLY -eq 3 ]]
        then
            ssh dgx
            break
        elif [[ $REPLY -eq 4 ]]
        then
            ssh dgx2
            break
        elif [[ $REPLY -eq 5 ]]
        then
            ssh dgx3
            break
	elif [[ $REPLY -eq 6 ]]
        then
            ssh dgxa100
            break
	elif [[ $REPLY -eq 7 ]]
        then
            ssh dgxadm
            break
        elif [[ $REPLY -eq 8 ]]
        then
            ssh dgx2adm
            break
        elif [[ $REPLY -eq 9 ]]
        then
            ssh dgx3adm
            break
	elif [[ $REPLY -eq 10 ]]
        then
            ssh dgxa100adm
            break
	elif [[ $REPLY -eq 11 ]]
        then
            ssh ceph01
            break 
	elif [[ $REPLY -eq 12 ]]
        then
            ssh ceph02
            break
	elif [[ $REPLY -eq 13 ]]
        then
            ssh ceph03
            break
       else
            echo "Error in function (not found function $REPLY)"
            break
        fi
    done
}
