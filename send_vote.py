# script for sending vote
import json
import re
from sqlalchemy import create_engine
from check_os import get_dir

DB_STRING = "mysql://ADMIN1:admin@localhost:3306/NISAS"

def add_vote():
    with open("/home/pi/stuff/vote.json") as f:
        log_data = json.load(f)

    count_str = log_data['title']
    isChecked = log_data['isChecked']
    name, surname = count_str.split(" ")[0], count_str.split(" ")[1]
    print("Vote for:", name, surname)
    engine = create_engine(DB_STRING)
    stmt = f"Select * FROM kandydaci WHERE imie = '{name}' AND nazwisko = '{surname}' "
    engine_exe = engine.execute(stmt).fetchall()
    if len(engine_exe) > 0:
        stmt = f"UPDATE wyniki SET wynik = wynik+1 WHERE imie = '{name}' AND nazwisko = '{surname}' "
        engine_exe = engine.execute(stmt)
    else:
        raise ValueError(f"Counting votes machine acquired incorrect voter information: {name}, {surname}")


if __name__ == "__main__":
    add_vote()
