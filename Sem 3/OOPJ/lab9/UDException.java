class DarshanUniException extends Exception{
    DarshanUniException(){
        super("Darshan University.");
    }
}

public class UDException {
    public static void main(String[] args) {
        try {
            throw new DarshanUniException();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
