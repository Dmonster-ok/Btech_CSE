### 1. Install Redux Toolkit and React-Redux
npm i @reduxjs/toolkit
npm i react-redux

### 2. Create a Redux Store

```
import { configureStore } from '@reduxjs/toolkit';    
const store = configureStore({});
```

### 3. Create Reducers in the slice

```
import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  students: [
    {id: 1, name: 'John Doe'},
  ]
};

const exampleSlice = createSlice({
    name: 'students',
    initialState,
    reducers: {
        addStudent: (state, action) => {
            state.students.push({
                id: nanoid(),
                name: action.payload.name
            });
        },
        removeStudent: (state, action) => {
            state.students = state.students.filter(student => student.id !== action.payload.id);
        }
    }
});

export const { addStudent, removeStudent } = exampleSlice.actions;
export default exampleSlice.reducer;
```

### 4. Update store.js to link reducer

```
import { configureStore } from '@reduxjs/toolkit';
import exampleReducer from './exampleSlice';

const store = configureStore({
  reducer: {
    example: exampleReducer
  }
});
```

### 5. Wrap App component using Provider with store props in index.js

```
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import App from './App';
import store from './store';

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root')
);
```

### 6. Use Redux State in Components

```
import {useDispatch, useSelector} from 'react-redux';
import { removeStudent } from '../features/studentSlice';

export default function Student() {
    const dispatch = useDispatch();
    const students = useSelector(state => state.example.students);

    const handleRemove = (id) => {
        dispatch(removeStudent({ id }));
    };

    return (
        <div>
            {students.map(student => (
                <div key={student.id}>
                    {student.name}
                    <button onClick={() => handleRemove(student.id)}>Remove</button>
                </div>
            ))}
        </div>
    );
}

```