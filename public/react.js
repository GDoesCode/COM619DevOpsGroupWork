function AppWidget({title}){
    const [pois,setPOIs] = React.useState([])
    function updatePOIs(pois){
        setPOIs(pois)
    }
    return (
        <div>
            <InputRegion title={title} passBackUserInput={updatePOIs}/>
            <MapWidget pois={pois}/>
            <ResultsWidget pois={pois}/>
        </div>
    )
}



function InputRegion({title,passBackUserInput}){
    
    async function updatePOIs(){
        const regionIn = document.getElementById('regionIn').value;
        passBackUserInput(await ajaxSearch(regionIn))
    }

    return (
        <div>
            <h1>{title}</h1>
            <fieldset>
                <input type='text' id='regionIn'/>
                <input type='button' id='btn1' value='search' onClick={updatePOIs} />
            </fieldset>
        </div>
        
    ) 
}


function MapWidget({pois}){
    React.useEffect(() =>{
        map1 = L.map("map1")
        L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",{attribution: "Copyright Message"}).addTo(map1)
        map1.setView([50.90839,-1.40037],13)
        map1.on("click", async e => {
            document.getElementById('results1').innerHTML = `<h1>Add A POI</h1><strong>Name</strong> <input class="addS"  id="name" /><br> 
            <strong>Type</strong> <input class="addS" id="type"/><br> 
            <strong>Country</strong> <input class="addS" id="country" /><br> 
            <strong>Region</strong> <input class="addS" id="region" /><br> 
            <strong>Description</strong> <input class="addS" id="desc" /><br>
            <strong>Recommendations</strong> <input class="addS" id="rec" /><br>
            <input type="submit" id="addPOI" value="GO!" />`
            document.getElementById('addPOI').addEventListener("click",async()=>{
                const nameIn = document.getElementById('name').value
                const typeIn = document.getElementById('type').value
                const countryIn = document.getElementById('country').value
                const regionIn = document.getElementById('region').value
                const descriptionIn = document.getElementById('rec').value
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
                const response = await addPOI(newPOI)
            if (response.status == 200) {
                const marker1 = L.marker([newPOI.lat,newPOI.lon]).addTo(map1)
                const text = `${newPOI.name}     Description: ${newPOI.description} `
                marker1.bindPopup(text)
                alert("POI Added Successfully")
                document.getElementById('results1').innerHTML = ""
                
            }
            else {
                const errorMessage = await response.json()
                alert(`${response.status} : ${errorMessage.error}`)
            }
            })
        })
    },[])
    pois.forEach(poi => {
        const loc = [poi.lat,poi.lon]
            const marker1 = L.marker(loc).addTo(map1)
            map1.setView(poi,10)
            var node2 = document.createElement("p")
            var text2 = document.createTextNode(`Name: ${poi.name}    Description: ${poi.description} `)
            var revTxt = document.createElement("input")
            revTxt.setAttribute("id","revTxt")
            var revBtn = document.createElement("input")
            revBtn.setAttribute("type","button")
            revBtn.setAttribute("value","Review")
            revBtn.setAttribute("id","revBtn")
            revBtn.setAttribute("onClick",`revPoi(${poi.id})`)
            var uploadFrm = document.createElement("form")
            uploadFrm.setAttribute("encytpe","multipart/form-data")
            var selectFile = document.createElement("input")
            selectFile.setAttribute("type","file")
            selectFile.setAttribute("id","poiPhotos")
            selectFile.setAttribute("name","poiPhoto")
            var uploadBtn = document.createElement("input")
            uploadBtn.setAttribute("type","button")
            uploadBtn.setAttribute("id","uploadBtn")
            uploadBtn.setAttribute("value","Upload")
            uploadBtn.setAttribute("onClick",`uploadPhoto(${poi.id})`)
            var photo = document.createElement("div")
            photo.setAttribute("id","photo")
            uploadFrm.appendChild(selectFile)
            uploadFrm.appendChild(uploadBtn)
            uploadFrm.appendChild(photo)
//var uploadFrm = `<form method='post' enctype='multipart/form-data'> Select your File: <input type='file' id='poiPhotos' name='poiPhoto'/> <input type='button' id='uploadBtn' value='Upload' onClick='uploadPhoto(${poi.id})'/><div id="photo"><div/></form>`
            node2.appendChild(text2)
            node2.appendChild(revTxt)
            node2.appendChild(revBtn)
            node2.appendChild(uploadFrm)
            //revBtn.addEventListener("click",revPoi.bind(this,poi.id))
            //uploadBtn.addEventListener("click",uploadPhoto.bind(this,poi.id))
            //node2.innerHTML +=  uploadFrm
            marker1.bindPopup(node2)
            
    });
    return <div id='map1' style={{width:"700px", height:"500px"}}></div>
    
}


function ResultsWidget({pois}){
    const poiHtml = pois.map(poi => <li key={poi.id}>   Name: {poi.name}<br></br>      Type: {poi.type}<br></br>           Loaction: {poi.region},{poi.country} <br></br>         Co-ordinates: {poi.lon},{poi.lat} <br></br>          Description: {poi.description}<br></br>          Recommendations: {poi.recommendations} <input type="button" id="recbtn" value="Recommend" onClick={recPoi.bind(this, poi)}/> </li>)
    return (
        <div style={{clear:"both"}}>Found POIs:
        <ul>
        {poiHtml}
        </ul>
        </div>
    )
}


let map1;
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<AppWidget />)



