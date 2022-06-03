import React from 'react'
import { useEffect, useState } from 'react'
import axios from 'axios'
import { useLocation } from "react-router-dom";
import { useNavigate } from 'react-router-dom'
import { Card, Col, Button } from "react-bootstrap";
import Header from '../components/Header';

export default function Home() {
    const location = useLocation();
    const [news, setNews] = useState([]);
    const navigate = useNavigate();

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
        const resultt = p.body.substring(0, 300);
        return (
            <Col xs="3" >
                <Card style={{ width: '20rem' }}>
                    <Card.Img variant="top" src={p.picture} />
                    <Card.Body>
                        <Card.Title>{p.title}</Card.Title>
                        <Card.Text>
                            {resultt}
                        </Card.Text>
                        <Button onClick={() => navigate("/detail/" + p.id)} src={p.picture} variant="primary">See Details</Button>
                    </Card.Body>
                </Card>
                <br />
            </Col>
        )
    })




    return (
        <div>
            <Header />
            <div style={{padding: "5rem", display: "flex", flexWrap: "wrap" }}>
                {renderList}
            </div>
        </div>
    )
}