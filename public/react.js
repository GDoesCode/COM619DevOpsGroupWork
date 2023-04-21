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
            const response = await addPOI(newPOI)
            if (response.status == 200) {
                const marker1 = L.marker([newPOI.lat,newPOI.lon]).addTo(map1)
                const text = `${newPOI.name}     Description: ${newPOI.description} `
                marker1.bindPopup(text)
                alert("POI Added Successfully")
                
            }
            else {
                alert(`${response.status} : Error adding POI `)
            }
        })
    },[])
    pois.forEach(poi => {
        const loc = [poi.lat,poi.lon]
            const marker1 = L.marker(loc).addTo(map1)
            map1.setView(poi,10)
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
    });
    return <div id='map1' style={{width:"800px", height:"600px"}}></div>
    
}


function ResultsWidget({pois}){
    const poiHtml = pois.map(poi => <li key={poi.id}>   Name: {poi.name}      Type: {poi.type}       Country: {poi.country}     Region: {poi.region}       Longitude: {poi.lon}        Latitude:${poi.lat}         Description: {poi.description}        Recommendations: {poi.recommendations} <input type="button" id="recbtn" value="Recommend" onClick={recPoi.bind(this, poi)}/> </li>)
    return (
        <div>Found POIs:
        <ul>
        {poiHtml}
        </ul>
        </div>
    )
}


let map1;
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<AppWidget />)



