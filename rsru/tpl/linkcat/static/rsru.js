// RSRU.js, basic rotate function for letters.
// Short, simple. JQ is overkill here...
// (c) 2022 Thransoft. Authored: 10/10/2022

window.addEventListener('load', function() {
    var waitMs = 750;
    var rotate = function() {
        var old_c_w = document.getElementById('w').className;
        var old_c_w2 = document.getElementById('w2').className;


        document.getElementById('w').className = document.getElementById('m').className;
        document.getElementById('m').className=old_c_w2;
        document.getElementById('w2').className=old_c_w;
    }

    setInterval(rotate, waitMs);
    console.log("Thranpages presents Well Made Web.");
});
