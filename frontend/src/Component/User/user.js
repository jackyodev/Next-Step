import React, {Component} from 'react';
import axios from 'axios'
import './user.css'
import Avatar from 'react-avatar';
import UsersAnswers from './usersAnswers'
import UsersFavorites from './usersFavorites'
import Auth from '../../Auth/Auth.js'

class User extends Component {
  constructor(props){
    super(props)
    this.state=({
      userID:+this.props.match.params.id,
      loggedInUser:+Auth.getTokenID(),
      display:true,
    })
  }

 getData =()=>{
    const {userID,loggedInUser}=this.state
    axios.get(`/api/users/${userID}`).then(res=>{
      this.setState({
        name:res.data.user.email,
        userName:res.data.user.username
      })
    })

    axios.get(`/api/answers/count/user/${userID}`).then(res=>{
      this.setState({
        answers:+res.data.count[0].count
      })
    })

    axios.get('/api/questions/count').then(res=>{
      this.setState({
        questions:+res.data.count[0].count
      })
    })

    axios.get(`/api/answers/user/${userID}`).then(res=>{
      this.setState({
        data:res.data.answers
      })
    })

    axios.get(`/api/likes/${loggedInUser}`).then(res=>{
      this.setState({
        likes:res.data.likes
      })
    })

    axios.get(`/api/likes/info/${userID}`).then(res=>{
      this.setState({
        favorites:res.data.favorites
      })
    })
}

  displayAnswers=()=>{
    this.setState({
      display:true
    })
  }
  displayFavorites=()=>{
    this.setState({
      display:false
    })
  }

  componentDidMount(){
    this.getData()
  }

  displayThings=()=>{
    const {display,data,likes,loggedInUser,favorites}= this.state

    if(display){
      return(
        <UsersAnswers data={data} likes={likes} loggedInUser={loggedInUser} getData={this.getData}/>
      )
    }return(
        <UsersFavorites favorites={favorites} likes={likes} loggedInUser={loggedInUser} getData={this.getData}/>
    )

  }

  checkUser=()=>{
    const {userID}=this.state
    if(userID!=+this.props.match.params.id){

      this.setState({
        userID:+this.props.match.params.id
      })
      this.getData();
      
    }
  }
  componentDidUpdate=()=>{
    this.checkUser();
  }

  render(){
    console.log(this.state.userID)
    const {name,userName,questions,answers}=this.state
    let completion = Math.round((answers/questions)*100)+'%'

    const style = {
      width:completion,
      backgroundColor: 'yellow',
    }

    return(
      <div className = 'profileContainer'>
        <div className='userInfo'>
            <Avatar textSizeRatio = {2} max-initial = {3} name= {userName} round = {true}/>
            <section>
            <p> {userName} </p>
            <p> {name} </p>
            </section>
        </div>


      <div className='pBarContainer'>
        Completion progress:
        <div className='pbar'>
          <div className ='innerBar' style={style}>
            {completion}
          </div>
          <div className='completed'>
          </div>
        </div>
      </div>
      <div className='userInfo'>
        <button onClick={this.displayAnswers}>Answers </button>
        <button onClick={this.displayFavorites}>Favorites </button>
      </div>
        {this.displayThings()}
      </div>
    )
  }
}

export default User
