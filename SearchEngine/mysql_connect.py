
from flask import request

import mysql.connector


def orar(nume_profesor):
    # Conexiunea la baza de date mysql
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="alex",
        database="DateProfesori"
    )

    cursor = connection.cursor()


    # Cautarea in baza de date informatiile despre profesorul dorit
    query = """
    SELECT p.nume AS Profesor, p.email AS Email, m.nume_materie AS Materie, l.nume_laborator AS Laborator, l.cladirea AS Cladirea, o.ora_inceput, o.ora_sfarsit, o.ziua
    FROM Orar o
    JOIN Profesori p ON o.id_profesor = p.id_profesor
    JOIN Materii m ON o.id_materie = m.id_materie
    JOIN Laboratoare l ON o.id_laborator = l.id_laborator
    WHERE p.nume = %s;
    """
    cursor.execute(query,(nume_profesor,))
    rezultate = cursor.fetchall()

    cursor.close()
    connection.close()
    return rezultate


