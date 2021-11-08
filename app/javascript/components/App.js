import React, { Component } from 'react'
import Header from './components/Header'
import Home from './pages/Home'
import Footer from './components/Footer'
import ApartmentIndex from './pages/ApartmentIndex'
import CreateAccount from './pages/CreateAccount'

import {
  BrowserRouter as  Router,
  Routes,
  Route
} from 'react-router-dom'

class App extends Component {
  render() {
    return (
      <Router>
        <Header {...this.props} />
        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route path="apartmentIndex" element={<ApartmentIndex />} />
          <Route path="createAccount" element={<CreateAccount />} />
        </Routes>
        <Footer {...this.props} />
      </Router>
    )
  }
}
export default App