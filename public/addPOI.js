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

async function addPOI(poiIn){
    try{
        const response = await fetch(`https://localhost:8080/poi/create`,{
            method:'POST',
            headers:{
                'Content-Type' : 'application/json'
            },
            body: JSON.stringify(poiIn)
        })
        if (response.status == 400) {
            alert("Blank Field Detected")
        }
        else {
            alert("POI Added Successfully")
        }
        } catch(e) {
            alert(`There was an error: ${e}`)
        }
}

document.getElementById('addPOI').addEventListener('click', () => {
    const newPOI = {
        name : document.getElementById('name').value,
        type : document.getElementById('type').value,
        country : document.getElementById('country').value,
        region : document.getElementById('region').value,
        longitude : document.getElementById('lon').value,
        latitude : document.getElementById('lat').value,
        description : document.getElementById('desc').value,
        recommendation : document.getElementById('rec').value
    }
    addPOI(newPOI);
})

   