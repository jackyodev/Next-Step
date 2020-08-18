import React from "react"


export const body3 = () => {
  return (
    <>
      <div className="body3">
        <div className="title">
          <h1>Question</h1>
        </div>
        <div className="cardContainer">
          <div className="cards">
            <h2 className="cardLabel">Library</h2>
            <p className="cardInfo">
              With over 200 questions from our library of the most common
              questions asks by companies. Choose and answer them without
              hesitation.
            </p>
          </div>
          <div className="cards">
            <h2 className="cardLabel">Categories</h2>
            <p className="cardInfo">
              Choose questions from different industries ranging from Customer
              Services to Leadership Skills questions. Have more questions that
              you will like to see? Click Here to send us a recommendation!
            </p>
          </div>
        </div>
      </div>
    </>
  );
};


export const body4 = () => {
  return (
    <>
      <div className="body4">
        <div className="title">
          {" "}
          <h1> Feedback </h1>
        </div>
        <div className="cardContainer">
          <div className="cards">
            <h2 className="cardLabel">Answers</h2>
            <p className="cardInfo">
              Answers them like you own them! Your answer can be rate and
              comments by others!{" "}
            </p>
          </div>
          <div className="cards">
            <h2 className="cardLabel">Rate</h2>
            <p className="cardInfo">
              Help others developed and fine-tune their answers. Give them some
              feedback and in return get feedback from them too!{" "}
            </p>
          </div>
          <div className="cards">
            <h2 className="cardLabel">Leaderboard</h2>
            <p className="cardInfo">
              Answer as much as questions as you can and see whos on the top of
              the leaderboard!
            </p>
          </div>
        </div>
      </div>
    </>
  );
};



export const foot = () => {
  return (
    <>
      <div className="body2">
        <div className="title">
          <h1> Journey </h1>
        </div>
        <div className="cardContainer">
          <div className="cards">
            <h2 className="cardLabel">Behind</h2>
            <p className="cardInfo">
              Next Step was built in 2019 by four aspiring Full Stack Web
              Developers for their capstone project at Pursuit. Ambitiously,
              built to help other fellows and people to cope their interview
              anxiety and preps for their interview.
            </p>
            <a className="link" href="https://github.com/ajinsoopark/Next-Step">
              Original GitHub Page >>
            </a>
          </div>

          <div className="cards">
            <h2 className="cardLabel">About Pursuit</h2>
            <p className="cardInfo">
              The Pursuit Fellowship is a 4-year program that trains adults from
              underserved communities to code and build careers in the tech
              industry. 
              
              By training those with the most potential, Pursuit produce
              quality engineering talent. Pursuit accepts less than 10% of
              applicants. Fellows have been hired at over 150 leading
              companies. From fast-growing startups to large public
              corporations, graduates are now writing code and enabling
              innovation across all industries.
            </p>
            <a className="link" href="https://www.pursuit.org/fellowship">
              {" "}
              More About Pursuit >>>
            </a>
          </div>
        </div>
      </div>
    </>
  );
};