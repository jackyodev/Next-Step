import React, {Component} from "react"
import { FaGithubAlt, FaLinkedin } from "react-icons/fa";


import "./about.css"

const developer1 =
  "https://avatars0.githubusercontent.com/u/43793453?s=460&u=2f314d78ffec849f9a93c8f3ade8b0a38650d135&v=4";
const developer2 =
  "https://media-exp1.licdn.com/dms/image/C4E03AQGchouSbmQwLQ/profile-displayphoto-shrink_800_800/0?e=1603324800&v=beta&t=avF6RYwif7c6DDwphS87WyyuOCPvmIAqBg9ytOIanp4";
const developer3 =
  "https://avatars3.githubusercontent.com/u/43793520?s=460&u=a2326e617fea3c1a33c07b457061236dfadb104a&v=4";
const developer4 =
  "https://avatars2.githubusercontent.com/u/53387299?s=460&u=6b3075b2d785d12e6309b6403f5cf6b36524db1b&v=4";

const linkedIn = <FaLinkedin />
const gitHub = <FaGithubAlt />

const developers = {
  0 : ["Jhenya E.", developer1, "https://www.linkedin.com/in/evgeniya-jhenya-ezhova/", "https://github.com/evgeniyaezhova"]
  ,
  1 : ["Tyson P.", developer2, "https://www.linkedin.com/in/tysonpan/", "https://github.com/ThaiSonP" ]
  ,
  2: ["Alex P.", developer3, "https://www.linkedin.com/in/alex-park-jinsoo/", "https://github.com/ajinsoopark" ]
  ,
  3: ["Jacky O.", developer4, "https://www.linkedin.com/in/jacky-ong/", "https://github.com/JJGITTY2018" ]
}

class About extends Component {

  developers_map = (developers) =>{
  let developersValues = Object.values(developers)

  return developersValues.map(el => {
    return (
      <div key={el[0]} className="developer_info">
        <div className="developer_image">
          <div className = "developer_name">{el[0]}</div>
          <img src={el[1]} alt="developer_profile" />
        </div>

        <div className="developer_external">
          <a className="dev_linkdin link" alt="linkedin link" href={el[2]}>
            <span>{linkedIn} Linkedin </span>
          </a>

          <a className="dev_github link" href={el[3]}>
            <span>{gitHub} GitHub </span>
          </a>
        </div>
      </div>
    );

  })
}


  render(){
    return (
      <>
  <div className = "about_component" >
      <div className = "about_body_developers">
        <div className = "about_page_titles" >
          <h1> Meet The Devs </h1>
        </div>
        <div className = "developers" >
          {this.developers_map(developers)}
        </div>
      </div>


  </div>
      </>
    )
  }


}


export default About
