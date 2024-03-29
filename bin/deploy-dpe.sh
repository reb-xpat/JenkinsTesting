#!/bin/sh

HOME_FOLDER="~dpe"
echo "params: $@"
while getopts ":p:jd:" opt; do
    case $opt in
        p )
            passkey=$OPTARG
            ;;

        j )
            HOME_FOLDER="~"
            ;;

        d )
            dry_run=" --dryrun"
            ;;

        \? )
            usage
            ;;

        : ) echo "ERROR: Invalid option: $OPTARG requires an argument" 1>&2
            usage
            ;;
    esac
done

#Verify Input: passkey
if [ "$passkey" = "" ]
   then
     echo "ERROR: Must provide a passkey"
fi
echo "Passkey = $passkey"