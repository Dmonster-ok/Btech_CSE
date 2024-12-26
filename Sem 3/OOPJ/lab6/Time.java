public class Time {
    int h;
    int m;
    int s;

    Time(int h, int m, int s) {
        this.h = h;
        this.m = m;
        this.s = s;
    }

    Time(Time t) {
        this.h = t.h;
        this.m = t.m;
        this.s = t.s;
    }

    static void add(Time t1, Time t2) {
        int h = t1.h + t2.h;
        int m = t1.m + t2.m;
        int s = t1.m + t2.s;
        int sec = (h*3600)+(m*60)+s;

        h = sec / 3600;
        sec %= 3600;
        m = sec / 60;
        sec %= 60;
        System.out.println("Added Time: " + h + "h:" + m + "m:" + s + "s");
    }

    public static void main(String[] args) {
        Time t1 = new Time(24, 60, 10);
        Time t2 = new Time(t1);

        add(t1, t2);
    }
}