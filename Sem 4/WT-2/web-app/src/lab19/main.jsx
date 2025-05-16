import { useState } from "react";

export default function Main() {
    const calcBtns = [
        { name: "7", value: "7" }, { name: "8", value: "8" }, { name: "9", value: "9" },
        { name: "C", value: "c" },
        { name: "4", value: "4" }, { name: "5", value: "5" }, { name: "6", value: "6" },
        { name: "+", value: "+" },
        { name: "1", value: "1" }, { name: "2", value: "2" }, { name: "3", value: "3" },
        { name: "-", value: "-" },
        { name: "*", value: "*" }, { name: "0", value: "0" }, { name: "/", value: "/" },
        { name: "=", value: "=" },
    ];

    const [eq, setEq] = useState([]);
    const [out, setOut] = useState("");

    function calculate(a) {
        if (a === "c") {
            setEq([]);
            setOut("");
            return;
        }

        if (a === "+" || a === "-" || a === "*" || a === "/") {
            if (eq.length === 0) return;
            if (eq[eq.length - 1] === "+" || eq[eq.length - 1] === "-" || eq[eq.length - 1] === "*" || eq[eq.length - 1] === "/") return;
        }

        if (a === "0") {
            if (eq.length === 0) return;
            if (eq[eq.length - 1] === "0" && eq[eq.length - 2] === "/") return;
        }

        if (a === "mod") {
            if (eq.length === 0) return;
            if (eq[eq.length - 1] === "+" || eq[eq.length - 1] === "-" || eq[eq.length - 1] === "*" || eq[eq.length - 1] === "/") return;
            const newEq = [...eq, "%"];
            setEq(newEq);
            setOut(newEq.join(""));
            return;
        }

        if (a === "pow") {
            if (eq.length === 0) return;
            if (eq[eq.length - 1] === "+" || eq[eq.length - 1] === "-" || eq[eq.length - 1] === "*" || eq[eq.length - 1] === "/") return;
            const newEq = [...eq, "**"];
            setEq(newEq);
            setOut(newEq.join("").replace("**", "^"));
            return;
        }

        const newEq = [...eq, a];

        if (a === "=") {
            try {
                const result = Function(`"use strict"; return (${eq.join("")})`)();
                setEq([result.toString()]);
                setOut(result.toString());
            } catch {
                setOut("Error");
                setEq([]);
            }
        } else {
            setEq(newEq);
            setOut(newEq.join("").replace("**", "^"));
        }
    }

    function scical(a) {
        if (eq.length === 0) return;
        if (eq[eq.length - 1] === "+" || eq[eq.length - 1] === "-" || eq[eq.length - 1] === "*" || eq[eq.length - 1] === "/") return;

        let value;
        switch (a) {
            case "sin":
                value = Math.sin(eq.join(""));
                break;
            case "cos":
                value = Math.cos(eq.join(""));
                break;
            case "tan":
                value = Math.tan(eq.join(""));
                break;
            default:
                return;
        }

        setEq([value.toString()]);
        setOut(value.toString());
    }

    function apop() {
        const newEq = eq.slice(0, -1);
        setEq(newEq);
        setOut(newEq.join(""));
    }

    return (
        <>
            <input
                type="text"
                className="w-70 max-h-40 text-4xl mb-3 border py-5 px-2 rounded-md"
                value={out}
                readOnly
            />
            <div className="grid grid-cols-4 gap-3">
                <button className="btn text-4xl" onClick={apop}>←</button>
                <button className="btn font-bold" onClick={() => calculate("mod")}>mod</button>
                <button className="btn font-bold" onClick={() => calculate("(")}>(</button>
                <button className="btn font-bold" onClick={() => calculate(")")}>)</button>
                <button className="btn font-bold" onClick={() => calculate("pow")}>X<sup>n</sup></button>
                <button className="btn font-bold" onClick={() => scical("tan")}>tan</button>
                <button className="btn font-bold" onClick={() => scical("cos")}>cos</button>
                <button className="btn font-bold" onClick={() => scical("sin")}>sin</button>
                {calcBtns.map((btn, index) => (
                    <button
                        className="btn text-4xl"
                        onClick={() => calculate(btn.value)}
                        key={index}
                    >
                        {btn.name}
                    </button>
                ))}
            </div>
        </>
    );
}
