<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tic Tac Toe1</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Shadows Into Light', cursive;
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    overflow: hidden;
}

#playb {
    width: 90%;
    height: 60vh;
    background-color: rgb(0, 0, 0);
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: repeat(3, 1fr);
    grid-gap: 2px;
    position: absolute;
    top: 5em;
    left: 5%;
}

#playb:hover {
    background-color: rgba(0, 0, 0, 0.8);
}

div {
    width: 100%;
    height: 100%;
    background-color: #ffffff;
    font-size: 3em;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: 'Shadows Into Light', cursive;
    font-weight: bold;
}

button#btn {
    position: absolute;
    width: 30%;
    height: 10%;
    top: 90%;
    left: 35%;
    z-index: 11;
}

#winingboard {
    width: 90%;
    height: 60vh;
    background: rgb(249 249 249);
    position: absolute;
    top: 25%;
    left: 5%;
    justify-content: center;
    display: none;
}

#header {
    font-size: 4em;
    position: absolute;
    display: none;
    align-items: center;
    justify-content: center;
    left: 10%;
    top: 45%;
    font-family: 'Shadows Into Light', cursive;
    font-weight: bold;
}

#header::before {
    content: attr(data-text);
    position: absolute;
    color: #fff;
    width: 200px;
    overflow: hidden;
    white-space: nowrap;
    border-right: 2px solid #fff;
    animation: anim 4s linear infinite;
    filter: drop-shadow(0 0 5px #fff) drop-shadow(0 0 10px #fff);
    background: linear-gradient(to right, Red, orange, yellow, green, blue, indigo, violet);
    -webkit-background-clip: text;
    color: transparent;
    position: absolute;
    text-shadow: 20deg, 20deg, 20deg, 20deg ;
}

@keyframes anim {
    0%, 10%, 100% {
        width: 0;
    }
    10%, 20% {
        width: 100%;
    }
}

#head {
    font-size: 7em;
    position: absolute;
    display: none;
    align-items: center;
    justify-content: center;
    left: 5%;
    top: 0%;
    font-family: 'Shadows Into Light', cursive;
    font-weight: bold;
}

#open {
    width: 100%;
    height: 100vh;
    position: absolute;
    align-items: center;
    display: flex;
    justify-content: center;
    background: url(bg.jpg);
    background-size: cover;
    animation: linear forwards;
    top: 0%;
}

@keyframes a {
    0% {
        top: 0%;
    }
    100% {
        top: 100%;
    }
}

h2#ph {
    font-size: 4em;
    background: linear-gradient(to right, yellow, lawngreen, goldenrod, green);
    -webkit-background-clip: text;
    color: transparent;
    position: absolute;
    top: 25%;
    left: 5%;
    font-family: 'Shadows Into Light', cursive;
    font-weight: bold;
}

button#p {
    position: absolute;
    width: 40%;
    height: 15%;
    font-size: 1.5em;
    border-radius: 31px;
    top: 70%;
    font-family: 'Shadows Into Light', cursive;
    font-weight: bold;
}

img {
    height: auto;
    width: 100%;
    z-index: 11;
}

@media screen and (max-width: 320px) {
    #playb {
        width: 90%;
        left: 5%;
    }

    #btn {
        width: 40%;
        left: 30%;
    }

    #winingboard {
        width: 90%;
        left: 5%;
    }

    #header {
        left: 5%;
    }

    #head {
        left: 5%;
    }

    #open {
        height: auto;
    }

    h2#ph {
        font-size: 3em;
        top: 15%;
        left: 5%;
    }

    button#p {
        width: 80%;
        top: 60%;
    }
}


    </style>
</head>

<body>


    
    <section id="playb">
        <div class="box" id="0"></div>
        <div class="box" id="1"></div>
        <div class="box" id="2"></div>
        <div class="box" id="3"></div>
        <div class="box" id="4"></div>
        <div class="box" id="5"></div>
        <div class="box" id="6"></div>
        <div class="box" id="7"></div>
        <div class="box" id="8"></div>
    </section>
    <button id="btn">Reset</button>
    <section id="winingboard">
        <h2 id="head" style="display: block;"></h2>
        <h2 id="header"data-text="&nbsp;Winner!&nbsp;">&nbsp;Winner!&nbsp;</h2>
        
    </section>
    <section id="open">
        <img src="https://c1.wallpaperflare.com/preview/143/196/914/klee-four-leaf-clover-lucky-clover-tic-tac-toe.jpg" alt="">
        <h2 id="ph">TIC TOC TOE</h2>
        <button id="p">Play</button>
    </section>

</body>
<script>
let board = document.querySelectorAll(".box");
let btn = document.querySelector("#btn");
let H = "X";
let AI = "O";
let T = "tie";
btn.addEventListener("click", () => {
    location.reload()

})
board.forEach((element) => {
    element.addEventListener("click", human);


})

document.getElementById("open").addEventListener("click", () => {
    document.getElementById("open").style.animationDuration = "2s";
    document.getElementById("open").style.animationName = "a";
})


function win() {
    let _tie = false;
    let winner = null;
    let z = 0;
    let a = document.getElementById("0").innerHTML;
    let b = document.getElementById("1").innerHTML;
    let c = document.getElementById("2").innerHTML;
    let d = document.getElementById("3").innerHTML;
    let e = document.getElementById("4").innerHTML;
    let f = document.getElementById("5").innerHTML;
    let g = document.getElementById("6").innerHTML;
    let h = document.getElementById("7").innerHTML;
    let i = document.getElementById("8").innerHTML;
    //H
    if (a == AI && b == AI && c == AI) {
        winner = AI;
        _tie = true;
    }
    if (d == AI && e == AI && f == AI) {
        winner = AI;
        _tie = true;
    }
    if (g == AI && h == AI && i == AI) {
        winner = AI;
        _tie = true;
    }
    //V
    if (a == AI && d == AI && g == AI) {
        winner = AI;
        _tie = true;
    }
    if (b == AI && e == AI && h == AI) {
        winner = AI;
        _tie = true;
    }
    if (c == AI && f == AI && i == AI) {
        winner = AI;
        _tie = true;
    }
    //d
    if (a == AI && e == AI && i == AI) {
        winner = AI;
        _tie = true;
    }
    if (c == AI && e == AI && g == AI) {
        winner = AI;
        _tie = true;
    }

    //human
    if (a == H && b == H && c == H) {
        winner = H;
        _tie = true;
    }
    if (d == H && e == H && f == H) {
        winner = H;
        _tie = true;
    }
    if (g == H && h == H && i == H) {
        winner = H;
        _tie = true;
    }
    //V
    if (a == H && d == H && g == H) {
        winner = H;
        _tie = true;
    }
    if (b == H && e == H && h == H) {
        winner = H;
        _tie = true;
    }
    if (c == H && f == H && i == H) {
        winner = H;
        _tie = true;
    }
    //d
    if (a == H && e == H && i == H) {
        winner = H;
        _tie = true;
    }
    if (c == H && e == H && g == H) {
        winner = H;
        _tie = true;
    }

    //tie
    if (_tie == false) {
        if (a != '' && b != '' && c != '' && d != '' && e != '' && f != '' &&
            g != '' && h != '' && i != '') {
            winner = T;
        }
    }

    if (winner != null) {
        tun = false;
        return winner;
    }


}

computer();


function human(element) {

    document.getElementById(element.target.id).removeEventListener("click", human);

    document.getElementById(element.target.id).innerHTML = H;

    computer();
    // win()

}

function computer() {
    let bestScore = -Infinity;
    let bestMove;


    for (let i = 0; i < board.length; i++) {
        if (board[i].innerText == '') {
            document.getElementById(i).innerHTML = AI;
            let score = minimax(board, 0, false);
            document.getElementById(i).innerHTML = "";
            if (score > bestScore) {
                bestScore = score;
                bestMove = i;
            }
        }
    }

    for (let i = 0; i < board.length; i++) {
        if (board[i].innerText == '') {
            document.getElementById(i).innerHTML = H;
            let score = minimax(board, 0, false);
            document.getElementById(i).innerHTML = "";
            if (score > bestScore) {
                bestScore = score;
                bestMove = i;
            }
        }
    }
    document.getElementById(bestMove).innerHTML = AI;
    document.getElementById(bestMove).removeEventListener("click", human);
    let result = win();
    if (result != null) {
        let show2 = document.getElementById("winingboard");
        show2.style.display = "flex";
        let show = document.getElementById("head");
        show.innerText = result;
        let show3 = document.getElementById("header");
        show3.style.display = "flex";
        board.forEach((element) => {
            element.removeEventListener("click", human);


        })
    }

}


function minimax(board, depth, isMaximizing) {
    let s = {
        X: -101,
        O: -100,
        tie: -102,
    }
    let result = win();
    if (result != null) {
        return s[result];

    }

    return -1000;
   
}
</script>

</html>

