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
            <td className='border border-gray-300'>{name}</td>
            <td className='border border-gray-300'>{initial}</td>
        </tr>
    )
}

function Card({ name, initial, key }) {
    return (
        <>
            <div key={key} className="max-w-sm rounded overflow-hidden shadow-lg m-4 p-4">
                <div className="font-bold text-xl mb-2">{name}</div>
                <p className="text-gray-700 text-base">{initial}</p>
            </div>
        </>
    )
}

export default function Faculties(format) {
    return (
        <>
            <div className='text-3xl'>Faculty :</div>
            {format.format == 'normal' && <div className='flex flex-wrap m-5'>
                {faculties.map(faculty => Normal(faculty.FacultyName, faculty.FacultyInitial, faculty.id))}
            </div>}
            {format.format == 'table' && <table className='border border-gray-400'>
                <tbody>
                    {faculties.map(faculty => <Table name={faculty.FacultyName} initial={faculty.FacultyInitial} key={faculty.id} />)}
                </tbody>
            </table>}
            {format.format == 'card' && <div className='flex flex-wrap'>
                {faculties.map(faculty => <Card name={faculty.FacultyName} initial={faculty.FacultyInitial} key={faculty.id} />)}
            </div>}
        </>
    )
}