import {connect } from "react-redux";
import {withRouter} from "react-router"
import {login_user,checkUserAuthStatus,logOutUser} from "../../redux/actions/Auth_actions.js"


import NavBar from "../navbar/navBar.js"
// import App  from "../home/home.js"


const mapStateToProps = (state, ownProps) => {
  return {
    state: state
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    function_login_user: (username, password) => dispatch(login_user(username,password)),
  function_checkStatus:() => 
    dispatch(checkUserAuthStatus()),
    function_logout_user: () => dispatch(logOutUser())
}
}

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(NavBar))