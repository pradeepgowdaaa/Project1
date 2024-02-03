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
        <img src="data:image/jpeg;base64,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" alt="">
        <h2 id="ph">tic toc toe</h2>
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

