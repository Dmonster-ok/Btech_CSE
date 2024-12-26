package CricketPKG;

import java.util.Scanner;

public class ScoreBoard {
    private int totalBalls;
    private int totalWideBalls;
    private int totalNoBalls;

    public void playInnings(Team team, int overs) {
        Scanner scanner = new Scanner(System.in);
        Player[] players = team.getPlayers();
        int ballsInOver = 6;
        int currentPlayer = 0;

        for (int i = 0; i < overs; i++) {
            System.out.println("Over " + (i+1) + ":");
            for (int j = 0; j < ballsInOver; j++) {
                System.out.println("'W':wicket, 'WB':wide-ball,'NB':no-ball\nEnter runs:");
                String input = scanner.next();
                if (input.equals("W")) /*Wicket*/ {
                    team.addWicket();
                    currentPlayer++;
                    if (team.getWickets() == 10) break;
                } else if (input.equals("WB"))/*Wide Ball*/ {
                    totalWideBalls++;
                    team.addRuns(1, true);
                    j--;
                } else if (input.equals("NB"))/*No Ball */ {
                    totalNoBalls++;
                    team.addRuns(1);
                    j--;
                } else {
                    int runs = Integer.parseInt(input);
                    team.addRuns(runs);
                    players[currentPlayer].addRuns(runs);
                    players[currentPlayer].addBallFaced();
                    totalBalls++;
                }
            }
        }
    }
    
    public void showResult(Team team1, Team team2) {
        System.out.println("Match Result:");
        System.out.println("Team A\t\t\tTeam B");
        for (int i = 0; i < 11; i++) {
            Player p1 = team1.getPlayers()[i];
            Player p2 = team2.getPlayers()[i];
            System.out.println(p1.getName() + ": " + p1.getRuns() + " runs\t" + p2.getName() + ": " + p2.getRuns() + " runs");
        }
        System.out.println("\nTotal Runs:");
        System.out.println(team1.getName() + ": " + team1.getTotalRuns() + "/" + team1.getWickets());
        System.out.println(team2.getName() + ": " + team2.getTotalRuns() + "/" + team2.getWickets());
        
        System.out.println("\nResult:");
        if (team1.getTotalRuns() > team2.getTotalRuns()) {
            System.out.println(team1.getName() + " wins!");
        } else if (team1.getTotalRuns() < team2.getTotalRuns()) {
            System.out.println(team2.getName() + " wins!");
        } else {
            System.out.println("It's a tie!");
        }
        
        System.out.println("\nStats:");
        System.out.println("Total Balls: " + totalBalls);
        System.out.println("Total Wide Balls: " + totalWideBalls);
        System.out.println("Total No Balls: " + totalNoBalls);

        
    }
}
