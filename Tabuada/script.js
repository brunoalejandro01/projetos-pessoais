function tabuada(){
    var num = document.getElementById('txn')
    var tab = document.getElementById('slctab')
    var res = document.getElementById('res')

    if(num.value.length == 0){
        res.innerHTML = 'Por favor, digite um número'
    }
    else{
        var n = Number(num.value)
        tab.innerHTML = ''
        for(c=1; c<=10; c++){
            var item = document.createElement('option')
            item.text = `${n} * ${c} = ${n*c}`
            tab.appendChild(item)
        }
    }
}