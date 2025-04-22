# El innombrable 
Manim en Endevour OS Sin el inombrable o para cualquier OS con Pacman.

Type for user:

```
curl -sSL https://raw.githubusercontent.com/PIBSAS/el_innombrable/main/innombrable.sh | bash
```

Type for root:

```
curl -sSL https://raw.githubusercontent.com/PIBSAS/el_innombrable/main/innombrable_root.sh | bash
```


# El innombrable APT
Manim en Kali Linux OS Sin el inombrable o para cualquier OS con aptitude.

Type for user:

```
curl -sSL https://raw.githubusercontent.com/PIBSAS/el_innombrable/main/innombrable_apt.sh | bash
```


##  Cómo instalar paquetes pip sin seguir PEP668:
```
pip install --break-system-packages paquete
```

### Ejemplo instalar pandas:

```
pip install --break-system-packages pandas
```

## Uso:
```
idle programa.py
```

### o
```
nano programa.py
```

O el editor que uses. Luego compilas el video:
```
manim -pqm programa.py nombre_de_la_clase
```


# Docs:
- [Example Gallery](https://docs.manim.community/en/stable/examples.html)
- [Tutorials & Guides](https://docs.manim.community/en/stable/tutorials_guides.html)
- [Reference Manual](https://docs.manim.community/en/stable/reference.html)


# WSL 2 Kali Linux con Desktop.
- Instalamos Kali abriendo la Terminal:
 
  ````
  wsl --install kali-linux
  ````

Si es la primera vez que haces esto, deberas reiniciar el PC. Luego hayas el icono de Kali en el menu de Windows, clic izquierdo, se abre una Terminal, esperas que cargue, indicas un usuario y contraseña, al ingresar la contraseña no veras nada escribirse, es normal. Tras ello, abrimos  otra Terminal y chequeamos que esté usando WSL 2:

````
wsl --list --verbose
````

Vas a ver algo como esto:

````
  NAME          STATE           VERSION
* kali-linux    Running         2
````

Si en vez de Version 2, ves Version 1, ejecutas este comando:

````
wsl --set-version kali-linux 2
````

Cerra WSL y abrilo nuevamente, con Kali iniciado ingresa lo siguiente, Kali Win-Kex es lo que nos dará el escritorio:

````
sudo apt update && sudo apt full-upgrade -y && sudo apt install -y kali-win-kex
````



# Ahora como lanzas el escritorio?:
 - En modo ventana, tipo app.

  ````
  kex
  ````

 - En Fullsccren:

 ````
 kex --fullscreen
 ````

