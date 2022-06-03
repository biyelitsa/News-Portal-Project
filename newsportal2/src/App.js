import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import Login from './pages/Login';
import Nav from './components/Nav';
import Register from './pages/Register';
import Home from './pages/Home';
import AdminHome from './pages/AdminHome';
import CreateNews from './pages/CreateNews';
import EditNews from './pages/EditNews';
import NewsDetail from './pages/NewsDetail';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Nav />
        <>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/detail/:id" element={<NewsDetail />} />
            <Route path="/admin" element={<AdminHome />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/create" element={<CreateNews />} />
            <Route path="/news/edit/:id" element={<EditNews />} />
          </Routes>
        </>
      </BrowserRouter>
    </div>
  );
}

export default App;
