%accao para pegar a banana
move(estado(centro,em_cima_cadeira,centro,nao_possui_vara,nao_possui_banana),
	  pegar_banana,
	  estado(centro,em_cima_cadeira,centro,possui_vara,possui)).

%accao de subir na cadeira
move(estado(P,no_chao,P,Vara,H),
	  subir_caixa,
	  estado(P,em_cima_cadeira,P,Vara,H)).

%Accao de empurrar a caixa
move(estado(P1,no_chao,P1,Vara,H),
	  push(P1,P2),
	  estado(P2,no_chao,P2,Vara,H)).

%accao de caminhar
move(estado(P1,no_chao,B,Vara,H),
	  caminhar(P1,P2),
	  estado(P2,no_chao,B,Vara,H)).
%accao para pegar a banana
move(estado(centro,em_cima_caixa,centro,nao_possui_vara,nao_possui_banana),
	  pegar_banana,
	  estado(centro,em_cima_caixa,centro,possui_vara,possui)).

%accao de subir na caixa
move(estado(P,no_chao,P,Vara,H),
	  subir_caixa,
	  estado(P,em_cima_caixa,P,Vara,H)).

%Accao de empurrar a caixa
move(estado(P1,no_chao,P1,Vara,H),
	  push(P1,P2),
	  estado(P2,no_chao,P2,Vara,H)).

%accao de caminhar
move(estado(P1,no_chao,B,Vara,H),
	  caminhar(P1,P2),
	  estado(P2,no_chao,B,Vara,H)).

move(estado(P1, no_chao,B,nao_possui_vara, nao_possui_banana),
	  pegar_vara,
	 estado(P1, no_chao,B,possui_vara, nao_possui_banana)).



conseguir(estado(_,_,_,possui_vara,possui)).
conseguir(Estado1) :- move(Estado1,_, Estado2) , conseguir(Estado2).

%accao de pegar a vara
move(estado(P1, no_chao,B,nao_possui_vara, nao_possui_banana),
	  pegar_vara,
	 estado(P1, no_chao,B,possui_vara, nao_possui_banana)).



conseguir(estado(_,_,_,possui_vara,possui)).
conseguir(Estado1) :- move(Estado1,_, Estado2) , conseguir(Estado2).

