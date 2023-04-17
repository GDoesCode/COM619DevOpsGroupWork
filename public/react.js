function AppWidget({title}){
    const [pois,setPOIs] = React.useState([])

    function updatePOIs(pois){
        setPOIs(pois)
    }

    return (
        <div>
            <InputRegion title={title} passBackUserInput={updatePOIs}/>
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


function ResultsWidget({pois}){
    const poiHtml = pois.map(poi => <li key={poi.id}>   Name: {poi.name}      Type: {poi.type}       Country: {poi.country}     Region: {poi.region}       Longitude: {poi.lon}        Latitude:${poi.lat}         Description: {poi.description}        Recommendations: {poi.recommendations} <input type="button" id="recbtn" value="Recommend" onClick={recPoi(poi)}/> </li>)
    return (
        <div>Found POIs:
        <ul>
        {poiHtml}
        </ul>
        </div>
    )
}

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(<AppWidget />)



