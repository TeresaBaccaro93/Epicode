.. code:: ipython3

    #Esercizio 1
    nome_scuola = "Epicode"
    indice = 0 #inizializzazione
    
    while indice < len(nome_scuola):#condizione
        print(nome_scuola[indice])
        indice += 1 #aggiornamento


.. parsed-literal::

    E
    p
    i
    c
    o
    d
    e
    

.. code:: ipython3

    #Esercizio 2
    numero=0 #inizializzazione
    while numero<=20: #condizione
        print(numero)
        numero +=1 #aggiornamento
    


.. parsed-literal::

    0
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    

.. code:: ipython3

    #Esercizio 3
    n=0
    potenza=1 #inizializzazione
    while n < 10: #condizione
        print(f"2^{n} = {potenza}")
        n += 1
        potenza *= 2 #aggiornamento


.. parsed-literal::

    2^0 = 1
    2^1 = 2
    2^2 = 4
    2^3 = 8
    2^4 = 16
    2^5 = 32
    2^6 = 64
    2^7 = 128
    2^8 = 256
    2^9 = 512
    

.. code:: ipython3

    #Esercizio 4
    N=int(input("Inserisci il numero N: "))
    potenza = 1 #inizializziamo
    contatore = 0
    while contatore < N: #condizione
        print(f"2^{contatore} = {potenza}")
        potenza *= 2  # Aggiorniamo la potenza successiva
        contatore += 1
    


.. parsed-literal::

    Inserisci il numero N:  3
    

.. parsed-literal::

    2^0 = 1
    2^1 = 2
    2^2 = 4
    

.. code:: ipython3

    #Esercizio 5
    esponente = 0
    while 2 ** esponente < 25000:
        potenza = 2 ** esponente
        print(potenza)
        esponente = esponente + 1
       


.. parsed-literal::

    1
    2
    4
    8
    16
    32
    64
    128
    256
    512
    1024
    2048
    4096
    8192
    16384
    

.. code:: ipython3

    #Esercizio 6
    stringa=input("Inserisci una stringa:")
    lunghezza=len(stringa)
    if lunghezza <= 6:
        risultato = stringa[:3] + "..." + stringa[-3:]
    elif lunghezza <= 3:
         risultato = stringa
    else:
     risultato = stringa
    print(risultato)


.. parsed-literal::

    Inserisci una stringa: Nome
    

.. parsed-literal::

    Nom...ome
    

.. code:: ipython3

    #Esercizio 7
    N= int(input("Inserisci un numero"))
    divisore =2
    while N>1:
        while N%divisore==0:
            print(divisore)
            N=N//divisore
        divisore=divisore+1


.. parsed-literal::

    Inserisci un numero 150
    

.. parsed-literal::

    2
    3
    5
    5
    

.. code:: ipython3

    #Esercizio 8
    nome_scuola = "Epicode"
    for carattere in nome_scuola:
        print(carattere) #Stampare ogni carattere della stringa, uno su ogni riga, utilizzando un costrutto for


.. parsed-literal::

    E
    p
    i
    c
    o
    d
    e
    

.. code:: ipython3

    #Esercizio 9
    for esponente in range(10):
        potenza = 2 ** esponente
        print(potenza)


.. parsed-literal::

    1
    2
    4
    8
    16
    32
    64
    128
    256
    512
    

.. code:: ipython3

    #Esercizio 10
    #Versione con while
    K = int(input("Inserisci il valore di K: "))
    N = int(input("Inserisci il numero di potenze da calcolare (N): "))
    potenze = []
    i = 0
    while i < N:
        potenza = K ** i
        potenze.append(potenza)
        i += 1
        print("Le prime", N, "potenze di", K, "sono:", potenze)
    #Versione con for
    K = int(input("Inserisci il valore di K: "))
    N = int(input("Inserisci il numero di potenze da calcolare (N): "))
    potenze = []
    for i in range(N):
        potenza = K ** i
        potenze.append(potenza)
        print("Le prime", N, "potenze di", K, "sono:", potenze)
        


.. parsed-literal::

    Inserisci il valore di K:  10
    Inserisci il numero di potenze da calcolare (N):  5
    

.. parsed-literal::

    Le prime 5 potenze di 10 sono: [1]
    Le prime 5 potenze di 10 sono: [1, 10]
    Le prime 5 potenze di 10 sono: [1, 10, 100]
    Le prime 5 potenze di 10 sono: [1, 10, 100, 1000]
    Le prime 5 potenze di 10 sono: [1, 10, 100, 1000, 10000]
    

.. parsed-literal::

    Inserisci il valore di K:  3
    Inserisci il numero di potenze da calcolare (N):  4
    

.. parsed-literal::

    Le prime 4 potenze di 3 sono: [1]
    Le prime 4 potenze di 3 sono: [1, 3]
    Le prime 4 potenze di 3 sono: [1, 3, 9]
    Le prime 4 potenze di 3 sono: [1, 3, 9, 27]
    

.. code:: ipython3

    #Esercio 11
    guadagni = [100, 90, 70, 40, 50, 80, 90, 120, 80, 20, 50, 50]
    somma = 0
    
    for guadagno in guadagni:
        somma += guadagno
    
    media = somma / len(guadagni)
    print("La media dei guadagni è:", media)
    
    


.. parsed-literal::

    La media dei guadagni è: 70.0
    

.. code:: ipython3

    #Esercizio 12 
    parole = ["Albergo", "Sedia", "Borgo", "Petalo", "Eremo", "Belvedere", "Semestre", "Esteta", "Sosta", "Orpello", "Abete", "Orologio", "Cesta", "Ermellino"]
    conteggi = []
    for parola in parole:
        conteggio_e = parola.lower().count('e')
        conteggi.append((parola, conteggio_e))
        conteggi_ordinate = sorted(conteggi)
    
    for parola, conta in conteggi_ordinate:
        print(f"{parola}: {conta} volte la lettera 'e'")
        
    


.. parsed-literal::

    Abete: 2 volte la lettera 'e'
    Albergo: 1 volte la lettera 'e'
    Belvedere: 4 volte la lettera 'e'
    Borgo: 0 volte la lettera 'e'
    Cesta: 1 volte la lettera 'e'
    Eremo: 2 volte la lettera 'e'
    Ermellino: 2 volte la lettera 'e'
    Esteta: 2 volte la lettera 'e'
    Orologio: 0 volte la lettera 'e'
    Orpello: 1 volte la lettera 'e'
    Petalo: 1 volte la lettera 'e'
    Sedia: 1 volte la lettera 'e'
    Semestre: 3 volte la lettera 'e'
    Sosta: 0 volte la lettera 'e'
    

.. code:: ipython3

    #Esercizio 13 pagina 14 sui Dizionari
    auto_proprietari={
        'Ada':'Punto',
        'Ben':'Multipla',
        'Charlie':'Golf',
        'Debbie':'107'
    } #Creo un dizionario che assegni ad ogni proprietario la sua auto
    print(auto_proprietari) #Stampo il dizionario per intero
    print(auto_proprietari['Debbie']) #stampo l'auto associata a Debbie
        

.. code:: ipython3

    dizionario_auto={ 
        'Ada':'Punto',
        'Ben':'Multipla',
        'Charlie':'Golf',
        'Debbie':'107'
    }     
    for auto in dizionario_auto.values():
        if auto !='Multipla':
            print(auto) #Stampo tutte le auto che non sono una Multipla
    

.. code:: ipython3

    dizionario_auto={ 
        'Ada':'Punto',
        'Ben':'Multipla',
        'Charlie':'Golf',
        'Debbie':'107',
        'Emily':'A1'
    }
    nuovi_proprietari={
        'Ben':'Polo',
        'Fred':'Octavia',
        'Grace':'Yaris',
        'Hugh':'Clio'
    }
    dizionario_auto.update(nuovi_proprietari) #Aggiornare il dizionario
    print(dizionario_auto)

