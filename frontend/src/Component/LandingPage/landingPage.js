import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom'
import {withRouter} from "react-router"

import NavBar from "../Navbar/navBar"

import Body1 from './body1.js';
import Body2 from './body2.js';

import { body3, body4, foot } from "./body3.js";

import About from '../About/about'
import Signup from '../Signup/signup.js'
import Login from '../Login/loginContainer'


class Landing extends Component{
  // constructor(props) {
  //   super(props)
  // }

  componentWillMount() {
    this.props.history.push("/")
  }
  
render(){
  console.log(this.props)
  return(
    <div className='landingPage'>
      <NavBar/>
      <Switch>

      {/* <Route exact path = "/about" component = {About} ></Route> */}
      <Route exact path = "/signup" component = {Signup} ></Route>
      <Route exact path = "/login" component = {Login} ></Route>
      <Route  path ="/*" render={() => {
        return (
          <div>
            <Body1 />
            <Body2 />
            {body3()}
            {body4()}
            <About />
            {foot()}
          </div>
        );
      }}/>
      </Switch>
    </div>

  )
}
}

export default withRouter(Landing)
