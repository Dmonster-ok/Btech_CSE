import './App.css'
import React, { useState } from 'react'
import { UsersList } from './UsersList'
import Faculties from './Faculties'
import Products from './Products'
import Students from './Students'

function App() {
  const [state, setState] = useState(false);

  return (
    <>

      <div className='flex flex-col items-center justify-center'>
        {/* <button className='inline-flex items-center justify-center px-4 py-2 text-base font-medium leading-6 text-gray-600 whitespace-no-wrap bg-white border border-gray-200 rounded-md shadow-sm hover:bg-gray-50 focus:outline-none focus:shadow-none' onClick={() => setState(!state)}  >Display Users</button>
        {state && <UsersList />} */}
        
        <Faculties />
        <Products />
        <Students />
      </div>
    </>
  )
}

export default App    
