import { forwardRef } from 'react'
import faculties from '../../data/faculties'

function Normal(name, initaial, key) {
    return (
        <div key={key} className='flex flex-row      gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{initaial}</div>
        </div>
    )
}

function Table({ name, initial, key }) {
    return (
        <tr key={key}>
            <td>{name}</td>
            <td>{initial}</td>
        </tr>
    )
}

function Card({name, initial, key}){
    return (
        
    )
}

export default function Faculties(format) {
    return (
        <>
            <div className='text-3xl'>Faculty :</div>
            {format.format == 'normal' && <div className='flex flex-wrap m-5'>
                {faculties.map(faculty => Normal(faculty.FacultyName, faculty.FacultyInitial, faculty.id))}
            </div>}
            {format.format == 'table' && <table>
                {faculties.map(faculty => Table(faculty.FacultyName, faculty.FacultyInitial, faculty.id))}
            </table>}

        </>
    )
}