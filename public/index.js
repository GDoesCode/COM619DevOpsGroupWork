// <!-- Copyright [2023] [NodeNinjas]

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License. -->

//----------------------------------------------------------------------------

/*const map = L.map("map1");
const attrib = "Map data copyright OpenStreetMap contributors, Open Database Licence" ;

        L.tileLayer("", 
        {attribution: attrib}).addTo(map);
map.setView([50.90839,-1.40037],13)*/

//const { response } = require("express");
onStart()
async function onStart(){

    try{
    const response = await fetch (`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/login`)
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
async function signUp(newUser) {
    try {
        const response = await fetch('https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/signup', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(newUser),
        });

        if (response.status === 201) {
            alert('Registration successful. You can now log in.');
            // You can add code to clear the sign-up form or redirect to the login page.
        } else {
            const errorData = await response.json();
            alert(`Registration failed: ${errorData.error}`);
        }
    } catch (e) {
        alert(`There was an error: ${e}`);
    }
}

async function ajaxSearch(regionIn){
    try{
        if (regionIn != null){
            if(regionIn != ""){
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/region/${regionIn}`);
        const pois = await response.json();
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
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/create`,{
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

async function editPoi(poiID,poiLat,poiLon){
    try{
        document.getElementById('results1').innerHTML = `<h1>Edit A POI</h1><strong>Name</strong> <input class="editS"  id="name" /><br> 
            <strong>Type</strong> <input class="editS" id="type"/><br> 
            <strong>Country</strong> <input class="editS" id="country" /><br> 
            <strong>Region</strong> <input class="editS" id="region" /><br> 
            <strong>Description</strong> <input class="editS" id="desc" /><br>
            <strong>Recommendations</strong> <input class="editS" id="rec" /><br>
            <input type="submit" id="editPOI" value="GO!" />`
            document.getElementById('editPOI').addEventListener("click",async()=>{
                const nameIn = document.getElementById('name').value
                const typeIn = document.getElementById('type').value
                const countryIn = document.getElementById('country').value
                const regionIn = document.getElementById('region').value
                const descriptionIn = document.getElementById('desc').value
                const recommendationsIn = document.getElementById('rec').value
                const editPOI = {
                    id: poiID,
                    name : nameIn,
                    type : typeIn,
                    country : countryIn,
                    region : regionIn,
                    description : descriptionIn,
                    recommendations : recommendationsIn
                }
                const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/edit`,{
            method: 'POST',
            headers: {
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(editPOI)
        })
            if (response.status == 200) {
                console.log(poiLat,poiLon)
                const marker1 = L.marker([poiLat,poiLon]).addTo(map1)
                const text = `${editPOI.name}     Description: ${editPOI.description} `
                marker1.bindPopup(text)
                alert("POI Editted Successfully")
                document.getElementById('results1').innerHTML = ""
                
            }
            else {
                const errorMessage = await response.json()
                alert(`${response.status} : ${errorMessage.error}`)
            }
            })
        }
        catch(e) {
            alert(`There was an error: ${e}`)
        }
        
    }


async function recPoi(poi){
    try{
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/recommend/${poi.id}`,{
            method:"POST"
        })
        if (response.status != 200) {
            alert("Coming in a future update!")
        }
        else {
            alert("You Recommended A POI")
        }
    } catch(e) {
        alert(`There was an error111: ${e}`)
    }
}

async function deletePOI(poiID){
    try{
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/delete/${poiID}`,{
            method:"POST"
        })
        if (response.status == 401) {
            alert("User is not an Admin and therefore can't delete or edit a POI")
        }
        else if (response.status == 200) {
            alert("You Deleted A POI")
        }
        else{
            alert("Error Deleting POI")
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
            const response1 = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/poi/review`,{
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
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/photo/upload/${POIID}`,{
            method:"POST",
            body: formData
        })
        if(response.status == 200){
            var src = document.getElementById('photo')
            var img = document.createElement("img")
            img.src = `https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/uploadPics/${POIID+photoFiles[0].name}`
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
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/login`,{
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
    const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/logout`, {method:"POST"})
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
        const response = await fetch(`https://opennms1uksouthcloudazureapp.brazilsouth.cloudapp.azure.com:8080/logout`, {method:"POST"})
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
        document.getElementById('signup').addEventListener('click', () => {
            const newUser = {
                username: document.getElementById('newUsername').value,
                password: document.getElementById('newPassword').value,
                confirmPassword: document.getElementById('confirmPassword').value,
            };
        
            signUp(newUser);
        });


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
