import React from 'react'
import { push } from 'connected-react-router'
import { bindActionCreators } from 'redux'
import { connect } from 'react-redux'

const Home = props => (
  <div>
    <h1>Home</h1>
    <button onClick={() => props.dataPage()}>Go to Data!</button>
  </div>
)

const mapDispatchToProps = dispatch => bindActionCreators({
  dataPage: () => push('/data')
}, dispatch)

export default connect(
  null,
  mapDispatchToProps
)(Home)
