function contar(){
    var ini, fim, passo,res
    ini = document.getElementById('txi')
    fim = document.getElementById('txf')
    passo = document.getElementById('txp')
    res = document.getElementById('res')

    if(ini.value.length == 0 || fim.value.length == 0 || passo.value.length == 0){
        res.innerHTML = 'Impossível contar'
        //window.alert('[ERRO] Faltam dados!')
    }
    else{
        res.innerHTML = 'Contando: '
        var i = Number(ini.value)
        var f = Number(fim.value)
        var p = Number(passo.value)

        //passo = 0
        if(p<=0){
            res.innerHTML = ('Passo inválido! Considerando passo = 1: ')
            p = 1
        }

        //contagem crescente
        if(i<f){ 
            for(var c = i; c<=f; c+=p){
                res.innerHTML += `${c} \u{1F449}`
            }
        }

        //contagem decrescente
        else if(i>f){
            for(var c = i; c>=f; c-=p){
                res.innerHTML += `${c} \u{1F449}`
                }
            }
        }
    }