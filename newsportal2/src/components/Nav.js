import React, { Component } from 'react'
import { Link } from 'react-router-dom'

export default class Nav extends Component {
  render() {
    return (
        <nav className="navbar navbar-expand-md navbar-light bg-light mb-4">
        <Link to="/" className="navbar-brand">Home</Link>
        <div>
            <ul className="navbar-nav mr-auto">
                <li className="nav-item active">
                    <Link to="/login" className="nav-link" >Login</Link>
                </li>
                <li className="nav-item active">
                    <Link to="/register" className="nav-link" >Register</Link>
                </li>
            </ul>
        </div>
    </nav>
    )
  }
}
