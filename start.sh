# !/bin/bash

nice -n 20 screen -dmS MW ./ModWire
echo "Hey if you're running this manually and not as a service, you can go ahead and just ctrl+c this script and the server will continue to run!"
while screen -list | grep -q MW
do
    sleep 300
done
ExitCode=`cat .exit`
exit $ExitCode
