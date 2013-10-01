#!/bin/bash


CURDIR=$(pwd)

#Starting the Java Application and retrieving its PID

cd /opt/NetApp/oncommand_system_manager/

java -jar /opt/NetApp/oncommand_system_manager/SystemManager.jar &

PID=$!

#To stop the Application at will, we open an dialog and kill the App by clicking OK

zenity --info --title "NetApp OnCommand Manager" --text "Nach beendigen der Arbeiten in der OnCommand-Console bitte Java durch einen Klick auf OK beenden."

kill $PID

cd $CURDIR
