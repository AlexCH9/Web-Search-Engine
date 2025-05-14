from flask import Flask
from flask import render_template, request, redirect, url_for

import json
from datalist import linkurile, dataUsers

from mysql_connect import orar
nr = False

text_existent = False
def create_app():

    app = Flask(__name__, template_folder='base/templates', static_folder='base/static')

    fisier = 'Conturi.json'

    vector = []
    # ==========================================================================
    #               Functia care face apel la meniul de LOGIN
    # ==========================================================================
    @app.route("/logare", methods = ['POST', 'GET'])
    def login():
        global nr
        global text_existent
        if request.method == 'POST':
            email = request.form.get('email')
            password = request.form.get('password')

            # ==========================================================================
            #         INREGISTRAREA unui nou utilizator in baza de date json
            # ==========================================================================

            # https: // www.geeksforgeeks.org / read - json - file - using - python /
            # https: // javascript.info / json
            # https: // stackoverflow.com / questions / 21832701 / does - json - syntax - allow - duplicate - keys - in -an - object
            # https: // www.youtube.com / results?search_query = json + python
            with open(fisier, "r") as r:
                temp = json.load(r)
            for cod in temp:
                if cod['email'] == email and cod['password'] == password:
                    print(cod['email'])
                    print(cod['password'])
                    print(cod['name'])
                    print("Logare cu succes")
                    nr = True
                    return redirect(url_for('interfata1'))


        return render_template("logare.html")
    # ==========================================================================
    #               Functia care face apel la meniul de INREGISTRARE
    # ==========================================================================
    @app.route("/inregistrare", methods = ['POST', 'GET'])
    def register():
        if request.method == 'POST':
            dataUsers()
            return redirect(url_for('interfata1'))
        return render_template("inregistrare.html")
    # ==========================================================================
    #               Functia care face apel la INTERFATA2, unde se vor afisa site-urile
    # ==========================================================================
    @app.route("/search", methods = ['POST', 'GET'])
    def search():
        global nr
        global text_existent
        # interogare = request.form['interogare'].lower()
        interogare = request.form['interogare'].strip().lower()

        cuvinte_cheie = ['senzori msp430fr2355', 'componente arduino', 'facultatea ieeia','how can i use json in python', 'python', 'javascript',
                         'css', 'html']

        if interogare in cuvinte_cheie:
            text_existent = True    # daca exista textul in fisierul json atunci variabila devina True
            search_results = linkurile()
            return render_template("interfata2.html",search_results = search_results, logat = nr)
        else:
            text_existent = False
            # return render_template("interfata2.html", logat=nr)
        #     rezultate = orar(interogare)
        #     return render_template('tabel_profesor.html', search_results=rezultate)

        rezultate = orar(interogare)
        if rezultate:
            if nr == True:
             return render_template('tabel_profesor.html', rezultate=rezultate)
            else:
                return render_template("interfata1.html", logat = nr)

        if text_existent == False:      # functie apelata atunci cand textul nu este gasit in memoria programului
            return render_template("interfata1.html", logat=nr)

    # ==========================================================================
    #               Functia de delogare a contului
    # ==========================================================================
    @app.route("/delogare", methods = ['POST', 'GET'])
    def delogare():
        global nr
        nr = False
        return redirect(url_for('interfata1'))

    # ==========================================================================
    #               Functia care face apel la pagina de HOME
    # ==========================================================================
    @app.route("/",methods = ['POST', 'GET'])
    def interfata1():
        global nr
        return render_template("interfata1.html", logat = nr)
    return app
