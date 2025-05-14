let popup = document.getElementById("mypopup");
let mesajPopup = document.getElementById("mesajPopup"); //salvez in variabila "mesajPopup" elementele pentru id-ul "mesajPopup" din html

const cuvinte_cheie = ['css', 'html', 'javascript', 'senzori msp430fr2355', 'componente arduino', 'facultatea ieeia','how can i use json in python', 'python','Cristian Fosalau', 'Alina Baciu', ,'Asiminicesei Oana-Maria', 'Marius Branzila', 'Cristian Zet','Costel Eduard Lunca','Catalin Damian','Alexandru Florentin Trandabat','Marius Valerian Paulet','Silviu Ionut Ursache','Danut Constantin Irimia',
'Sticea Daniel Adrian','Anamaria Hariton','Bogdan Virlan','Alin Dragomir','Andrusca Mihai','Elena Serea','Vasile Horga','Daniel Petrisor','Asiminicesei Oana-Maria','Leonard Livadaru','Gheorghe Grigoras','Marcel Istrate','Bogdan Neagu','Nituca Costica','Olga Plopa','Ciprian Nemes','Maricel Adam','Marian Poboroniuc','Adrian Munteanu','Razvan Beniuga','Mihai Gavrilas',
'Georgel Paicu','Mihaela Aradoaei','Monica-Dana Burlica','Silviu-Constantin Vornicu','Ramona Simionescu','Oana Tarniceriu','Ovidiu Ivanov','Vlad Scarlatache','Vlad Scarlatache','Ursan George-Andrei','Marius Olariu','Sebastian Aradoaei','Dragos Machidon','Florina Scarlatache','Florin Baiceanu','Donciu Codrin'];


const numeProfesor = ['Cristian Fosalau','Alina Baciu','Asiminicesei Oana-Maria', 'Marius Branzila', 'Cristian Zet','Costel Eduard Lunca','Catalin Damian','Alexandru Florentin Trandabat','Marius Valerian Paulet','Silviu Ionut Ursache','Danut Constantin Irimia',
'Sticea Daniel Adrian','Anamaria Hariton','Bogdan Virlan','Alin Dragomir','Andrusca Mihai','Elena Serea','Vasile Horga','Daniel Petrisor','Asiminicesei Oana-Maria','Leonard Livadaru','Gheorghe Grigoras','Marcel Istrate','Bogdan Neagu','Nituca Costica','Olga Plopa','Ciprian Nemes','Maricel Adam','Marian Poboroniuc','Adrian Munteanu','Razvan Beniuga','Mihai Gavrilas',
'Georgel Paicu','Mihaela Aradoaei','Monica-Dana Burlica','Silviu-Constantin Vornicu','Ramona Simionescu','Oana Tarniceriu','Ovidiu Ivanov','Vlad Scarlatache','Vlad Scarlatache','Ursan George-Andrei','Marius Olariu','Sebastian Aradoaei','Dragos Machidon','Florina Scarlatache','Florin Baiceanu','Donciu Codrin'];

function ValidareInput()
{
    const input = document.getElementById('interogare').value.trim();

// daca inputul se gaseste in ambele liste atunci se va afisa popup-ul cu o atentionare
    if((cuvinte_cheie.indexOf(input) === -1) && (numeProfesor.indexOf(input) === -1))
    {
        mesajPopup.textContent = "Nu exista rezultate pentru aceasta cautare";  // schimb mesajul daca inputul nu este in baza de date
        event.preventDefault(); // opreste trimiterea input-ului mai departe in cazul in care nu se gaseste in baza de date
        arataPopup();
    }
    else
    {
        ascundePopup();
    }

    // daca inputul se gaseste in ambele liste dar utilizatorul nu este conectat la cont, atunci nu se va afisa orarul profesorului
    if(((cuvinte_cheie.indexOf(input) !== -1) && (numeProfesor.indexOf(input) !== -1)) && logatt === false)
    {
        mesajPopup.textContent = "Conecteaza-ti contul pentru a avea acces la orarul profesorilor"; // schimb mesajul daca inputul este numele unui profesor din baza de date
        event.preventDefault(); // opreste trimiterea input-ului mai departe in cazul in care nu se gaseste in baza de date
        arataPopup();
    }

    // daca inputul se gaseste in ambele liste dar utilizatorul este conectat la cont, atunci se va afisa orarul profesorului
    if(((cuvinte_cheie.indexOf(input) !== -1) && (numeProfesor.indexOf(input) !== -1)) && logatt === true)
    {
            // opreste trimiterea input-ului mai departe in cazul in care nu se gaseste in baza de date
        ascundePopup();
    }


}

function arataPopup()
{
    popup.classList.add("open-popup");
}

function ascundePopup()
{
    popup.classList.remove("open-popup");
}