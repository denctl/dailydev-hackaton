let player1pointsCounter = document.querySelector('#player1_points_counter');
let player2pointsCounter = document.querySelector('#player2_points_counter');

let player1won        = document.querySelector('.player1Won');
let player1lost       = document.querySelector('.player1Lost');

let player2won        = document.querySelector('.player2Won');
let player2lost       = document.querySelector('.player2Lost');

let draw              = document.querySelectorAll('.draw');

function getPoints(playerCounter, player_input){
    // callTable(player_input);
    loadDoc();
    let bookmark_url = player_input.value;
    const api_url = `https://dailyarena.asciiden.com/getBookmark?url=${bookmark_url}`;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        let player_points = document.getElementsByClassName('player_points');

        playerCounter.innerHTML = player_points.length.toString();
        console.log(playerCounter);
      }
    };
    xhttp.open("GET", api_url);
    xhttp.send();
}

function delay(time) {
  return new Promise(resolve => setTimeout(resolve, time));
}

async function fightButton() {

  await delay(700);
  getPoints(player1_points_counter, player1_bookmarks);
  await delay(700);
  getPoints(player2_points_counter, player2_bookmarks);

  checkWin();
}

function checkWin() {

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      if ( player1pointsCounter.innerHTML > player2pointsCounter.innerHTML ) {
        draw.forEach(element => {
          element.style.display = "none";
        });
        
        player1won.style.display = "flex";
        player1lost.style.display = "none";
    
        player2won.style.display = "none";
        player2lost.style.display = "flex";
      }
    
      else if ( player2pointsCounter.innerHTML > player1pointsCounter.innerHTML ) {
        draw.forEach(element => {
          element.style.display = "none";
        });
        
        player1won.style.display = "none";
        player1lost.style.display = "flex";
    
        player2won.style.display = "flex";
        player2lost.style.display = "none";
      }
    
      else {
        draw.forEach(element => {
          element.style.display = "flex";
        });
    
        player1won.style.display = "none";
        player1lost.style.display = "none";
    
        player2won.style.display = "none";
        player2lost.style.display = "none";
      }
    }
  };
  xhttp.open("GET", 'index.xml', true);
  xhttp.send();
};



function loadDoc() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        myFunction(this);
      }
    };
    xhttp.open("GET", "index.xml", true);
    xhttp.setRequestHeader('Content-Type',  'text/xml');
    xhttp.responseType = "document";
    xhttp.send();
}

function myFunction(xml) {
    var match_category = document.getElementById('topic');
    console.log(match_category.options[match_category.selectedIndex].text.toLowerCase())
    var i;
    var xmlDoc = xml.responseXML;
    var table="";
    var x = xmlDoc.getElementsByTagName("item");
    for (i = 0; i <x.length; i++) {
        if(x[i].getElementsByTagName('category')[0] != undefined){
            console.log(x[i].getElementsByTagName('category')[0].innerHTML.replace("<![CDATA[", "").replace("]]>", ""));
                if(x[i].getElementsByTagName("category")[0] && x[i].getElementsByTagName('category')[0].innerHTML.replace("<![CDATA[", "").replace("]]>", "").toLowerCase() == match_category.options[match_category.selectedIndex].text.toLowerCase()) {
                    table += '<tr><td class="player_points">' +
                    x[i].getElementsByTagName('category')[0].innerHTML.replace("<![CDATA[", "").replace("]]>", "") +
                    '</td><td>';
                }
            }
    }
    document.getElementById("points-table").innerHTML = table;
  }