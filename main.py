# script for login verification and getting candidates data
import json
import re
from sqlalchemy import create_engine
from check_os import get_dir

DB_STRING = "mysql://ADMIN1:admin@localhost:3306/NISAS"


# returns True if all logging data is correct
def verify_logging_data() -> (bool, int):
    with open(get_dir()) as f:
        logging_dict = json.load(f)
    name, surname, pesel, address, ID_number = logging_dict['imie'], logging_dict['nazwisko'], \
                                               logging_dict['pesel'], logging_dict['adres'], \
                                               logging_dict['dowod']
    if any(char.isdigit() for char in name):
        raise ValueError(f"Błędne dane logowania! Błędne imie: {name}")
    if any(char.isdigit() for char in surname):
        raise ValueError(f"Błędne dane logowania! Błędne nazwisko: {surname}")
    if any(not char.isdigit() for char in str(pesel)):
        raise ValueError(f"Błędne dane logowania! Błędny pesel: {pesel}")
    if not any(char.isdigit() for char in address):
        raise ValueError(f"Błędne dane logowania! Błędny adres: {address}")
    if not re.compile("[A-Z]{3}\d{6}").match(ID_number):  # dowod musi miec 3 duze litery i 6 cyfr np: ABC123456
        raise ValueError(f"Błędne dane logowania! Błędny numer dowodu: {ID_number}")
    if(address.split(',')[-1].strip() == 'Krakow'):
        nr_okregu = 1
    elif (address.split(',')[-1].strip()  == 'Tarnow'):
        nr_okregu = 2
    else:
        nr_okregu = -1

    return True, nr_okregu


def authenticate_voter() -> bool:
    with open(get_dir()) as f:
        log_data = json.load(f)
    engine = create_engine(DB_STRING)
    stmt = f"Select * FROM glosujacy WHERE imie = '{log_data['imie']}' AND nazwisko = '{log_data['nazwisko']}' AND "$
           f"pesel = '{log_data['pesel']}'  AND  adres = '{log_data['adres']}' AND dowod = '{log_data['dowod']}' AND$
    engine_exe = engine.execute(stmt).fetchall()
    return len(engine_exe) >= 1


def generate_kandidate_list_for_voter(nr_okegu):
    engine = create_engine(DB_STRING)
    stmt = f"Select * FROM kandydaci WHERE okreg = '{nr_okregu}'"
    engine_exe = engine.execute(stmt).fetchall()
    kandydat_dict = {}
    for idx, kandydat in enumerate(engine_exe):
        kandydat_dict[f"kandydat{idx}"] = {'imie': kandydat[1], 'nazwisko': kandydat[2], 'pesel': kandydat[3],
                                           'partia': kandydat[4], 'lista': kandydat[5], 'pozycja': kandydat[6],
                                           'okreg': kandydat[7]}
    with open("/home/pi/stuff/kand_list.json", "w") as outfile:
        json.dump(kandydat_dict, outfile)


if __name__ == "__main__":
    verification_ok, nr_okregu = verify_logging_data()
    if verification_ok:
        if authenticate_voter():
            generate_kandidate_list_for_voter(nr_okregu)
            print("Generated candidates list")
            print(1)
        else:
            raise ValueError("Authentication unsuccesfull!")
