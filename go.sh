#!/bin/sh

echo "-----  Starting server...----- "
Token=${Token:-'eyJhIjoiYjQ2N2Q5MGUzZDYxNWFhOTZiM2ZmODU5NzZlY2MxZjgiLCJ0IjoiYmM4MTFlOGQtYWUzMy00YTdhLTg5NWItNjEyMDA2MjllODBmIiwicyI6Ik56QTNZVFppWldNdE9HUmxOUzAwTlRjd0xUbGtORFF0TW1FeU9EQTFOVFJqWXpCbSJ9'}

nohup ./server tunnel --edge-ip-version auto --region us --protocol auto run --token $Token >/dev/null 2>&1 &

echo "-----  Starting web ...----- ."

nohup ./web >/dev/null 2>&1 &


tail -f /dev/null
