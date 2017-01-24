import re
import json
import sys

caps = "([A-Z])"
prefixes = "(Mr|St|Mrs|Ms|Dr)[.]"
suffixes = "(Inc|Ltd|Jr|Sr|Co)"
starters = "(Mr|Mrs|Ms|Dr|He\s|She\s|It\s|They\s|Their\s|Our\s|We\s|But\s|However\s|That\s|This\s|Wherever)"
acronyms = "([A-Z][.][A-Z][.](?:[A-Z][.])?)"
websites = "[.](com|net|org|io|gov)"


def split_into_sentences(filename):
    try:
        print('parsing...')

        text = open(filename, 'r').read()

        text = " " + text + "  "
        text = text.replace("\n", " ")
        text = re.sub(prefixes, "\\1<prd>", text)
        text = re.sub(websites, "<prd>\\1", text)
        if "Ph.D" in text: text = text.replace("Ph.D.", "Ph<prd>D<prd>")
        text = re.sub("\s" + caps + "[.] ", " \\1<prd> ", text)
        text = re.sub(acronyms + " " + starters, "\\1<stop> \\2", text)
        text = re.sub(caps + "[.]" + caps + "[.]" + caps + "[.]", "\\1<prd>\\2<prd>\\3<prd>", text)
        text = re.sub(caps + "[.]" + caps + "[.]", "\\1<prd>\\2<prd>", text)
        text = re.sub(" " + suffixes + "[.] " + starters, " \\1<stop> \\2", text)
        text = re.sub(" " + suffixes + "[.]", " \\1<prd>", text)
        text = re.sub(" " + caps + "[.]", " \\1<prd>", text)
        if "”" in text: text = text.replace(".”", "”.")
        if "\"" in text: text = text.replace(".\"", "\".")
        if "!" in text: text = text.replace("!\"", "\"!")
        if "?" in text: text = text.replace("?\"", "\"?")
        text = text.replace(".", ".<stop>")

        text = re.sub(r"\band\b", "and<stop>", text)
        text = re.sub(r"\bas\b", "as<stop>", text)
        text = re.sub(r"\bbecause\b", "because<stop>", text)
        text = re.sub(r"\bbut\b", "but<stop>", text)
        text = re.sub(r"\bfor\b", "for<stop>", text)
        text = re.sub(r"\bjust as\b", "just as<stop>", text)
        text = re.sub(r"\bor\b", "or<stop>", text)
        text = re.sub(r"\bneither\b", "neither<stop>", text)
        text = re.sub(r"\bnor\b", "nor<stop>", text)
        text = re.sub(r"\bnot only\b", "not only<stop>", text)
        text = re.sub(r"\bso\b", "so<stop>", text)
        text = re.sub(r"\bwhether\b", "whether<stop>", text)

        text = text.replace("?", "?<stop>")
        text = text.replace("!", "!<stop>")
        text = text.replace("<prd>", ".")
        sentences = text.split("<stop>")
        sentences = sentences[:-1]
        sentences = [s.strip() for s in sentences]
        print('data written to "data.json"')
        json.dumps(sentences) if sentences != [] else None
        with open('sentences.txt', 'w') as outfile:
            json.dump(sentences, outfile)
    except Exception as e:
        print('an error occured:', e)

split_into_sentences("sample_text.txt")