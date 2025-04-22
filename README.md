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


# Cómo elimino esta basura!!!:

````
wsl --unregister kali-linux
````


# Y si instale otra distro?:
- Te fijas cuales tenes instaladas, de ahí obtenes el nombre.

````
wsl --list
````

Una vez que sabes su "nombre":

````
wsl --unregister nombre
````


# Como veo cuales puedo instalar con el comando wsl --install?:

````
wsl --list --online
````

Instalas indicando el nombre, como con kali-linux.

# Como instalo una que sé que está en Microsoft Windows Store usando winget?:
- Debes primero buscar o su nombre, o wsl, para que te tire todas los OS que estan en el Stroe, ojo, existen apps tambien

````
winget search "Winch"
````

En los resultados te sale que su nombre es "Winch WSL", si te salen nombres repetidos, usas la ID. Por lo tanto lo instalas con:

````
winget install "Winch OS"
````


# Como lo elimmino?
- Como todo lo que tengas instalado con winget, incluidas apps que ya tengas en el sistema(bloatware).

````
winget uninstall "Winch OS"
````


# Que pasa si search me dice que tiene la app/OS en msstore y en winget?
- En ese caso, pasa por ejemplo con OBS Studio.

````
winget search "OBS studio"
````

Te devuelve:

````
Nombre                   Id                       Versión Coincidencia            Origen
-----------------------------------------------------------------------------------------
OBS Studio               XPFFH613W8V6LV           Unknown                         msstore
OBS Studio               OBSProject.OBSStudio     31.0.3  ProductCode: obs studio winget
OBS Studio Beta          OBSProject.OBSStudio.Pr… 30.1.0                          winget
AMD Encoder for OBS Stu… OBSProject.obs-amd-enco… 2.6.0.0                         winget
````

En estos casos o usas el Id, o indicas el Origen(Source), ejemplo desde msstore:

````
winget install "OBS Studio" -s msstore
````


# Como veo lo que tengo instalado en mi sistema?:

````
winget list
````

Y usas ```winget uninstall nombre/id ``` para eliminar, del bloatware que viene, la mayoria podes eliminar, pero ojo, con cuales, mejor googlear.
