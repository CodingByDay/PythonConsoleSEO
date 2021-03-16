# A python program for generating sitemap urls with web scrapping 
# General decription of the problem
# Need to parse a given url and find keywords related to a certain url and add them to an output file.
# Functional python programming. 2021 


## <url><loc>https://emmares.com/resultspage.html?q=Sports</loc><lastmod>2019-11-09T09:16:09+00:00</lastmod><changefreq>daily</changefreq><priority>0.85</priority></url>

## libraries needed: Beautiful Soup 4, os
from urllib.request import urlopen
from bs4 import BeautifulSoup
import re
import os
import nltk
from nltk.corpus import wordnet
import datetime
# Files = os.listdir("../pages") # Always position the program like this

# Function to find keywords
lastmod_date = datetime.datetime.now().strftime('%Y-%m-%d')
nltk.download('wordnet')
list_synonyms = []

word_in_title = []

def Findsynonyms(data):
    for syn in wordnet.synsets(data): 
        for lemm in syn.lemmas(): 
            list_synonyms.append(lemm.name())

links = []
directory = 'C:\inetpub\wwwroot\App_Data\pages'
realLinks = []

def main():
   # New line separator 
    number = 1
    words = []
    inputNumber = int(input("Hello. This is the beta version of the SEO console application.  What would you like to do? \n1.Generate XML links from a wordlist? \n2.Scrape a webpage to find keywords? \n3.Generate entire xml from urls.\n4.Update\n5.Make all thumbnails.\n6.Q u i t :(\nEnter here--------------------->"))

    if inputNumber == 1:
        wordlist = str(input("Now please choose a name of the wordlist textfile, without separators, just the place holder. \nEnter here--------------------->"))
        nameOfTheWordList = "Input\\" + wordlist + ".txt"
        
        L = open(nameOfTheWordList, "r").read().splitlines()

        for line in L: 

            words.append(line)
            print("Processing. Please wait." + " Current word: " + str(line) + str(number))
            number = number + 1
            
        print("Finished proccessing." +"\n Processed links:" + str(number))


        name = str(input("Now please choose a name of the output file, without separators, just the place holder. \nEnter here--------------------->"))
        try:
            nameOfFile = str("Output\\" + name + ".txt")
            file = open(nameOfFile, "x") # exslusive for creating failing if the file already exists
            for word in words:
               
                file.write(str("<url><loc>https://emmares.com/resultspage.html?q=" + word + "</loc><lastmod>" + lastmod_date + "</lastmod><changefreq>daily</changefreq><priority>0.85</priority></url>" + "\n"))
            file.close()   
            print("File created succesfully")
            main 
 
        except: 
            print("An error occured. File already exists") 
    


    elif inputNumber == 2:
        textWord = []
        targetUrlFile = str(input("Please enter the FQDN list name for processing.\nEnter here--------------------->"))
        keywordFile = str(input("Write the name of the output file. \nEnter here--------------------->"))
        print("Proccess started at" + str(datetime.datetime.now()))
        nameOfFile = str("Scraping\\" + targetUrlFile + ".txt")
        OpenURL = open(nameOfFile, "r").read().splitlines()

        for link in OpenURL:
            try:
                
                html = urlopen(link)
                bs = BeautifulSoup(html, 'html.parser')



                p = bs.find_all('p')
                title = bs.find_all('title')

        

                for paragraph in p:
                    textWord.append(paragraph.get_text)

                for word in title:
                    word_in_title.append(word.get_text)

                print("Processing")
                numberless = []
                withoutLong = []
                numberlessWord = []
                withoutLongWord = []
                for sentence in textWord:
                    rgx = re.compile("([\w][\w']*\w)")
                
                    result =  rgx.findall(str(sentence))       
                    for number in result:

                        numberless.append(re.sub(r'\b[0-9]+\b\s*', '', number))
                        # long word check

                    print(numberless)
                    for long in numberless:
                        withoutLong.append(re.sub(r'\W*\b\w{9, 100}\b', '', long))

                    
                for sentence in word_in_title:
                    rgx = re.compile("([\w][\w']*\w)")
                    
                    resultWord =  rgx.findall(str(sentence))       
                    for number in resultWord:

                        numberlessWord.append(re.sub(r'\b[0-9]+\b\s*', '', number))
                            # long word check

                    print(numberlessWord)
                    for long in numberlessWord:
                        withoutLongWord.append(re.sub(r'\W*\b\w{9, 100}\b', '', long))

                    print ("Success")

                    print("I started finding keywords...")

                    for syn in withoutLongWord:
                        Findsynonyms(str(syn))


                    # Final array of keywords   
                    # 
                    # 
                    #   
                    finalWordlist = set(list_synonyms)
                    print(finalWordlist)


                    print("Succesfully found the keywords")
                
                

                    nameOfFile = str("Input\\" + keywordFile + ".txt")
                    file = open(nameOfFile, "w") 
                    for word in finalWordlist:
                
                        file.write(str(word) + "\n")
                        
                        print("File created succesfully")
                
                    file.close()  
            except:
                continue       
        main()       



    elif inputNumber == 3:
        urlfile = str(input("Enter the name of the url file from the input folder.\nEnter here--------------------->"))
        path = str("Input\\" + urlfile + ".txt")
        OpenURLs = open(path, "r").read().splitlines()
        sitemapName = str(input("Enter the name of the final xml file\nEnter here--------------------->"))
        try:
            nameOfFile = str("xmls\\" + sitemapName + ".xml")
            file = open(nameOfFile, "x") # exslusive for creating failing if the file already exists
            file.write(str('''<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><url>
            <loc>https://emmares.com/</loc>
            <lastmod>2019-06-10T12:08:55+00:00</lastmod>
            <priority>1.00</priority>
            </url>
            <url>
            <loc>https://emmares.com/Account/Login</loc>
            <lastmod>2019-06-14T06:49:51+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/Account/Register</loc>
            <lastmod>2019-06-14T06:49:51+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=Business</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=Finance</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=News</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=Technology</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=Entertainment</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/resultspage.html?q=Sports</loc>
            <lastmod>2019-06-12T11:53:22+00:00</lastmod>
            <priority>0.80</priority>
            </url>
            <url>
            <loc>https://emmares.com/Account/ForgotPassword</loc>
            <lastmod>2019-06-14T06:49:51+00:00</lastmod>
            <priority>0.64</priority>
            </url>
            <url>
            <loc>https://emmares.com/searchpage.html</loc>
            <lastmod>2019-06-10T12:08:55+00:00</lastmod>
            <priority>0.64</priority>
            </url>''' + '\n'))
            for word in OpenURLs:
                file.write(str("<url><loc>https://emmares.com/resultspage.html?q=" + word + "</loc><lastmod>" + lastmod_date + "</lastmod><changefreq>daily</changefreq><priority>0.85</priority></url>" + "\n"))
            file.write('\n')
            file.write("</urlset>")    
            file.close()   
            print("File created succesfully")
            main 
 
        except: 
            print("An error occured.")
            inputNumber == 3 
    


          
           
    elif inputNumber == 4:
        urlfile = str(input("What is the name of the final file?"))
        path = str("Scraping\\" + urlfile + ".txt")
        file = open(path, "w")

        for filename in os.listdir(directory):
            print(filename)
            links.append(filename)
     
            tempRegedit = filename.replace(".html", "")
            temp = "https://emmares.com/SearchAPI/Get_File/" + tempRegedit
            realLinks.append(temp)
            print(temp)
        for link in realLinks:
            file.write(link)
            file.write("\n")
        file.close

    else:
        print("Uknown functionality... Try again.")
        main() 

if __name__ == "__main__":
    main()