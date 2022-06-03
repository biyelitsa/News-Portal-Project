import React from 'react'
import { useEffect, useState } from 'react'
import axios from 'axios'
import { useLocation } from "react-router-dom";
import { useNavigate } from 'react-router-dom'

export default function Home() {

    const location = useLocation();
    const navigate = useNavigate();
    const [news, setNews] = useState([]);

    async function Delete(id) {
        await axios
            .delete(`http://localhost:5127/api/Guest/deletenews/${id}`);
        GetNews();
    }

    function GetNews() {
        axios
            .get("http://localhost:5127/api/Guest/newslist")
            .then((response) => {
                setNews(response.data)
            });
    }

    useEffect(() => {
        GetNews();
    });


    const renderList = news.map(p => {
        const resultt = p.body.substring(0, 50);
        return (

            <tr>
                <td>
                    <img onClick={() => navigate("/detail/" + p.id)} src={p.picture} style={{ width: "200px" }} alt={`${p.title}`} />
                </td>
                <td>{p.title}</td>
                <td>{resultt}</td>
                <td>
                    <button type="button" className="btn btn-light" onClick={() => navigate("/news/edit/" + p.id, { state: { id: p.id } })}>Edit News</button>
                </td>
                <td>
                    <button type="button" className="btn btn-danger" onClick={async () => await Delete(p.id)}>Delete News</button>
                </td>
            </tr>




        )
    })

    return (
        <div className='container'>
            <button type="button" className="btn btn-primary" onClick={() => navigate("/create")}>Create News</button>
            <table className='table table-striped'>
                <thead>
                    <tr>
                        <th>Image</th>
                        <th col-xl>Title</th>
                        <th>Body</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {renderList}
                </tbody>
            </table>
        </div>
    )
}