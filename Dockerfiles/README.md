# LB3

## 1. K1 
### 1.1 VirtualBox benützt
![Virtualbox](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/Virtualbox.PNG "Virtualbox")
### 1.2 Visualstuio Code benützt
![Visualstudio](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/Visualstudiocode.PNG "Visualstudio")
### 1.3 Git-Client gedownloadet
![Git-Client](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/Git-client.PNG "Git-Client")
### 1.4 SSH-key für Client erstellt  
![SSH-Key](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/ssh-key.PNG "SSH-Key")
## 2. K2
### 2.1 GitHub Account wurde erstellt
![Git-Hub](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/GithubAccount.PNG "Git-Hub")
### 2.2 Git-Client wurde verwendet 
![Git-Client](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/Dockerfiles/images/Git-client.PNG "Git-Client")
### 2.3 Dokumentation als Markdown vorhanden
 Git Push:
   
   1. Soruce Control
   2. git add "das gwünschte File oder Ordner"
   3. git commit -m "Kommentar"
   4. git push
   
### 2.4 Markdown Editor (Visual Studio)
### 2.5 Markdown nach Punkten strukturiert
### 2.6 Persönlicher Wissenstand
#### Conatinisierung:
 Mein Wissenstand über Conatinisierung ist sehr klein. Wir haben das Theman nur einmal im ÜK angeschnitten und ich habe danach nie mehr etwas davon gehört.

#### Docker: 
Von Docker habe ich noch nie was davon gehört und dementsprechent auch noch nie damit gearbeitet. Mier viel daher das arbeiten sehr schwer da ich keinen grossen Wisstenstand darüber hatte. 

#### Microservices: 
Auch über Microservices habe ich kein Vorwissen. Ich habe damit noch nie gearbeitet.

### 2.7 Lernschritte
Zu beginn habe ich mir wie gewohnt alle Powerpoints durchgelesen und versucht diese zu verstehen. Danach habe ich einfach einmal wild darauf los probiert. Zuerst habe ich das ganze Lokal auf meinem Computer gemacht, allerdings hatte ich viele Fehler, wesshalb ich auf Linux gewechselt bin. Leider hatte ich auch dort viele fehlermeldung, da ich die Commands spezifisch für Windows gebaut habe, wesshalb ich noch einmal auf Windows gewechselt bin, allerdings habe ich es diesmal in einer VM gemacht. Auch dort stiess ich auf einige Fehlermeldungen die ich zum Glück beheben konnte. Ich habe zur hilfe die Beispiele auf dem Github angeschaut und so mein Dockerfile gebaut. Zudem haben mir viele Youtube Videos geholfen die Containisierung zu verstehen.

## 3. K3

Zu beginn werde ich erklären wie ich den Code aufgebaut habe. 
#### [Base] 
Zuerst habe ich ein Container erstellt der als Webserver agiert und der Hextris darauf laufen lässt. Bei diesem Dockerfile wird als Gast Betriebsystem Ubuntu verwendet.
#### [Externe Schnitstellen]
Danach werden die Ports 80 und 443 auf dem Container freigegeben. 
#### [Volume mounten]
Zusätzlich habe ich ein Volumen erstellt, sodass wenn ich mehrere Webserver mit Hextris haben möchte, dieses Volumen verwenden könnte.
#### [System update]
Als nächstes werden einige Grundkonfigurationen getätigt, damit man später keine Probleme bekommt wenn beispielsweise die Version veraltet ist.
#### [Apache install]
Danach kommen wir zum Bereich Webserver, dort wird dieser installiert. 
#### [Apache config]
Da ich sicher via HTTPS auf meinen Container zugreifen möchte muss ich dies ebenfalls noch so konfigurieren, dass dies möglich ist.Nun habe ich endlich einen Webserver mit der default Apache Seite. 
#### [Webseite]
Ich habe nun noch ein Webtemplate eingebaut, wo Hextris darauf läuft. Jetzt muss das Dockerfile noch gebuilded werden und dann kann der Container getestet werden. Der rest des Codes wird in K4 erklärt.

### Netzwerkplan
![Netzwerkplan2](https://github.com/Yanikf/M300_Yanik_Fischer/blob/master/MeineVagrantVM/Markdown-img/Netzwerkplan2.PNG "Netzwerkplan2")

### Dockerbefehle:
docker rmi: Mit diesem Command können die Images entfernt werden.

docker rm: Mit diesem Befehl können Container entfernt werden.

docker start: Container wird ausgeführt.

docker stop: Container wird angehalten.

docker ps: Docker ps zeigt alle aktive laufenden Docker Container an.

docker ps -a: Aktive und beendete Container

docker run -d ubuntu sleep 20: Startet ein Container der im Hintergrund läuft

docker images: Lokale images ausgeben

docker kill: Damit wird ein SIGKILL gesendet, womit der Container sofort stoppt.

docker logs: Gibt die logs eines Containers aus

docker top: Gibt Informationen zu den laufenden Prozessen in einem angegebenen Container aus.

docker build -t [Name] .: Damit kann ein image gebuildet werden.

### Testfälle:
| Testfälle     | Soll         | Sein  |
| ------------- |:-------------:| -----:|
|1. Curl Abfrage auf loclahost      | Ausgabe (Keine Fehlermeldung) | Ausgabe (Keine Fehlermeldung) |
|2. Zugriff über port 80      | Keine reaktion      |   keine Reaktion |
|3. Zugriff über Port 81  | Zugriff erfolgt      |    Zugriff erfolgt |
|4. Docker ps   | Alle 3 Container sollten an sein | Alle 3 Container sind an
|5. Docker images | Zeigt alle images an | Zeigt alle images an

## K4

### Sicherheitsmassnahmen:
Ich habe zuerst ein default user erstellt, der dazu da ist, dass man mit möglichst wenigen rechten arbeiten kann. Der User wurde auch gleich in eine erstellte Benutzergruppe hinzugefügt und wird als standard shell benutzer ausgeführt.
Zusätzlich habe ich die Rechenleistung von meinem Container begrenzt. Ich habe damit die CPU last und die RAN Last begrenzt.
Es wirt zuerst den Container gestartet, danach setzt man den Paramerter -itd (interactive terminal detached) und mapp zu guter nächst die Ports und bindet das Volumen ein. Danach kommt die Recourcenzuweiseung wie vorher schon mal angedeutet. Die ports wurden mit diesem Command auch geändert. Dies bedeutet, dass man nun nicht mehr mit dem Port 80 und 443 verbinden kann, sondern nur mit dem Port 81 und 444. Das Bedeutet hacker können nicht über diese Standartports gehen.

### Log
Mit dem Befehl docker exec (Container Name) bash -c 'while true; do echo "i.O"; sleep 1; done; kann man überprüfen ob Docker in Ordnung ist. Zuerst verbindet man sich mit dem gwünschtem Container danach  wird solange gefragt bis der Request True ergibt, danach eine ausgabe generiert und mit i.O in Seckunden tackt antwortet.

### Monitoring
Dafür habe ich sehr lange gebraucht, da die installation nie richtig funktioniert hat und ich sie über Loclahost nicht erreichen konnte. Ich habe es schlussendlich mit Prometheus und Grafana geschafft. Diese zwei Monitoring toole sind über die Port 3050 und 9090 erreichbar. 

### Vergelich Wissenszuwachs
Ich habe im Bereich Docker Container und Mikroservices viel dazu gelernt, da ich zuvor wenig bis gar keine Kentnisse darüber hatte. Ich brauchte viel Zeit bis ich das Zeugs einigermassen verstanden habe. Generell viel mier diese LB sehr schwer, da ich viele Porbleme mit Docker hatte. Allerdings weiss ich nun wie ich Container erstelle und diese in einer Umgebung einbinden kann und dies mit Docker. Auch kenne ich viele Docker Commands auswendig und weiss was diese bedeuten und kann sie anwenden.
### Reflexion
Wie bereits schon einmal erwähnt hatte ich grosse mühe mit diesem Modul. Ich hatte viele Fehler die sich manachmal einfach in Luftaufgelöst haben. An manchen Tagen kam ich kaum voran und hatte sogar das gefühlt, dass ich mehr kaputt mache als die Fehler zu lösen. Dies nagte daher auch an meiner Geduld die manachmal bis zum höhepunkt ausgeschöpft wurde. Viel Zeit verlor ich vorallem bei der installation von Docker und der richtigen Umgebung. Ich habe zuerst mit Windows begonnen, wollte danach auf Linux umsteigen, was allerdings nicht ging, da einigen Commands dort nicht funktionieren und zu guter letzt wieder zurück auf Windows allerdings diesmal auf eine VM. Erst dann konnte ich wieder richtig arbeiten. Dies hat mir über einen Tag gekostet. Mein Fazit ist dennoch positiv. Ich habe zwar nicht ein riesiges Projekt, aber immerhin funktioniert es und ich habe es alleine geschafft. Darum finde ich habe diese LB mit erfolg abgeschlossen da ich meiner Meinung nach sehr viel dazu gelernt habe und darum geht es ja.






