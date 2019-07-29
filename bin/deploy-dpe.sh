#!/bin/sh

HOME_FOLDER="~dpe"

while getopts "pjd:" opt; do
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
     usage
fi
echo "Passkey = $passkey"