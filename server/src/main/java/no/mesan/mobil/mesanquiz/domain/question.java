package no.mesan.mobil.mesanquiz.domain;

/**
 * Created by Thomas on 12.05.2015.
 */
public class Question {
    private long id;
    private long gameId;
    private String question;

    public Question(long id, long gameId, String question) {
        this.id = id;
        this.gameId = gameId;
        this.question = question;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getGameId() {
        return gameId;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }
}
