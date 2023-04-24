async function addPOI(poiIn){
    try{
        const response = await fetch(`http://localhost:3030/poi/create`,{
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

   