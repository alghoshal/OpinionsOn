## Opinions/buzz on a topic across a 
## set of media agencies (of repute). 
## For a curious human reader.
## 
## Usage: ./op-on.sh "<TOPIC>"
## 

topic=$1
sleepTimeSecs=5s
browser=firefox
profileName="test"

if [ -z ""$topic"" ]
then
	echo 'Please enter a topic to look up.' 
	echo 'Usage: ./op-on.sh "<TOPIC>"' 
	exit 1
fi

echo "Looking up info on: "$topic""

# TOI
$browser -P $profileName https://timesofindia.indiatimes.com/topic/"$topic"&

# Times Now:
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.timesnownews.com/searchresults?searchterm="$topic"&

# IE
sleep $sleepTimeSecs; 
$browser -P $profileName https://indianexpress.com/?s="$topic"&

# India Today
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.indiatoday.in/topic/"$topic"&

# WION
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.wionews.com/search?q="$topic"&

# NDTV
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.ndtv.com/topic/"$topic"&

# Hindu
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.thehindu.com/search/?q="$topic"&

# HT
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.hindustantimes.com/topic/"$topic"&

# Wire: TODO: Fix me! Lacks queryable view, despite the api. 
# Marathi Wire is fine. 
#sleep $sleepTimeSecs; 
#$browser -P $profileName https://thewire.in/search&

# Print
sleep $sleepTimeSecs; 
$browser -P $profileName https://theprint.in/?s="$topic"&

# Quint
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.thequint.com/search?q="$topic"&

# The Week
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.theweek.in/search.html?q="$topic"&

# Reuters
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.reuters.com/search/news?blob="$topic"&

# BBC
sleep $sleepTimeSecs; 
$browser -P $profileName https://www.bbc.co.uk/search?q="$topic"&

# Reddit
sleep $sleepTimeSecs;
$browser -P $profileName https://www.reddit.com/search?q="$topic"&

