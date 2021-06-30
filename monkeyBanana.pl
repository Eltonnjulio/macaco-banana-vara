%estado(posição horizontal macaco,posição vertical macaco,posição cadeira,possui vara,possui banana)

%acção para pegar banana
movimento(
    estado(centro,emCimaCadeira,centro,comVara,semBanana),
    pegarBanana,
    estado(centro,emCimaCadeira,centro,comVara,comBanana)).

%acção para pegar a vara
movimento(
    estado(P,emCimaCadeira,P,semVara,H),
    pegarVara,
    estado(P,emCimaCadeira,P,comVara,H)).


%acção para subir na cadeira
movimento(
    estado(P,noChao,P,Vara,H),
    subirCadeira,
    estado(P,emCimaCadeira,P,Vara,H)).

%acção para empurrar a cadeira
movimento(
    estado(P1,noChao,P1,Vara,H),
    empurrar(P1,P2),
    estado(P2,noChao,P2,Vara,H)).


%acção para caminhar
movimento(
    estado(P1,noChao,B,Vara,H),
    caminhar(P1,P2),
    estado(P2,noChao,B,Vara,H)).

conseguir(estado(_,_,_,comVara,comBanana)).

conseguir(Estado1):-moviento(Estado1,_,Estado2),conseguir(Estado2).
