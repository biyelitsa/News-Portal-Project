import React from 'react'
import { useEffect } from 'react'
import { useState } from 'react'
import { useLocation } from 'react-router-dom';
import axios from 'axios';

export default function EditNews() {
    const location = useLocation();
    const [pageData, setPageData] = useState({
        id: 0,
        title: "",
        body: "",
        picture: ""
    });

    const onChangeText = (e) => {
        const { name, value } = e.target;
        setPageData({ ...pageData, [name]: value })
    }

    function Edit() {
        axios
            //.put("http://api-bookseller.herokuapp.com/books/" + location.state.id, pageData)
            .put("http://localhost:5127/api/Guest/" + location.state.id, pageData)
            //https://book-store-api-test.herokuapp.com/books/
            .then((response) => {
                if (response.status == 200) {
                    alert("Book successfully updated.");
                }
            });
    }

    

    return (
        <div className='container'>
            <form>
            <input className="form-control" placeholder="Title"
                label="title"
                name="title"
                value={pageData.title}
                onChange={onChangeText}
                required
            /><br/>
            <input className="form-control" placeholder="Article"
                label="body"
                name="body"
                value={pageData.body}
                onChange={onChangeText}
                required
            /><br/>
            <input className="form-control" placeholder="Image Url"
                label="picture"
                name="picture"
                value={pageData.picture}
                onChange={onChangeText}
                required
            /><br/>
            <button className="btn btn-lg btn-primary btn-block" onClick={() => Edit()} style={{ width: "10%", height: "50px" }} onChange={onChangeText}>Edit News</button>
            </form>
        </div>
    )
}
