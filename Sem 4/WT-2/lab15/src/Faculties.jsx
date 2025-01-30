import faculties from '../data/faculties.js'

function Faculty(name, initaial, key) {
    return (
        <div key={key} className='flex flex-row      gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{initaial}</div>
        </div>
    )
}

export default function Faculties() {
    return (
        <div className='flex flex-wrap m-5'>
            <div className='text-3xl'>Faculty :</div>
            {faculties.map(faculty => Faculty(faculty.FacultyName, faculty.FacultyInitial, faculty.id))}
        </div>
    )
}