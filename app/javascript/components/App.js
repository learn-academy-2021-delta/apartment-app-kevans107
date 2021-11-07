import React, { Component } from 'react'
import Header from './components/Header'
import Home from './pages/Home'
import Footer from './components/Footer'

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
        </Routes>
        <Footer {...this.props} />
      </Router>
    )
  }
}
export default App