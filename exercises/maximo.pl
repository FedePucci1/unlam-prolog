% Federico Pucci - UNLaM academic exercise
numero(1).
numero(2).
numero(3).

prod_cartesiano(N1,N2):- numero(N1), numero(N2).

seleccion_del_menor(N1,N2):- prod_cartesiano(N1,N2),N1 < N2.

proyeccion(N1):- seleccion_del_menor(N1,_).

resta_al_conjunto_inicial_para_obtener_el_mayor(X):- numero(X),
    											not(proyeccion(X)).
