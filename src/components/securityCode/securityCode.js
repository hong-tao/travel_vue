
var Code = function(){
    let codeChars = new Array( 1, 2, 3, 4, 5, 6, 7, 8, 9, 
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    let codes = [];
    for(let i=0;i<4;i++){
        let idx = Math.floor(Math.random()*63);
        codes.push(codeChars[idx])
    }
    let res = codes.join('');
    return res;
}

export default Code;