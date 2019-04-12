import React from "react";
import { Route, Redirect } from "react-router-dom";
import Auth from "./Auth.js";
import Landing from '../component/landingPage/landing_page';

const PrivateRoute = ({ component: Component, ...rest }) => (
  <Route
    {...rest}
    render={props =>{
      console.log(Auth.isUserAuthenticated())
      return Auth.isUserAuthenticated() ? (
        <Component {...props} {...rest} />
      ) : (
        <Landing />
      )
    }
  }
  />
);

export default PrivateRoute;
