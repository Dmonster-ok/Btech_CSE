import React, { useEffect, useState } from 'react';

function getUsers() {
    const api = 'https://dummyjson.com/users';
    return fetch(api)
        .then(response => response.json())
        .then(data => data.users);
}

function User({ image, name, age }) {
    return (
        <div className='relative border-2 rounded-full flex justify-center items-center border-gray-950 p-4 w-fit'>
            <img src={image} alt={name} />
            <h2 className='absolute font-black backdrop-blur-sm'>{name}</h2>
            <p className='absolute bottom-0 '>{age}</p>
        </div>
    );
}

function UsersList() {
    const [users, setUsers] = useState([]);

    useEffect(() => {
        getUsers().then(users => setUsers(users));
    }, []);

    return (
        <div className='flex flex-wrap justify-center gap-4'>
            {users.map(user => (
                <User key={user.id} image={user.image} name={user.firstName} age={user.age} />
            ))}
        </div>
    );
}

export { getUsers, UsersList };