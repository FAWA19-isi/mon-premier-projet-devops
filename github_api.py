import requests
r = requests.get("https://api.github.com/users/FAWA19-isi").json()
print("Utilisateur :", r["login"])
print("Dépôts :", r["public_repos"])
