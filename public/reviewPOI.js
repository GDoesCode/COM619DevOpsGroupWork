async function submitReview(poiID,reviewIn){
    try{
        alert("entered function")
            const poiReview = {
                poi_id : poiID,
                review : reviewIn
            }
            const response1 = await fetch(`http://localhost:3000/poi/review`,{
                method:"POST",
                headers:{
                    'Content-Type' : 'application/json'
                },
                body: JSON.stringify(poiReview)
            })
            const check = await response1.json()
            alert(response1.status)
            if (response1.status == 200){
                alert("successfully reviewed")
            } else{
                alert(`Error! Make sure you're logged in! ${JSON.stringify(check)}`)
            }
        } catch(e){
        alert(`There was an error: ${e}`)
    }
}




document.getElementById('reviewsbmt').addEventListener('click',()=>{
    alert(`click`)
    const idIn = document.getElementById('poiID').value
    const reviewIn = document.getElementById('reviewIn').value
    submitReview(idIn,reviewIn)
})