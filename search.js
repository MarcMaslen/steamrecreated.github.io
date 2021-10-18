function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("innput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

document.getElementById("myInput").addEventListener('change', function() {
  if (document.getElementById("myInput").value.length > 1) {
    document.getElementById("table1").style.visibility = "visible";
  } else {
    document.getElementById("table1").style.visibility = "hidden";
  }
});