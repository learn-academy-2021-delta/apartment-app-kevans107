import React, { Component } from 'react'
import Header from './components/Header'
import Home from './pages/Home'
import Footer from './components/Footer'
import ApartmentIndex from './pages/ApartmentIndex'
import CreateAccount from './pages/CreateAccount'
import ApartmentShow from './pages/ApartmentShow'
import ShowTest from './pages/ShowTest'


import {
  BrowserRouter as  Router,
  Switch,
  Route
} from 'react-router-dom'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: [],
      count: 0
    }
  }
  componentDidMount(){
    this.readApartment()
  }

  nextSlide = () => {
    this.setState({count: this.state.count + 1})
  }

  previousSlide = () => {
    this.setState({count: this.state.count - 1}) 
    // need to add a conditional that if the count is zero it stops
  }
 

  readApartment = () => {
    fetch("/apartments")
    .then(response => response.json())
    .then(payload => this.setState({apartments: payload}))
    .catch(errors => console.log("index errors:", errors))
  }
  render() {
    const { apartments } = this.state
    return (
      <Router>
        <Header {...this.props} />
        <Switch>
          <Route exact path="/" component={Home} />
          <Route 
          path="/apartmentindex" 
          render={() => <ApartmentIndex apartments={apartments} />}
          />
          <Route path="/apartmentshow/:id" render={ (props) => {
            let id = +props.match.params.id
            let apartment = this.state.apartments.find(a => a.id === id)
            return <ApartmentShow apartment={apartment} />
          }}/>
          <Route path="/createAccount" element={<CreateAccount />} />
          <Route path="/showTest" component={ShowTest} />
        </Switch>
        <Footer {...this.props} />
      </Router>
    )
  }
}
export default App