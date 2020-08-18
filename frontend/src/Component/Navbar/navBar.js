import React, { Component } from "react";
import { NavLink } from "react-router-dom";
import "./navBar.css";


const logo = require("../../Images/nextStepLogo.png");

class NavBar extends Component {

  render() {
    return (
      <div className="Menu">
        <div className="logoLanding">
          <NavLink to="/">
            <img src={logo} alt="next-step_logo" />
          </NavLink>
            <div className = "nav_header"> Next Step </div>
        </div>

        <div className="nav__container">
          <NavLink className="nav" to="/login">
            Login
          </NavLink>
          <NavLink className="nav" to="/signup">
            Sign Up
          </NavLink>
          {/* <NavLink className="nav" to="/about">
            About
          </NavLink> */}
        </div>
      </div>
    );
  }
}
export default NavBar;

//React - Code for Logout Code
// logoutUser = () => {
//   axios.post('/users/logout').then((res)=>{
//     Auth.deauthenticateUser()
//   }).catch(err =>{
//     console.log(err)
//   })
// }
