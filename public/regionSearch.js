const map = L.map("map1");
onStart()
async function onStart(){
    try{
    const response = await fetch (`http://localhost:3030/login`)
    const loginCheck = await response.json()
    
    if (loginCheck.username != null){
        onLogin(loginCheck.username)
    } else{
    onLogout()
}
    }
    catch(e){
        
    }
}

async function ajaxSearch(regionIn){
    try{
        const response = await fetch(`http://localhost:3030/poi/region/${regionIn}`);
        const pois = await response.json();

        const attrib = "Map data copyright OpenStreetMap contributors, Open Database Licence" ;

        L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", 
        {attribution: attrib}).addTo(map);
        
        pois.forEach(poi => {
            const loc = [poi.lat,poi.lon]
            const marker1 = L.marker(loc).addTo(map)
            const text = marker1.bindPopup(`Name:${poi.name}    Description:${poi.description} <input id="popRevxtx"><input type="button" value="Review This POI" id="popReview" />`)
            map.setView(poi,10)
            var node1 = document.createElement("p")
            var text1 = document.createTextNode(`Name: ${poi.name}      Type: ${poi.type}       Country: ${poi.country}     Region: ${poi.region}       Longitude:${poi.lon}        Latitude:${poi.lat}         Description: ${poi.description}        Recommendations:${poi.recommendations}`)
            const recbtn = document.createElement("input")
            recbtn.setAttribute("type","button")
            recbtn.setAttribute("value","Recommend")
            recbtn.setAttribute("id","recbtn")
            node1.appendChild(text1)
            node1.appendChild(recbtn)
            document.getElementById("results1").appendChild(node1)
            recbtn.addEventListener("click",recPoi.bind(this,poi))

        })
    } catch(e){
        alert(`There was a error: ${e}`)
    }
}

async function addPOI(poiIn){
    try{
        const response = await fetch(`http://localhost:3030/poi/create`,{
            method: 'POST',
            headers: {
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(poiIn)
        })
        if (response.status == 200) {
            const marker1 = L.marker([poiIn.lat,poiIn.lon]).addTo(map)
            const text = `${poiIn.name}     Description: ${poiIn.description} `
            marker1.bindPopup(text)
            alert("POI Added Successfully")
            
        }
        else {
            alert(`Error adding POI ${response.status}`)
        }
        } catch(e) {
            alert(`There was an error: ${e}`)
        }
}

async function recPoi(poi){
    try{
        const response = await fetch(`http://localhost:3030/poi/recommend/${poi.id}`,{
            method:"POST"
        })
        if (response.status != 200) {
            alert("Error Recommending POI")
        }
        else {
            alert("You Recommended A POI")
        }
    } catch(e) {
        alert(`There was an error111: ${e}`)
    }
}

async function login(userDetails){
    try{
        const response = await fetch(`http://localhost:3030/login`,{
            method:"POST",
            headers: {
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(userDetails)
        })
        if (response.status == 200){
            onLogin(userDetails.username)
        } else{
            alert(`${response.status}`)
        }

    } catch(e){
        alert(`There was an error3: ${e}`)
    }
}
async function logout(){
    try{
    const response = await fetch(`http://localhost:3030/logout`, {method:"POST"})
    document.getElementById('loginResults').innerHTML = `Logged Out`
    } catch(e){
        alert(`Error Logging out`)
    }
    }


    function onLogin(username) {
        // fill the div with the Logged in as... + logout button
        // add the logout event handler
        try{
        document.getElementById('loginResults').innerHTML = `Logged In as ${username}.  <input type='button' value='Logout' id='logoutbtn' />`
        document.getElementById('logoutbtn').addEventListener('click',async()=>{
        const response = await fetch(`http://localhost:3030/logout`, {method:"POST"})
        onLogout()
        } )
        }catch(e){
            alert(`Error Logging out`)
        
    }
    }
    
    function onLogout() {
        // fill the div with the original form
        document.getElementById('loginResults').innerHTML = `<h1>Login</h1>
        Username <input id="username"/><br>
        Password <input id="password"/>
        <input type="submit" id="login" value="Login" />`
    
        // add the login event handler
        document.getElementById('login').addEventListener('click', ()=>{
            const userIn = document.getElementById('username').value
            const passIn = document.getElementById('password').value
            const userDetails = {
                username : userIn,
                password : passIn,
            }
            login(userDetails)
        })}



document.getElementById('regionsearch').addEventListener('click',()=>{
    const regionIn = document.getElementById('regionName').value
    ajaxSearch(regionIn)
})


map.on("click", e => {
    
    const nameIn = prompt('Enter Name of POI:')
    const typeIn = prompt('Enter Type of POI:')
    const countryIn = prompt('Enter Country of POI:')
    const regionIn = prompt('Enter Region of POI:')
    const descriptionIn = prompt('Enter A Description:')
    const newPOI = {
        name : nameIn,
        type : typeIn,
        country : countryIn,
        region : regionIn,
        lon : e.latlng.lng,
        lat : e.latlng.lat,
        description : descriptionIn,
        recommendations : 0
    }
    addPOI(newPOI)
}) 
