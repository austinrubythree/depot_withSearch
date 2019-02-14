import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Test = props => (
  <div>Test {props.name}! {'React version:' + React.version} 
    <p>and this is a testing unit</p>
  </div>
)

Test.defaultProps = {
  name: 'David'
}

Test.propTypes = {
  name: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Test name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})
