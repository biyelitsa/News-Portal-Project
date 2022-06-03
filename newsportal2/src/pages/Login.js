import React, { useState } from 'react'
import { Navigate } from 'react-router-dom'

export default function Login() {
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const [redirect, setRedirect] = useState(false)

    const submit = async (event) => {
        event.preventDefault();

        await fetch('http://localhost:5127/api/Authenticate/login', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            // credentials: 'include', //çerez ayarları: deactiveted
            body: JSON.stringify({
                username,
                password
            })
        });
        setRedirect(true)
    }
    if (redirect) {
        return <Navigate to="/admin" />
    }

    return (
        <div className='container'>
        <form onSubmit={submit}>
            <h1 className="h3 mb-3 font-weight-normal">Please sign in</h1>            
            <input className="form-control" placeholder="Userame" required onChange={e => setUsername(e.target.value)} /><br/>
            <input type="password" className="form-control" placeholder="Password" required onChange={e => setPassword(e.target.value)} /><br/>
            <button className="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
        </div>
    )
}

