import java.util.LinkedList;
import java.util.Queue;

class Graph {
    int nv;
    boolean[] visited;
    LinkedList<Integer>[] adjLists;

    @SuppressWarnings("unchecked")
    public Graph(int nv) {
        this.nv = nv;
        this.adjLists = new LinkedList[nv];
        this.visited = new boolean[nv];
        for (int i = 0; i < nv; i++) {
            adjLists[i] = new LinkedList<>();
        }
    }

    public void addEdge(int src, int dest) {
        adjLists[src].add(dest);
        adjLists[dest].add(src);
    }

    public void DSF(int v) {
        visited[v] = true;
        System.out.print(v + "  ");
        for (int adj : adjLists[v]) {
            if (!visited[adj]) {
                DSF(adj);
            }
        }
    }

    public void BSF(int v) {
        boolean visited[] = new boolean[nv];
        Queue<Integer> q = new LinkedList<Integer>();
        visited[v] = true;
        q.add(v);
        while (!q.isEmpty()) {
            v = q.poll();
            System.out.print(v + "  ");
            for (int i : adjLists[v]) {
                if (!visited[i]) {
                    visited[i] = true;
                    q.add(i);
                }
            }
        }
    }

}

public class GraphImplement {
    public static void main(String[] args) {
        Graph g = new Graph(5);

        g.addEdge(0, 1);
        g.addEdge(1, 2);
        g.addEdge(2, 3);
        g.addEdge(3, 4);

        System.out.println("Depth First Search:");
        g.DSF(0);
        System.out.println("\n//----------------------------------------\\\\");
        System.out.println("Breath First Search:");
        g.BSF(0);
    }
}
