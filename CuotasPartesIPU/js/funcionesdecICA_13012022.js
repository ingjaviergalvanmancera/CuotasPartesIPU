

function ValorTotal10() {
    var numero1 = document.getElementById("txtTotalIng").value;
    var numero2 = document.getElementById("txtMenosIng").value;
    var Total10 = document.getElementById("txtTIngOrExt").value;

    var numero11 = document.getElementById("txtDevRebDes").value;
    var numero12 = document.getElementById("txtIngExp").value;
    var numero13 = document.getElementById("txtIngActFj").value;
    var numero14 = document.getElementById("txtMenActExc").value;
    var numero15 = document.getElementById("txtMenOtrAct").value;
    
    var Total16 = document.getElementById("txtTotIngGrav").value;

    var Totalsuma10 = parseInt(numero1) - parseInt(numero2);
    Total10.value = Totalsuma10;
    var Totalsuma16 = Totalsuma10 - (parseInt(numero11) + parseInt(numero12) + parseInt(numero13) + parseInt(numero14) + parseInt(numero15));
    Total16.value = Totalsuma16;
}

