import React from 'react';
import { Route, Link } from 'react-router-dom'
import Home from '../home'
import Data from '../data'

const App = () => (
  <div>
    <header>
      <Link to="/">Home</Link>
      <Link to="/data">Data</Link>
    </header>

    <main>
      <Route exact path="/" component={Home} />
      <Route exact path="/data" component={Data} />
    </main>
  </div>
)
export default App
