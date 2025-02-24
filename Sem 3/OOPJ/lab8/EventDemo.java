interface EventListener {
    public void performEvent(int event);
}

interface MouseListener extends EventListener {
    public void mouseClicked();

    public void mousePressed();

    public void mouseReleased();

    public void mouseMoved();

    public void mouseDragged();
}

interface KeyListener extends EventListener {
    public void keyPressed();

    public void keyReleased();
}

public class EventDemo implements MouseListener, KeyListener {
    public static void main(String[] args) {
        EventDemo e = new EventDemo();
        System.out.println("Perform event\n");
        System.out.println("1. Press key");
        System.out.println("2. Release key");
        System.out.println("3. Mouse click");
        System.out.println("4. Mouse drage");
        System.out.println("5. Mouse move");
        System.out.println("6. Mouse press");
        System.out.println("7. Mouse release\n");
        System.out.print("Enter choice: ");
        java.util.Scanner s = new java.util.Scanner(System.in);
        e.performEvent(s.nextInt());
    }

    public void performEvent(int e) {
        switch (e) {
            case 1:
                keyPressed();
                break;
            case 2:
                keyReleased();
                break;
            case 3:
                mouseClicked();
                break;
            case 4:
                mouseDragged();
                break;
            case 5:
                mouseMoved();
                break;
            case 6:
                mousePressed();
                break;
            case 7:
                mouseReleased();
                break;
            default:
                System.out.println("Invalid Event");
                break;
        }
    }

    public void keyPressed() {
        System.out.println("keyPressed");
    }

    public void keyReleased() {
        System.out.println("keyReleased");
    }

    public void mouseClicked() {
        System.out.println("mouseClicked");

    }

    public void mousePressed() {
        System.out.println("mousePressed");
    }

    public void mouseReleased() {
        System.out.println("mouseReleased");

    }

    public void mouseMoved() {
        System.out.println("mouseMoved");
    }

    public void mouseDragged() {
        System.out.println("mouseDragged");
    }
}
