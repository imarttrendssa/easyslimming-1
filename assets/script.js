const firebaseConfig = {
    apiKey: "AIzaSyAFtfbz_eb8O5G8jbEMGG_8gbncPodB_Y4",
    authDomain: "easyyslimming.firebaseapp.com",
    projectId: "easyyslimming",
    storageBucket: "easyyslimming.appspot.com",
    messagingSenderId: "1061134492738",
    appId: "1:1061134492738:web:a236dcb35797148cf5f9db",
    measurementId: "G-D5DGM928KZ"
  }
    firebase.initializeApp(firebaseConfig);

    let db = firebase.firestore();
    let total = 0;

    function GetAllDataOnce(){
        db.collection("Cart").get().then((querySnapshot)=>{
            var cart = [];
            querySnapshot.forEach(doc=>{
                cart.push(doc.data());  
                total += (doc.data().price * doc.data().prt_Quantity);              
            });
            AddAllItemsToTable(cart);  
            document.getElementById("amount").value=total;        
        });
    }

    function GetAllDataRealtime(){
        db.collection("Cart").onSnapshot((querySnapshot)=>{
            var cart = [];
            querySnapshot.forEach(doc=>{                 
                cart.push(doc.data()); 
                total += (doc.data().price * doc.data().prt_Quantity);                
            });
            AddAllItemsToTable(cart);
            document.getElementById("amount").value=total; 
        });
    }
    
    var tableBody = document.getElementById('tbody');

    function fillTable(item_name, prt_Quantity, price){
        var trow = document.createElement('tr');
        var td1 = document.createElement('td');
        var td2 = document.createElement('td');
        var td3 = document.createElement('td');

        td1.innerHTML = item_name;
        td2.innerHTML = prt_Quantity;
        td3.innerHTML = price;

        trow.appendChild(td1);
        trow.appendChild(td2);
        trow.appendChild(td3);

        tableBody.appendChild(trow);
    }

    function AddAllItemsToTable(CartDocList){
        
        tableBody.innerHTML = "";
        CartDocList.forEach(element => {
            fillTable(element.item_name, element.prt_Quantity, element.price)
        })
    }

    window.onload = GetAllDataRealtime;