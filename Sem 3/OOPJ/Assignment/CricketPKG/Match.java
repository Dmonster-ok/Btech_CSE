package CricketPKG;

import java.util.Scanner;

abstract class CricketMatch {
    Team team1;
    Team team2;
    ScoreBoard scoreBoard;
    int overs;

    CricketMatch() {
        team1 = new Team("Team A");
        team2 = new Team("Team B");
        scoreBoard = new ScoreBoard();
    }

    public abstract void startMatch();
}

public class Match extends CricketMatch {

    public Match() {
        super();
    }

    public void startMatch() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number of overs:");
        overs = scanner.nextInt();

        System.out.println(team1.getName() + " is batting");
        scoreBoard.playInnings(team1, overs);

        System.out.println("\n\n"+team2.getName() + " is batting");
        scoreBoard.playInnings(team2, overs);

        scoreBoard.showResult(team1, team2);
    }
}

class Team {
    private String name;
    private Player[] players;
    private int totalRuns;
    private int wickets;

    public Team(String name) {
        this.name = name;
        players = new Player[11];
        for (int i = 0; i < 11; i++) {
            players[i] = new Player("Player " + (i + 1));
        }
        totalRuns = 0;
        wickets = 0;
    }

    public String getName() {
        return name;
    }

    public Player[] getPlayers() {
        return players;
    }

    public void addRuns(int runs) {
        totalRuns += runs;
    }

    //Method Overloading
    public void addRuns(int runs, boolean isExtra) {
        totalRuns += runs;
    }

    public void addWicket() {
        wickets++;
    }

    public int getTotalRuns() {
        return totalRuns;
    }

    public int getWickets() {
        return wickets;
    }
}

class Player {
    private String name;
    private int runs;
    private int ballsFaced;

    public Player(String name) {
        this.name = name;
        runs = 0;
        ballsFaced = 0;
    }

    public void addRuns(int runs) {
        this.runs += runs;
    }

    //Method Overloading
    public void addRuns(int runs, boolean isExtra) {
        this.runs += runs;
    }

    public void addBallFaced() {
        ballsFaced++;
    }

    public int getRuns() {
        return runs;
    }

    public String getName() {
        return name;
    }
}
