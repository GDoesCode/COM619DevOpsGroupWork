/*const map = L.map("map1");
const attrib = "Map data copyright OpenStreetMap contributors, Open Database Licence" ;

        L.tileLayer("", 
        {attribution: attrib}).addTo(map);
map.setView([50.90839,-1.40037],13)*/

//const { response } = require("express");
onStart()
async function onStart(){
    try{
    const response = await fetch (`https://localhost:8080/login`)
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
        if (regionIn != null){
            if(regionIn != ""){
        const response = await fetch(`https://localhost:8080/poi/region/${regionIn}`);
        const pois = await response.json();
        /*pois.forEach(poi => {
            const loc = [poi.lat,poi.lon]
            const marker1 = L.marker(loc).addTo(map)
            var node2 = document.createElement("p")
            var text2 = document.createTextNode(`Name:${poi.name}    Description:${poi.description} `)
            var revTxt = document.createElement("input")
            revTxt.setAttribute("id","revTxt")
            var revBtn = document.createElement("input")
            revBtn.setAttribute("type","button")
            revBtn.setAttribute("value","Review")
            revBtn.setAttribute("id","revBtn")
            node2.appendChild(text2)
            node2.appendChild(revTxt)
            node2.appendChild(revBtn)
            marker1.bindPopup(node2)
            revBtn.addEventListener("click",revPoi.bind(this,poi.id))
            
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
        })*/
        return pois
    }
    else{
        alert("Blank Region. Reload The Page and Try Again")
    }
    }
    else{
        alert("Blank Region. Reload The Page and Try Again")
    }
    } catch(e){
        alert(`There was a error: ${e}`)
    }
}

async function addPOI(poiIn){
    try{
        const response = await fetch(`https://localhost:8080/poi/create`,{
            method: 'POST',
            headers: {
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(poiIn)
        })
        return response
        } catch(e) {
            alert(`There was an error: ${e}`)
        }
}

async function recPoi(poi){
    try{
        const response = await fetch(`https://localhost:8080/poi/recommend/${poi.id}`,{
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

async function revPoi(poi_id){
    const revTxt = document.getElementById('revTxt').value
    try{ 
            const poiReview = {
                poi_id : poi_id,
                review : revTxt
            }
            const response1 = await fetch(`https://localhost:8080/poi/review`,{
                method:"POST",
                headers:{
                    'Content-Type' : 'application/json'
                },
                body: JSON.stringify(poiReview)
            })
            if (response1.status == 200){
                alert("successfully reviewed")
            } else{
                alert(`Error! Make sure you're logged in!`)
            }
        } catch(e){
        alert(`There was an error: ${e}`)
    }
}

async function uploadPhoto(POIID){
    try{
    const photoFiles = document.getElementById("poiPhotos").files;
    if(photoFiles == 0){
        alert('No Files selected!')
    } else{
        const formData = new FormData();
        formData.append(`poiPhoto`,photoFiles[0])
        const response = await fetch(`https://localhost:8080/photo/upload/${POIID}`,{
            method:"POST",
            body: formData
        })
        if(response.status == 200){
            var src = document.getElementById('photo')
            var img = document.createElement("img")
            img.src = `https://localhost:8080/uploadPics/${POIID+photoFiles[0].name}`
            src.appendChild(img)
            alert("successfully uploaded")
        } else{
            alert(`${response.status} : ${response.error}`)
        }
    }
    }
    catch(error){
        alert(`error: ${error}`)
    }
}

async function login(userDetails){
    try{
        if (userDetails.username != null){
            if (userDetails.password != null){
        const response = await fetch(`https://localhost:8080/login`,{
            method:"POST",
            headers: {
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(userDetails)
        })
        if (response.status == 200){
            onLogin(userDetails.username)
        } else{
            alert(`${response.status} : Error Logging In`)
        }
    }
    else{
        alert("Blank Password")
    }
    }
    else{
        alert("Blank Username")
    }
    } catch(e){
        alert(`There was an error3: ${e}`)
    }
}
async function logout(){
    try{
    const response = await fetch(`https://localhost:8080/logout`, {method:"POST"})
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
        const response = await fetch(`https://localhost:8080/logout`, {method:"POST"})
        onLogout()
        } )
        }catch(e){
            alert(`Error Logging out`)
        
    }
    }
    
    function onLogout() {
        // fill the div with the original form
        document.getElementById('loginResults').innerHTML = `<h1 class="lgnS">Login</h1>
        Username <input  id="username"/><br>
        Password <input type="password"  id="password"/>
        <input type="submit"  id="login" value="Login" />`
    
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



//document.getElementById('regionsearch').addEventListener('click',()=>{
   // const regionIn = document.getElementById('regionName').value
   // ajaxSearch(regionIn)
//})



/*
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
}) */
