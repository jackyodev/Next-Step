import React, { Component } from 'react'
import Progress from '../Progress/progress'
import LandingPage from '../landingPage/landing_page'
import NavBar from '../navbar/navBar_container'
import { Switch, Route } from 'react-router-dom'
import SideNav from '../sideNav/sideNav'

import './home.css'

class Home extends Component {
    constructor () {
        super ()
        this.state = {
            expanded: false
        }
    }

    toggleSideNav = () => {
        this.setState({
            expanded: !this.state.expanded
        })
    }

    render () { 
        const { expanded } = this.state
        console.log(this.state)
        return (
            <div>
                <NavBar logoutUser={this.props.logout_user} />
                <SideNav toggleSideNav={this.toggleSideNav}/>
                    <div className={ expanded ? 'expanded' : 'unexpanded' }>
                        <Switch>
                            <Route exact path='/' render={() => {
                                return (
                                <Progress/>)
                            }}/>
                        </Switch>
                    </div>
            </div>
        )
}
 

}

export default Home