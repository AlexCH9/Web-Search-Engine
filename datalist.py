from urllib.parse import urlparse
from flask import request
import json


# fisier = 'userslist.json'
fisier = 'Conturi.json'

vector = []
# with open(fisier, "r") as r:
#     temp = json.load(r)
# vector.append(temp)
#==========================================================================
#                   Functia de cautarea site-urilor in functie de cuvantul/enuntul cheie
#==========================================================================
def linkurile():
    global valoare
    vector2 = []
    searchedtxt = request.form.get('interogare')
    vector2.append({searchedtxt})

    search_results = []

    f = open('database.json')
    listalinks= json.load(f)
    for cod in listalinks:

        if cod['text'] == searchedtxt:
            print("searched text: ", searchedtxt)

            for index in range(0,10):
                # for index2 in range(0,5):
                data = dict()
                # data['title'] = 'google'
                data['url'] = cod['links'][index]       # Aici preiau link-urile pe rand din json file
                NumeSite = urlparse(data['url'])        # Aici impart linkul in bucati

                # print("links:", cod['links'][index])
                data['title'] = NumeSite.hostname           # Prin comanda .hostname preiau doar numele site-ului
                search_results.append(data)

            break
        if  searchedtxt != cod['text']:
                valoare = 1

    f.close()
    if valoare == 1:
        data = dict()
        data['title'] = 'Nu s-au mai găsit rezultate'
        search_results.append(data)
    return search_results

#==========================================================================
#         INREGISTRAREA unui nou utilizator in baza de date json
#==========================================================================

# https: // www.geeksforgeeks.org / read - json - file - using - python /
# https: // javascript.info / json
# https: // stackoverflow.com / questions / 21832701 / does - json - syntax - allow - duplicate - keys - in -an - object
# https: // www.youtube.com / results?search_query = json + python
def dataUsers():
    # with open(fisier, "w") as r:
    #     json.dump(vector, r, indent=4)
    lista = {}
    with open(fisier, "r") as c:
        temp = json.load(c)
    lista['email'] = request.form.get('email')
    lista['name'] = request.form.get('name')
    lista['password'] = request.form.get('password')
    temp.append(lista)
    vector.append(lista)
    with open(fisier, "w") as c:
        json.dump(temp, c, indent=4)


