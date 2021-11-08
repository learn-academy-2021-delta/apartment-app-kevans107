import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'

class Footer extends Component{
  render(){
    return(
      <footer>
        <div className="nav-bar">
            <ul>
            <NavLink to="/" className="nav-footer">&copy; 2021 Kelly Evans | Tree House Apartments</NavLink>
          </ul>
          <ul>
            <NavLink to="/apartmentindex" className="nav-footer">View Apartments</NavLink>
          </ul>
        </div>
    </footer>
    )
  }
}

export default Footer