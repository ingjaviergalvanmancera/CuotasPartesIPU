function mostrarSancion() {
    divts = document.getElementById('dvTxtSancion');
    divls = document.getElementById('dvLblSancion');
    divP = document.getElementById('dvBotonPri');
    divU = document.getElementById('dvBotonUp');

    var chbk = document.getElementById('rbSancion');
    
    if (chbk.checked == true) {
        divts.style.display = '';
        divls.style.display = 'none';
        divP.style.display = 'none';
        divU.style.display = '';
    }
    else {
        divts.style.display = 'none';
        divls.style.display = '';
        divP.style.display = '';
        divU.style.display = 'none';
    }
}

function ValorSancion() {
    
    var chbk = document.getElementById('rbSancion');
    valor = document.getElementById("txtValSan").value;

    if (chbk.checked == true) {
        divts.style.display = '';
        divls.style.display = 'none';
        divP.style.display = 'none';
        divU.style.display = '';
    }
    else {
        divts.style.display = 'none';
        divls.style.display = '';
        divP.style.display = '';
        divU.style.display = 'none';
    }

}

function ValorTotal10() {
    var numero1 = document.getElementById("txtTotalIng").value;
    var numero2 = document.getElementById("txtMenosIng").value;
    var Total10 = document.getElementById("txtTIngOrExt").value;
    var totalsuma = parseInt(numero1) - parseInt(numero2);

    Total10.value = totalsuma;
    
    
        
    

}

