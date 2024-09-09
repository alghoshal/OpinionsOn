#!/usr/bin/python
import sys
from time import sleep
from subprocess import Popen

sleepTimeSecs = 5
browser = "firefox"
profileName = "test"

mediaSources = [
    'https://timesofindia.indiatimes.com/topic/',  # TOI
    'https://www.timesnownews.com/searchresults?searchterm=',  # Times Now:
    'https://indianexpress.com/?s=',  # IE
    'https://www.indiatoday.in/topic/',  # India Today
    'https://www.wionews.com/search?q=',  # WION
    'https://www.ndtv.com/topic/',  # NDTV
    'https://www.thehindu.com/search/?q=',  # Hindu
    'https://www.hindustantimes.com/topic/',  # HT
    'https://theprint.in/?s=',  # Print
    'https://www.thequint.com/search?q=',  # Quint
    'https://www.theweek.in/search.html?q=',  # The Week
    'https://www.reuters.com/search/news?blob=',  # Reuters
    'https://www.bbc.co.uk/search?q=',  # BBC
    'https://www.reddit.com/search?q='  # Reddit
    # Wire: TODO: Fix me! Lacks queryable view, despite the api. 
    # Marathi Wire is fine. 
    # #'https://thewire.in/search
]

def openSource(source,topic):
    try:
        print('Looking up: '+source+'"'+topic+'"')
        browserProcess = Popen(browser+" -P "+profileName+" "+source+'"'+topic+'"',shell=True)
    except Error as e:
        sys.stderr.write("Error! " + e)

def main():
    args = sys.argv[1:]

    if not args:
        print('Please enter a topic to look up.')
        print('Usage: python op-on.py "<TOPIC>"')
        sys.exit(1)
    
    topic = args[0]
    
    print("Looking up info on: " + topic)
    
    for source in mediaSources:
        openSource(source,topic)
        sleep(sleepTimeSecs)
    

if __name__ == '__main__':
    main() 
