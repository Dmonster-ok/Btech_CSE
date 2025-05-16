import students from '../../data/students';

function Normal(name, language, key) {
    return (
        <div key={key} className='flex flex-row gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{language}</div>
        </div>
    )
}

function Table({ name, language, key }) {
    return (
        <tr key={key}>
            <td className='border border-gray-300'>{name}</td>
            <td className='border border-gray-300'>{language}</td>
        </tr>
    )
}

function Card({ name, language, key }) {
    return (
        <div key={key} className="max-w-sm rounded overflow-hidden shadow-lg m-4 p-4">
            <div className="font-bold text-xl mb-2">{name}</div>
            <p className="text-gray-700 text-base">{language}</p>
        </div>
    )
}

export default function Students({ format }) {
    return (
        <>
            <div className='text-3xl'>Student :</div>
            {format === 'normal' && <div className='flex flex-wrap m-5'>
                {students.map(student => Normal(student.name, student.language, student.id))}
            </div>}
            {format === 'table' && <table className='border border-gray-400'>
                <tbody>
                    {students.map(student => <Table name={student.name} language={student.language} key={student.id} />)}
                </tbody>
            </table>}
            {format === 'card' && <div className='flex flex-wrap'>
                {students.map(student => <Card name={student.name} language={student.language} key={student.id} />)}
            </div>}
        </>
    )
}