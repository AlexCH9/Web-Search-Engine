Main purpose of the project:
  Search the name of university teacher and the web application will show to the user the daily program of that teacher. Besides that, you can search different words and the application will show different sites assigned of that searched words.

Runing:

 (1) Before running the app, first must to install the requirements which are found in "requirements.txt". 
    - Write in the porject terminal the command: pip install -r requirements.txt


 (2) After running the project, the user has a search bar where can use different words from "Cuvinte_Cheie.txt" to find differents sites or 
 the name of different university teachers to see their daily program. If searched words aren't on "Cuvinte_Cheie.txt" the user will see a popup which will warning him that no results can be found for that search because in "database.json" are different sites assigned to different words from "Cuvinte_Cheie.txt".

  Important: 
    The app has register sistem that will save data in "Conturi.json" file and use it with log in sistem to connect the users into their accounts.
    After this, the user has permission to see the daily program of university teachers. If isn't connected on his account, the user will see
    a popup which will warning the user to log in. If the name of univeristy teacher aren't in "Cuvinte_Cheie.txt", the user will see a popup which will warning him that no results can be found for that search.
  
    
