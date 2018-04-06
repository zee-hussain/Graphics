import re
from sys import argv
import string
from collections import Counter, defaultdict

def allwords():
	remove = string.punctuation
	pattern = r"[{}]".format(remove)

	f = open('Book.txt','r')
	allwords = open("allwords.txt","w")
	text = f.read()
	lines = text.lower()
	regex = re.compile('[%s]' % re.escape(string.punctuation))
	lines = ''.join(i for i in lines if not i.isdigit())
	lines = regex.sub('', lines)
	lines = lines.replace('“', '')
	lines = lines.replace('”','')
	lines = lines.replace('—','\n')
	lines = lines.replace('-','\n')
	for words in lines.split():
		allwords.write(words+'\n')
	allwords.close()

def uniquewords():
	remove = string.punctuation
	pattern = r"[{}]".format(remove)
	uniquewords = open("uniquewords.txt","w")
	with open('Book.txt', 'r') as f:
		text = str(f.read())
		lines = text.lower()
		regex = re.compile('[%s]' % re.escape(string.punctuation))
		lines = ''.join(i for i in lines if not i.isdigit())
		lines = regex.sub('', lines)
		lines = lines.replace('“', '')
		lines = lines.replace('”','')
		lines = lines.replace('—','\n')
		lines = lines.replace('-',' \n')
		new_lines = []
		for word in lines.split():
			if word not in new_lines:
				new_lines.append(word)
				uniquewords.write(word+'\n')
		uniquewords.close()

def frequency():
	remove = string.punctuation
	patern = r"[{}]".format(remove)
	f = open('Book.txt','r')
	word_frequency = open("wordfrequency.txt","w")
	text = f.read()
	lines = text.lower()
	regex = re.compile('[%s]' % re.escape(string.punctuation))
	lines = ''.join(i for i in lines if not i.isdigit())
	lines = regex.sub('', lines)
	lines = lines.replace('“', '')
	lines = lines.replace('”',' ')
	lines = lines.replace('’',' ')
	lines = lines.replace('‘','')
	lines = lines.replace('—',' ')
	lines = lines.replace('-',' ')
	lines = lines.split()

	frequency = Counter(lines)
	wordfrequency = defaultdict(list)

	for word, freq in Counter(lines).items():
		wordfrequency[freq].append(word)

	for freq in sorted(wordfrequency):
		word_frequency.write('{}: {}'.format(freq, len(sorted(wordfrequency[freq])))+ "\n")
	word_frequency.close()

def main():
	allwords()
	uniquewords()
	frequency()


main()
