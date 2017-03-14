#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
usage (){
    echo "";
    echo "countly remove_user <username> <password>";
} 

if [ -z "$1" ] && [ -z "$2" ]
then
    usage ;
else
    nodejs $DIR/user_mgmt.js delete $1 $2 ;
fi