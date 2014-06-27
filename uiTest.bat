echo off
rem Clear out screen
cls
echo "### Running JMeter performance test ###"

echo "### Clear out old results ###"
del %WORKSPACE%\UI-script\results\jmeter.jtl

echo "## Running the tests"
cd /d %WORKSPACE%\UI-script

jmeter -n -t Web-Driver-Sampler-chrome-v4.jmx -l.\results\jmeter.jtl -JUSERS=5 -JLOOP=5 -JDURATION=30 -JHOSTNAME=srwe05

cd Y:\Prapunja\Workspace\UI-script
rem Y:\Prapunja\Workspace\UI-script>D:\prapunja\browsermob-proxy-2.0-beta-9-bin\browsermob-proxy-2.0-beta-9\bin\browsermob-proxy.bat -port 9090