import React from 'react'
import { useEffect, useState } from 'react'
import axios from 'axios'
import { useLocation } from "react-router-dom";
import { useNavigate } from 'react-router-dom'
import { Card, Col, Button, Carousel, CarouselItem, Row } from "react-bootstrap";

export default function Header() {
    const location = useLocation();
    const [news, setNews] = useState([]);
    const navigate = useNavigate();

  

    return (
        <div >
            <Carousel variant="dark" >
                <Carousel.Item  >
                    <img                    
                        className="d-block w-100"
                        src="https://www.novotek.com/wp-content/uploads/headerimage/novotek-news-header-duplex-cyan.jpg"
                        alt="First slide"
                    />
                    <Carousel.Caption>
                        Lorem Ipsum Dolor Sit Amet
                    </Carousel.Caption>
                </Carousel.Item>
            </Carousel>
        </div>
    )
}
