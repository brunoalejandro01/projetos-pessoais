function carregar(){
    var msg = window.document.getElementById('msg')
    var img = window.document.getElementById('imagem')
    var data = new Date()
    var hora = data.getHours()

    msg.innerHTML = `Agora são ${hora} horas.`

    if(hora >= 0 && hora < 12){
        img.src = 'manha.png'
        horario.innerHTML = 'Bom Dia!'
        window.document.body.style.background = '#f3d4b7'
    }
    else if(hora >= 12 && hora < 18){
        img.src = 'tarde.png'
        horario.innerHTML = 'Boa Tarde!'
        window.document.body.style.background = '#cb8059'
    }
    else{
        img.src = 'noite.png'
        horario.innerHTML = 'Boa Noite!'
        window.document.body.style.background = '#0f2059'
    }
}