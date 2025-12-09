#include <limits.h>
#include <stdio.h>

#define V 5
#define E 7

int findMinKey(int visited[], int distance[]) {
    int min = INT_MAX;
    int key =  -1;
    for(int i = 0; i < V; i++){
        if(visited[i] == 0 && distance[i] < min){
            min = distance[i];
            key = i;
        }
    }
    return key;
}

void dijkstra(int graph[V][V]) {
    int distance[V];
    int visited[V];

    for (int i = 0; i < V ; i++) {
        distance[i] = INT_MAX;
        visited[i] = 0;
    }

    distance[0] = 0;

    for (int i = 0; i < V ; i++) {
        int u = findMinKey(visited,distance);
        visited[u] = 1;

        for (int j = 0; j < V ; j++) {
            if (visited[j] == 0 && graph[u][j] != 0) {
                if(distance[u] + graph[u][j] < distance[j]){
                   distance[j] = distance[u] + graph[u][j];
                }
            }
        }
    }

    for(int i = 0; i < V; i++){
        printf("%d ", distance[i]);
    }
}

int main() {
    int graph[V][V] = {
        {0,9,75,0,0},
        {0,0,95,0,42},
        {0,0,0,51,0},
        {0,19,0,0,0},
        {0,0,0,31,0}
    };

    dijkstra(graph);
    return 0;
}

