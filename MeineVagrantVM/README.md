# LB2

## 1. K1 
### 1.1 VirtualBox benützt
### 1.2 Vagrant verwendet
### 1.3 Visualstuio Code benützt
### 1.4 Git-Client gedownloadet
### 1.5 SSH-key für Client erstellt   
  


## 2. K2
### 2.1 GitHub Account wurde erstellt
### 2.2 Git-Client wurde verwendet 
### 2.3 Dokumentation als Markdown vorhanden
### 2.4 Markdown Editor (Visual Studio)
### 2.5 Markdown nach Punkten strukturiert
### 2.6 Persönlicher Wissenstand
#### Linux 
Ich kenne die Gurndbefehle und kann diese auch anwenden. Ich habe die Baiscs in der Schuele in den Modulen und im ÜK gelernt. Ich weiss wie man eine Linux VM aufsetzt und kann darauf Server aufsetzen und konfigurieren via Terminal.

#### Virtualisierug 

Ich kann mit Virtualbox und Vmware eine Virtuelle Maschine aufsetzen und diese demensprechend konfigurieren. Zudem habe ich im ÜK gelernt wie man VMS auch über Proxmox aufsetzen kann. 

#### Vagrant

Ich habe zuvor noch nie etwas mit Vagrant gemacht und wusste bevor diesem Modul nicht mal was das war.

#### Versionsverwaltung

Ich habe zuvor noch nie mit einem VCS gearbeitet. Ich weiss allerdings das man damit nachvollziehen kann wer zuletzt Änderungen an beispielsweise einem Projekt vorgenommen hat. Zudem kann man in einen funktionierenden Zustand zurückkehren kann wenn man Mist gebaut hat. Bei den VMS gibt es dafür die Funktion Snapshot.

#### Markdown (Visual Studio)
Auch mit einem Markdown habe ich noch nie gearbeitet. Ich wusste jedoch, dass es eine gewisse ähnlichkeit mit HTML hat.

#### Systemsicherheit
Ich habe bereits im ÜK viele Firewalls mit verschiedenen Rules eingerichtet. Auch einen Proxy habe ich bereits konfiguriert, allerdings beides nur Manuell in der VM.
Auch weiss ich was ein SSH-Tunnel ist und habe diesen auch bereits implementiert.

### 2.7 Lernschritte

Zu beginn habe ich mir die Powerpoint von Herr Rohr durchgelesen. Danach habe ich die verschiedenen Anleitungen durchgearbeitet, die mir auf Github zur verfügung standen. Ich habe immer die Übungen gemacht und die Videos angeschaut. Die Videos haben mir sehr geholfen, da es einem jeden Schritt nachvollziehen lässt. Das wichtigste war jedoch das Rumspielen ohne Anleitung, sodass man das Verständniss dafür kriegt. Ich habe daher zu beginn versucht verschiedene VMS mit verschieden einstellungen aufzusetzen. Der SSH-Key beispielsweise konnte man sehr gut mit Anleitung einrichten. Ich hatte da jedoch ein Problem, dass der Key invalid war. Diesen Fehler konnte ich jedoch beheben, alls ich ein Passowort gesetzt habe, da ich diesen Schritt unbewusst immer übersprungen habe. Es ist daher sehr wichtig immer alles genau zu lesen. Die kleinsten Fehler können einem eine Menge Zeit und Nerven rauben.

## K3
### 3.1 Bestehende VM aus Vagrant Cloud eingerichtet
### 3.2 Vagrant Befehle verstanden
### 3.3 Eingerichtete Umgebung Dokumentiert !!!
### 3.4 Funktionsweise getestet mit Testfällen
| Testfalle     | Soll         | Sein  |
| ------------- |:-------------:| -----:|
|1. Login mit flaschem Kennwort      | Accsess denied | Accses denied |
|2. Firewall läuft (sudo ufw status)      | active      |   active |
|3. Firewall rule funktioniert.(curl 192.168.10.100:3306)  | Packet Output      |    Packet Output |
|4. Firewall rule funktioniert.(curl 192.168.10.100:3307)  | Kein Output | Kein Output
|5. Datenbank lässt sich per GUI erstellen | Datenbank wird hinzugefügt | Datenbank wird hinzugefügt

### 3.5 Andere vorgefertigte VM aufgesetzt (Ubuntu)
### 3.6 Dokumentation des Projektes
#### Zuerst habe ich ein Verzeichnis mit dem Namen MeineVagrantVM erstellt. Ich habe danach mit dem Befehel "vagrant init ubuntu/xenial64" | "vagrant up --provider virtualbox" eine VM angelegt. Danach habe ich mich mit ssh auf die VM verbunden. Danach habe ich angefangen, dass Vagrant file anzupassen. Damit das Vagrant File niche komplett unüberischtlich wird, habe ich für die Commands der Datenbank und des Webserver in zwei verschiedenen Files unterteilt. Dort habe ich die Commands für die installation etc. hinzugefügt. Ich hatte viele kleine Fehler die mir leider sehr viel Zeit geraubt haben. Ich konnte allerdings das ganze meistern und habe angefangen einige Testfälle durchzuführen, sodass ich eventuelle Fehler beheben kann bevor dies mir später vielleicht noch zum Verhängnis werden könnte. 

## K4
### 4.1 Firewall eingerichtet inkl. Rules
### 4.2 Benutzer und Rechtevergabe eingerichtet 
### 4.3 Reverse Proxy nicht vorhanden
### 4.4 Zugang mit SSH-Tunnel abgesichert.
### 4.5 Sicherheitsmassnahmen sind Dokumentiert.
#### Ich habe die Firewall installiert und beim Webserver Port 80 und 22 geöffnet. Bei der Datenbank habe ich den Port 22 geöffnet und für den Webserver den Port 3306, sodass der Webserver auf die Datenbank zugreiffen kann. Zudem habe ich ein den Benutzer root erstellt und diesem ein Passowort gesetzt. Der Zugriff erfolgt per SSH.

## K5
### 5.1 Vergliech Vorwissen- Wissenszuwachs
#### Ich habe sehr vieles neues gelernt. In dem Punkt virutaliesierung bin ich allerdings immer noch auf dem gleichen Wissensstand. Anderst als bei Vagrant, da ich dort die Vorzüge und den Nutzen kennengelernt habe. Die VMS können so viel einfacher und schneller erstellt werden. Zudem hat man alles im Code. Das bedeutet wenn man beispielweise die IP ändern muss, muss man nicht extra die ganzen einstellungen öffnen, sondern kann ganz gemütlich dies im Code anpassen. Zudem habe ich gelernt wie man mit einem Markdown dokumentiert. Es hat viele gemeinsamkeiten mit HTML. Im Bereich Systemsicherheit habe ich nur gelernt wie man dies per Vagrant umsetzen kann. Neu war für mich also nur dies mit reinem Code umzusetzen.

### 5.2
#### Zu beginn dachte ich, dass dieses Modul nur eine wiederholung der anderen war. Doch dies stellte sich als ein grosses Missverständniss raus. Ich hatte spass das ganze per Code umzusetzen und es war eine wilkommene abweschlung, da wir seit dem zweitem Lehrjahr kein Programmier/Coding Moudl mehr hatten. Zudem hatten wir eine grosse Freiheit, da wir selber entscheiden konnten, was und wie wir das ganze Umsetzten wollten. Dies schätze ich sehr. Zudem dachte ich zu beginn, dass das Mark Down der grösste Mist ist. Doch je länger ich damit arbeite, desto mehr gefällt es mir, da es ein ganz anderes Gefühl ist darin zu arbeiten als in einem gewöhlichem Word, dass mir langsam auch bis zum Hals geht. Zudem ist die Darstellung ziemlich gut, nur die Tabellen sind mühsam zu machen. Im ganzen hat mir das ganze sogar ziemlich Spass gemacht, allerdings kann man sehr schnell die Nerven verlieren, wenn man bei einem Problem nicht weiter kommt und den Fehler nicht findet. Trotzdem würde ich das Modul bis jetzt jedermann weiterempfehlen. 


