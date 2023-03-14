function verificar(){
    var data = new Date()
    var ano = data.getFullYear()
    var fano = document.getElementById('txtano')

    var res = window.document.querySelector('div#res')

    if(fano.value.lenght == 0 || fano > ano){
        window.alert('[ERRO] Verifique os dados e tente novamente!')
    }
    else{
        var fsex = window.document.getElementsByName('radsex')
        var idade = ano - Number(fano.value)
        res.innerHTML = `Idade calculada: ${idade}`

        var img = document.createElement('img')

        var genero = ''
        if(fsex[0].checked){
            genero = 'Masculino'
            if(idade >=0 && idade<10){
                img.setAttribute('src', 'bebe-homem.png')
            }
            else if(idade>=10 && idade<24){
                img.setAttribute('src', 'jovem-homem.png')
            }
            else if(idade>=24 && idade<60){
                img.setAttribute('src', 'adulto-homem.png')
            }
            else{
                img.setAttribute('src', 'idoso-homem.png')
            }
        }
        else if(fsex[1].checked){
            genero = 'Feminino'
            if(idade >=0 && idade<10){
                img.setAttribute('src', 'bebe-mulher.png')
            }
            else if(idade>=10 && idade<24){
                img.setAttribute('src', 'jovem-mulher.png')
            }
            else if(idade>=24 && idade<60){
                img.setAttribute('src', 'adulto-mulher.png')
            }
            else{
                img.setAttribute('src', 'idosa-mulher.png')
            }
        }
        res.style.textAlign = 'center'
        res.innerHTML = `O sistema detectou pessoa do gênero ${genero} com ${idade} anos`
        res.appendChild(img)
    }
}