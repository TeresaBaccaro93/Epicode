.. code:: ipython3

    import os 
    import dotenv
    import sqlalchemy
    import pandas as pd
    
    dotenv.load_dotenv(dotenv_path="cred.env",override=True)
    
    os.getenv("username")




.. parsed-literal::

    'paster'



.. code:: ipython3

    #Esercizio 1
    #Può essere vista come una tabella dove le righe sono rappresentate dalle liste interne e le colonne dagli elementi all’interno di queste liste. 
    mat = [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9], [10, 11, 12, 13, 14]]
    elemento=mat[1][2]
    mat[1]
    mat[1][2]
    




.. parsed-literal::

    7



.. code:: ipython3

    #Esercizio 2
    import math 
    print(math.pi) #Usare pi 
    angolo_in_radianti=math.pi/2 
    seno=math.sin(angolo_in_radianti) #Calcolare il seno di 90 gradi in radianti
    coseno=math.cos(angolo_in_radianti) #Calcolare il coseno
    
    print(f"Seno di {angolo_in_radianti} radianti: {seno}") 
    print(f"Coseno di {angolo_in_radianti} radianti: {coseno}")
    
    numero = 5 #Calcolo del fattoriale di un numero
    fattoriale = math.factorial(numero)
    print(f"Fattoriale di {numero}: {fattoriale}")
    
    print(f"Valore di pi greco: {math.pi}")
    
    


.. parsed-literal::

    3.141592653589793
    Seno di 1.5707963267948966 radianti: 1.0
    Coseno di 1.5707963267948966 radianti: 6.123233995736766e-17
    Fattoriale di 5: 120
    Valore di pi greco: 3.141592653589793
    

.. code:: ipython3

    #Esercizio 3
    #Converte il valore di π (pi greco), che è in radianti, in gradi
    math.degrees(math.pi)
    help(math.degrees)
    


.. parsed-literal::

    Help on built-in function degrees in module math:
    
    degrees(x, /)
        Convert angle x from radians to degrees.
    
    

.. code:: ipython3

    #Esercizio 4
    import numpy as np
    lst = [2000, 5500, 7200, 4320, 1280, 1900, 2500, 3900, 6410, 8150, 7100, 5350]
    arr = np.array(lst) #Trasformo la lista in un array Numpy
    #Vendita massima mensile
    vendita_massima=arr.max()
    
    print("Vendita massima:",vendita_massima)
    #Vendita minima mensile
    vendita_minima=arr.min()
    
    print("Vendita minima:",vendita_minima)
    #Vendite maggiori di 4999
    vendite_maggiori_4999 = arr[arr > 4999]
    numero_vendite_maggiori_4999 = vendite_maggiori_4999.size
    
    print("Vendite maggiori di 4999:", vendite_maggiori_4999)
    print("Numero di vendite maggiori di 4999:", numero_vendite_maggiori_4999)
    #Vendite minori di 3000
    vendite_minori_3000 = arr[arr < 3000]
    
    print("Vendite minori di 3000:", vendite_minori_3000)
    


.. parsed-literal::

    Vendita massima: 8150
    Vendita minima: 1280
    Vendite maggiori di 4999: [5500 7200 6410 8150 7100 5350]
    Numero di vendite maggiori di 4999: 6
    Vendite minori di 3000: [2000 1280 1900 2500]
    

.. code:: ipython3

    #Esercizio 5
    fatturati_dict = {1997: 12_000, 1998: 15_000, 1999: 20_000, 2000: 23_000, 2001: 25_000, 2002: 17_000, 2003: 14_000, 2004: 21_000}
    fatturati_series = pd.Series([12_000, 15_000, 20_000, 23_000, 25_000, 17_000, 14_000, 21_000], index=range(1997, 2005))
    fatturati_dict[1997] #Per accedere al dizionario che ci da chiave:valore
    fatturati_series[1997] #Per accedere alle series di pandas colonna di dati con indice, più potente per analisi e manipolazioni.
    




.. parsed-literal::

    12000



.. code:: ipython3

    #Esercizio 6
    import numpy as np
    stipendi = np.array( [100, 200, 300, 400, 500,  600, 700, 800, 900, 1000] )
    #col ciclo for
    for i in range(len(stipendi)):
        stipendi[i] = stipendi[stipendy] * 2
    
    print(stipendi)
    #col masking
    stipendi = stipendi * 2
    
    print(stipendi)


.. parsed-literal::

    [2000 2000 2000 2000 2000 2000 2000 2000 2000 2000]
    [4000 4000 4000 4000 4000 4000 4000 4000 4000 4000]
    

