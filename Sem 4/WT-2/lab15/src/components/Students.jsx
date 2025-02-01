import students from '../../data/students';

function Student(name, language, key) {
    return (
        <div key={key} className='flex flex-row mx-5 gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{language}</div>
        </div>
    )
}

export default function Faculties(format) {
    return (
        <div className='flex flex-wrap m-5'>
            <div className='text-3xl'>Student :</div>
            {students.map(student => Student(student.name, student.language, student.id))}
        </div>
    )
}