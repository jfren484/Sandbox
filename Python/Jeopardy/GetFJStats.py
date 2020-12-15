from lxml import html
import requests
import re

def getEpisode(seasonName, epNum, epDate, epLink):
    #if not epLink.startswith('http://www.j-archive.com/'):
    #    epLink += 'http://www.j-archive.com/'

    page = requests.get(epLink)
    tree = html.fromstring(page.content)
    scoreText = tree.xpath('//*[@id="final_jeopardy_round"]/table[2]/tr[2]/td/text()')
    numScores = map(lambda s: re.sub(r"\D", "", s), scoreText)
    scores = '\t'.join(list(numScores))

    print(f"{seasonName}\t{epNum}\t{epDate}\t{scores}")
    
    return

epRE = re.compile(r'^(.*)#(\d+),\saired\s([0-9\-]+)')

def getSeason(seasonName, seasonLink):
    page = requests.get('http://www.j-archive.com/' + seasonLink)
    tree = html.fromstring(page.content)
    links = tree.xpath('//div[@id="content"]/table/tr/td[1]/a')

    for link in links:
        linkText = link.text_content() 
        m = epRE.match(linkText)
        getEpisode(seasonName, m.group(2), m.group(3), link.get('href'))

    return

page = requests.get('http://www.j-archive.com/listseasons.php')
tree = html.fromstring(page.content)
links = tree.xpath('//div[@id="content"]/table/tr/td[1]/a')

for link in links[33:]:
    getSeason(link.text_content(), link.get('href'))
