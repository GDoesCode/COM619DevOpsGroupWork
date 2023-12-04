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

async function submitReview(poiID,reviewIn){
    try{
        alert("entered function")
            const poiReview = {
                poi_id : poiID,
                review : reviewIn
            }
            const response1 = await fetch(`https://localhost:8080/poi/review`,{
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