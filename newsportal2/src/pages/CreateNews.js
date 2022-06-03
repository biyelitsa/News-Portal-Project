import React, { useState } from 'react'
import axios from 'axios'

export default function CreateNews() {
    const [pageData, setPageData] = useState({
        title: "",
        body: "",
        picture: ""
    });
    const onChangeText = (e) => {
        const { name, value } = e.target;
        setPageData({ ...pageData, [name]: value })
    }
    function Create() {
        axios
            .post("http://localhost:5127/api/Guest/addnews", pageData)
            .then((response) => {
                console.log("Response: ", response)
                if (response.status == 201) {
                    alert("Book created successfully.");
                }
            });
    }
    return (
        <div className='container'>
            <input className="form-control" 
                label="title"
                name="title"
                value={pageData.title}
                placeholder={"Please enter the title"}
                onChange={onChangeText}
                required /><br/>
            <input className="form-control" 
                label="body"
                name="body"
                value={pageData.body}
                placeholder={"Please enter the body"}
                onChange={onChangeText}
                required
            /><br/>
            <input className="form-control" 
                label="picture"
                name="picture"
                value={pageData.picture}
                placeholder={"Please enter the image url here"}
                onChange={onChangeText}
                required
            /><br/>
            <button className="btn btn-lg btn-primary btn-block" onClick={() => Create()} style={{ width: "10%", height: "50px" }} onChange={onChangeText}>Create News</button>

        </div>
    )
}