import React, { useState } from 'react'
import { UsersList } from './components/UsersList'
import Faculties from './components/Faculties'
import Products from './components/Products'
import Students from './components/Students'

function App() {
  const [state, setState] = useState(false);
  const [format, formatState] = useState('normal');

  return (
    <>
      <select name="format" id="format" onChange={(e) => formatState(e.target.value)}>
        <option value="normal">Normal</option>
        <option value="table">Table</option>
        <option value="card">Card</option>
      </select>
      <div className='flex flex-col items-center justify-center'>
        {/* <button className='inline-flex items-center justify-center px-4 py-2 text-base font-medium leading-6 text-gray-600 whitespace-no-wrap bg-white border border-gray-200 rounded-md shadow-sm hover:bg-gray-50 focus:outline-none focus:shadow-none' onClick={() => setState(!state)}  >Display Users</button>
        {state && <UsersList />} */}
        
        <Faculties format={format} />
        <Products format={format} />
        <Students format={format} />
      </div>
    </>
  )
}

export default App    
