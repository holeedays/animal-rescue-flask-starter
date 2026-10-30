# ANIMAL RESCUE FLASK STARTER

Below are the steps on how to set up the project and run it.

## 1. Set up a virtual environment
*NOTE: This is technically optional, but it recommended to have all python libraries to be installed in project scope rather than global*

*WINDOWS*
```
/* [your_venv_name] could be anything */

python -m venv [your_venv_name] 
```
*MAC*
```
python3 -m venv [your_venv_name]
```

## 2. Get into the virtual environment
*WINDOWS*
```
source [your_venv_name]/scripts/activate
```
*MAC*
```
source [your_venv_name]/bin/activate
```

## 3. Install python libs from requirements.txt
*WINDOWS*
```
pip install -r requirements.txt
```
*MAC*
```
pip3 install -r requirements.txt
```

## 4. Go into the project directory
```
/* this should put you in 'root/animal-rescue-starter, which is the main directory of the project */

cd animal-rescue-starter 
```

## 5. Create the database
*This will create all relevant SQL tables defined in **schema.sql** and add existing data in **seed.sql** into those tables*

*WINDOWS*
```
python init_db.py
```
*MAC*
```
python3 init_db.py
```

## 6. Run the server

*WINDOWS*
```
python app.py
```
*MAC*
```
python3 app.py
```

