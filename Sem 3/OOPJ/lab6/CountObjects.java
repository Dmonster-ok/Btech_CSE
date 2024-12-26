class Master{
    static int c = 0;
    Master(){
        c++;
    }
}


public class CountObjects{
    public static void main(String[] args){
        Master o1 = new Master();
        Master o2 = new Master();
        Master o3 = new Master();
        Master o4 = new Master();
        Master o5 = new Master();
        System.out.println(Master.c);
    }
}