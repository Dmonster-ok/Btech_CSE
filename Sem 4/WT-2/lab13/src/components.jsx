import React from "react";

class Header extends React.Component {
    render() {
        return (
            <header style={{ backgroundColor: "lightblue" }}>
                <h3>Header</h3>
            </header>
        );
    }

}

function Footer() {
    return (
        <footer style={{ backgroundColor: "lightblue" }}>
            <h3>Footer</h3>
        </footer>
    );
}

export { Header, Footer };