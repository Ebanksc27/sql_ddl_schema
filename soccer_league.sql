CREATE TABLE Teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    ranking INTEGER
);

CREATE TABLE Players (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    team_id INTEGER REFERENCES Teams(id)
);

CREATE TABLE Referees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Matches (
    id SERIAL PRIMARY KEY,
    team1_id INTEGER REFERENCES Teams(id),
    team2_id INTEGER REFERENCES Teams(id),
    referee_id INTEGER REFERENCES Referees(id),
    date_played TIMESTAMP NOT NULL
);

CREATE TABLE Goals (
    match_id INTEGER REFERENCES Matches(id),
    player_id INTEGER REFERENCES Players(id),
    time_scored TIMESTAMP NOT NULL
);

CREATE TABLE Seasons (
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);
