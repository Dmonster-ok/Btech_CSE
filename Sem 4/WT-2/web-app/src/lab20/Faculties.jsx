import { useState } from 'react';

function Faculties() {
    const [id, setId] = useState(1);
    const [name, setName] = useState('');
    const [subject, setSubject] = useState('');
    const [faculties, setFaculties] = useState([]);
    const [editId, setEditId] = useState(null);

    return (
        <>
            <h1 className="text-2xl font-bold m-3">Faculties</h1>
            <table className='table-fixed'>
                <tbody>
                    <tr>
                        <td className='p-3'>Name</td>
                        <td className='p-3'>
                            <input className='btn' onChange={(e) => setName(e.target.value)} type="text" maxLength={25} value={name} />
                        </td>
                        <td className='p-3'>Subject</td>
                        <td className='p-3'>
                            <input className='btn' onChange={(e) => setSubject(e.target.value)} type="text" maxLength={25} value={subject} />
                        </td>
                        <td>
                            <button className='btn' onClick={() => {
                                if (name.trim() === '' || subject.trim() === '') return;

                                if (editId !== null) {
                                    setFaculties(faculties.map(f => 
                                        f.id === editId ? { ...f, name, subject } : f
                                    ));
                                    setEditId(null);
                                } else {
                                    setFaculties([...faculties, { id, name, subject }]);
                                    setId(id + 1);
                                }

                                setName('');
                                setSubject('');
                            }}>
                                {editId !== null ? "Edit" : "Add"}
                            </button>
                        </td>
                    </tr>
                    {faculties.map((faculty) => (
                        <tr key={faculty.id}>
                            <td className='p-3'>{faculty.id}</td>
                            <td className='p-3'>{faculty.name}</td>
                            <td className='p-3'>{faculty.subject}</td>
                            <td className='p-3 flex'>
                                <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                    setFaculties(faculties.filter(f => f.id !== faculty.id));
                                }}>
                                    Delete
                                </button>
                                <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                    setName(faculty.name);
                                    setSubject(faculty.subject);
                                    setEditId(faculty.id);
                                }}>
                                    Edit
                                </button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </>
    );
}

export default Faculties;
