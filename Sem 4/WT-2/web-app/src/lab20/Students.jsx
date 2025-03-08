    import { useState } from 'react';

    function Students() {
        const [rollNo, setRollNo] = useState(1);
        const [name, setName] = useState('');
        const [spi, setSpi] = useState('');
        const [students, setStudents] = useState([]);
        const [editRollNo, setEditRollNo] = useState(null);

        return (
            <>
                <h1 className="text-2xl font-bold m-3">Students</h1>
                <table className='table-fixed'>
                    <tbody>
                        <tr>
                            <td className='p-3'>Name</td>
                            <td className='p-3'>
                                <input className='btn' onChange={(e) => setName(e.target.value)} type="text" maxLength={25} value={name} />
                            </td>
                            <td className='p-3'>SPI</td>
                            <td className='p-3'>
                                <input className='btn' onChange={(e) => setSpi(e.target.value)} type="number" step="0.1" min="0" max="10" value={spi} />
                            </td>
                            <td>
                                <button className='btn' onClick={() => {
                                    if (name.trim() === '' || spi.trim() === '') return;

                                    if (editRollNo !== null) {
                                        setStudents(students.map(s => 
                                            s.rollNo === editRollNo ? { ...s, name, spi } : s
                                        ));
                                        setEditRollNo(null);
                                    } else {
                                        setStudents([...students, { rollNo, name, spi }]);
                                        setRollNo(rollNo + 1);
                                    }

                                    setName('');
                                    setSpi('');
                                }}>
                                    {editRollNo !== null ? "Edit" : "Add"}
                                </button>
                            </td>
                        </tr>
                        {students.map((student) => (
                            <tr key={student.rollNo}>
                                <td className='p-3'>{student.rollNo}</td>
                                <td className='p-3'>{student.name}</td>
                                <td className='p-3'>{student.spi}</td>
                                <td className='p-3 flex'>
                                    <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                        setStudents(students.filter(s => s.rollNo !== student.rollNo));
                                    }}>
                                        Delete
                                    </button>
                                    <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                        setName(student.name);
                                        setSpi(student.spi);
                                        setEditRollNo(student.rollNo);
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

    export default Students;
