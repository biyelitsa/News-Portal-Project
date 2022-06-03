import React from 'react'
import { useEffect } from 'react'
import { useState } from 'react'
import { useLocation } from 'react-router-dom';
import axios from 'axios';

export default function NewsDetail() {
    const location = useLocation();
    const [news, setNews] = useState([]);

    // const onChangeText = (e) => {
    //     const { name, value } = e.target;
    //     setPageData({ ...pageData, [name]: value })
    // }

    function Detail() {
        axios
            .get(`http://localhost:5127/api/Guest/newsbyid/` + location.state.id)
            .then((response) => {
                setNews(response.data)
            });
    }

    useEffect(() => {
        Detail();
    }, []);

    const renderList = news.map(p => {
        return (
            <div className="row no-gutters" style={{ width: '80rem', padding: "3rem" }} key={p.id}>
                <h1 > {p.title}</h1><br />
                <div className="col-sm-5">
                    <img style={{ width: '30rem' }} src={p.picture} />
                </div>
                <div style={{ padding: "5rem" }} className="col-sm-7">

                    <article style={{ width: '60rem' }} >
                        {p.body}
                    </article>

                </div>
            </div>
        )
    })

    return (
        <div>
            {renderList}
        </div>
    )
}
