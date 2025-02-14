import { useEffect, useState } from 'react'

export default function Main() {

    const [time, setTime] = useState(3)
    useEffect(() => {
        const interval = setInterval(() => {
            if (time <= 0) {
                clearInterval(interval)
                return
            }
            setTime((time) => time - 1)
        }, 1000)
        return () => clearInterval(interval)
    }, [])

    return (
        <>
            <h1 className="text-3xl">Time: {time}</h1>
            <Counter />
        </>
    )
}

function Counter() {
    const [counter, setCounter] = useState(0);
    const btn = 'px-2.5 rounded-md mx-2 border border-amber-50'
    function decrement(num) {
        let ct = counter - parseInt(num);
        if (ct < 0) ct = 0
        setCounter(ct)
    }
    function increment(num) {
        setCounter(counter + parseInt(num))
    }
    return (
        <div className='flex flex-col gap-5 justify-center items-center'>
            <h1 className="text-5xl">{counter}</h1>
            <div>
                <button className={btn} onClick={() => setCounter(counter + 1)}>+1</button>
                <button className={btn} onClick={() => decrement(1)}>-1</button>
                <button className={btn} onClick={() => setCounter(0)}>Reset</button>
                <button className={btn} onClick={() => setCounter(counter + 5)}>+5</button>
                <button className={btn} onClick={() => decrement(5)}>-5</button>
            </div>
        </div>
    )
}
