# CYCLISME APP
## Authors
- [Marc Pancorbo](https://github.com/marcpancorbo)
- [Arnau Solans](https://github.com/asolans1999)

## Setup
You will need to apply the following command to be able to install the used Pods:
```
pod install
```
## Model 
The application model presents the following classes: 
- [Cyclist](https://github.com/marcpancorbo/ProyectoSwift/blob/master/Proyecto/model/Cyclist.swift)

- [Race](https://github.com/marcpancorbo/ProyectoSwift/blob/master/Proyecto/model/Race.swift)

- [Team](https://github.com/marcpancorbo/ProyectoSwift/blob/master/Proyecto/model/Team.swift)

- [User](https://github.com/marcpancorbo/ProyectoSwift/blob/master/Proyecto/model/User.swift)

## Description

This application is intended for cycling enthusiasts wanting to have at their fingertips all the relevant data about this sport. 

When starting the application you'll need to log in via Google and then you'll be able to see a TabBar that gives you access to different tables where races, teams and cyclists are presented; If you want to know more information about each of the elements you can click on the item to open a view with the details of it.

At the bottom you will have a menu with the following sections: Racing, Cyclists, Equipment and Profile (This view is only implemented in the menu); As we mentioned at the beginning by default the view will be the racing one.

<img src="cambiarPantalla.gif" width="400">


When you go to the view of cyclists you will be shown a table with the cyclists sorted by said popularity, each with their photo, name and surname, popularity and will show you if it is a category leader. 
In the lower right corner we will have a floating button, clicking on it will display an option that will allow you to add a new cyclist. To add a new one you must fill in the information and click on the save button. 

<img src="newCyclist.gif" width="400">

To see the information of a specific cyclist we will have to click on the box and it will direct us to a view with all its detailed information. In this view we will have a button to edit this cyclist.

<img src="editCyclist.gif" width="400">


### Delete Cyclist
To eliminate a cyclist from the table view we will drag the row with the cyclist to the left: 

<img src="ezgif.com-video-to-gif.gif" width="400">

Por último tendremos la vista de los equipos que nos mostrará el nombre del equipo y una foto.

## Realm

Para está aplicación hemos utilizado Realm como método de almacenamiento de datos a nivel de dispositivo.  
Tenemos un clase [Manager](https://github.com/marcpancorbo/ProyectoSwift/blob/master/Proyecto/controller/BBDDManager.swift) donde creamos las tablas, inicializamos la información y la guardamos, además de todos los métodos CRUD básicos como inserts, selects, y deletes entre otros.

## Google Login

Para el login hemos usado un pod de google, que nos permite iniciar sesión con una cuenta de correo Google, el inició de sesión se quedará almacenado
para no tener que iniciar sesión cada vez que abras la aplicación

## Pods 

Para la práctica hemos utilizado los siguientes pods:
- [Floaty: Floating Action Button](https://github.com/kciter/Floaty)
- [Realm](https://github.com/realm/realm-cocoa)
- [Google Sign In](https://developers.google.com/identity/sign-in/ios/start)
