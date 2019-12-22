function rgb(r, g, b) {
    // complete this function  
    let hex = [r, g, b] //rgb values to be hex values

    for (let i = 0; i < 3; i++) {
        if (hex[i] > 255) {
            hex[i] = 255
        } else if (hex[i] < 0) {
            hex[i] = 0
        }
    }

    for (let i = 0; i < 3; i++) {
        if (hex[i] <= 15) {
            hex[i] = '0' + hex[i].toString(16).toUpperCase()
        } else {
            hex[i] = hex[i].toString(16).toUpperCase()
        }
    }

    return hex.join('')

}