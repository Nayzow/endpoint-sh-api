CREATE DATABASE documentation;

CREATE TABLE documentation.users
(
    id       BIGINT AUTO_INCREMENT NOT NULL,
    login    VARCHAR(50)           NOT NULL,
    password VARCHAR(50)           NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE documentation.categories
(
    id   BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50)           NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE documentation.technologies
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    id_category BIGINT                NOT NULL,
    name        VARCHAR(50)           NOT NULL,
    image       VARCHAR(200)          NOT NULL,
    roadmap     VARCHAR(200)          NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_category) REFERENCES categories (id)
);

CREATE TABLE documentation.commands
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    id_technology BIGINT                NOT NULL,
    name          VARCHAR(100)          NOT NULL,
    description   VARCHAR(500)          NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_technology) REFERENCES documentation.technologies (id)
);

CREATE TABLE documentation.articles
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    id_technology BIGINT                NOT NULL,
    name          VARCHAR(50)           NOT NULL,
    content       VARCHAR(10000)        NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_technology) REFERENCES technologies (id)
);

INSERT INTO documentation.users (login, password)
VALUES ('admin', 'admin');

INSERT INTO documentation.categories
VALUES (1, 'Development'),
       (2, 'System & Network')
;

INSERT INTO documentation.technologies
VALUES (1, 2, 'Cisco', 'https://drive.google.com/uc?export=view&id=1ipxPHaf9EhQx_XdT-qZMLlmqp-42aG48', 'https://drive.google.com/uc?export=view&id='),
       (2, 2, 'Docker', 'https://drive.google.com/uc?export=view&id=1MNBTdXEu-tlbOrzcY3PZlvN7muJvvl76', 'https://drive.google.com/uc?export=view&id='),
       (3, 2, 'Kubernetes', 'https://drive.google.com/uc?export=view&id=1Aux5IKU-K-fQOYZSuepantzjgB5dL4hB', 'https://drive.google.com/uc?export=view&id=1dzn_eO2mo2Z1CezOiPqX2OK8tzremqa3'),
       (4, 2, 'Linux', 'https://drive.google.com/uc?export=view&id=1vBNgf7A9mFr4ZmoBHM3vETjn0aTbZ4Zc', 'https://drive.google.com/uc?export=view&id='),
       (5, 2, 'Nmap', 'https://drive.google.com/uc?export=view&id=1NPv6L9OosPm7LozAZejxb3uvAsfd7pNM', 'https://drive.google.com/uc?export=view&id='),
       (6, 2, 'Win Server', 'https://drive.google.com/uc?export=view&id=1mYgh9h3LABDAq5fWTMy0hjKL9yocBsFu', 'https://drive.google.com/uc?export=view&id='),
       (7, 2, 'Azure', 'https://drive.google.com/uc?export=view&id=1xdvJLPJr5A6aWJ0VBHyoJtMQa4QXoMSQ', 'https://drive.google.com/uc?export=view&id='),
       (8, 1, 'Angular', 'https://drive.google.com/uc?export=view&id=18xkH0G5oeAvqJuauFblmxN6RZW_Y1MNs', 'https://drive.google.com/uc?export=view&id=1jYkxDcoNhxO-gE8XF21UKA6r22dvmXYu'),
       (9, 1, 'C-Sharp', 'https://drive.google.com/uc?export=view&id=1XesuibYGhNgcE8fFuvZuK5CkdA-rnjsc', 'https://drive.google.com/uc?export=view&id=1HWIPEn1VXBKmPTa6HklOzZXot0QfkD3W'),
       (10, 1, 'Javascript', 'https://drive.google.com/uc?export=view&id=1PGl9xrcLtk955qngHfgJiu6bAFfTrQmb', 'https://drive.google.com/uc?export=view&id=1pLmY9agbCJ4NDoUjAaRUQu8g69A0C6Mm'),
       (11, 1, 'Java', 'https://drive.google.com/uc?export=view&id=1yK8eKy_TiL4gI2_i8_mV4c_p6Kq9L7yN', 'https://drive.google.com/uc?export=view&id=1VXMwNWEl-7aRt4Gorbc__-faQs82wXYG'),
       (12, 1, 'Springboot', 'https://drive.google.com/uc?export=view&id=1m86TNk6oXuNsPHG0kaq2HrrW0zf94cM3', 'https://drive.google.com/uc?export=view&id=11pU-DUr7rt70mK-5sEqs3npZOpK3ZueD'),
       (13, 1, 'NodeJS', 'https://drive.google.com/uc?export=view&id=1BcTvrWJeLL79olAjsbudSLLnIPFN6UvN', 'https://drive.google.com/uc?export=view&id=1PPzUqQtpvT-08MyV5KvfMbD6EoKWiO9n'),
       (14, 1, 'PHP', 'https://drive.google.com/uc?export=view&id=17m74_iFvlcLkXqV3yOEJKwcyyPzEa4vP', 'https://drive.google.com/uc?export=view&id='),
       (15, 1, 'Laravel', 'https://drive.google.com/uc?export=view&id=1nkx-qvsY993NUmD0Bhb5xP6WsypbJ5dt', 'https://drive.google.com/uc?export=view&id='),
       (16, 1, 'Python', 'https://drive.google.com/uc?export=view&id=1n0vsGj6Op2t68oGqZ3e9TallMJashRwU', 'https://drive.google.com/uc?export=view&id=1HHJgHNLfzI5QbkhD7oFUWWAWbd-EKRj8'),
       (17, 1, 'Django', 'https://drive.google.com/uc?export=view&id=1OcqJy31xX8laR88QDMJLioTTiWZhjw_y', 'https://drive.google.com/uc?export=view&id='),
       (18, 1, 'React', 'https://drive.google.com/uc?export=view&id=1WFFi-KHtrPOrXK6LzQYwp7nV6DKS1_jI', 'https://drive.google.com/uc?export=view&id=1iVMGKAGFhAkwBsYgtXRiEI_f_7CBckQp'),
       (19, 1, 'SQL', 'https://drive.google.com/uc?export=view&id=1LcA7uyhI4s_Ukt7u8fBjVFAyy3PkLy8R', 'https://drive.google.com/uc?export=view&id='),
       (20, 1, 'VueJS', 'https://drive.google.com/uc?export=view&id=1CQic3ktO5gfOLqm_Gw6Xm0fxpx0MsHyM', 'https://drive.google.com/uc?export=view&id=1-WV_ew89IeFhZklb6NVqtWlPgKUwtsUq'),
       (21, 1, 'Flutter', 'https://drive.google.com/uc?export=view&id=1gGQy2yRfUbI830Q9pKO0g6Bwg_geJv4f', 'https://drive.google.com/uc?export=view&id=1dzE2YMO_0i7-cn5EqjGc1fCkDyI31JYa'),
       (22, 1, 'Typescript', 'https://drive.google.com/uc?export=view&id=1CmEt2vFkPHOSNCb7GgngtXF4QbBxahAa', 'https://drive.google.com/uc?export=view&id=1JJAHU_-Ztj4UdzQHFn12FsaX7jIQtzsr'),
       (23, 1, 'Golang', 'https://drive.google.com/uc?export=view&id=1TRkk09S2rkjQDIl5OcWANaKiztQ2wMKN', 'https://drive.google.com/uc?export=view&id=1OiPZ1Rj_nKaEprcPAurPBgyCFUiQ2bXM'),
       (24, 1, 'Android', 'https://drive.google.com/uc?export=view&id=1AZ6hEwDEGz24PJ_gDyxNDBF8sieZTMh1', 'https://drive.google.com/uc?export=view&id=1lWSwb0if3zvriC1KyLF8Q1gxaCiBCCGo')
;

INSERT INTO documentation.commands(name, id_technology, description)
VALUES
    # Cisco
    ('show running-config', 1, 'Affiche la configuration en cours d''ex??cution de l''??quipement'),
    ('show startup-config', 1, 'Affiche la configuration de d??marrage de l''??quipement'),
    ('show interfaces', 1, 'Affiche les informations sur les interfaces r??seau de l''??quipement'),
    ('show ip route', 1, 'Affiche la table de routage IP de l''??quipement'),
    ('show ip protocols', 1, 'Affiche les protocoles de routage configur??s sur l''??quipement'),
    ('show mac-address-table', 1, 'Affiche la table de traduction d''adresse MAC de l''??quipement'),
    ('show vlan', 1, 'Affiche les informations sur les VLAN de l''??quipement'),
    ('show spanning-tree', 1, 'Affiche les informations sur l''arbre ??tendu de l''??quipement'),
    ('show access-lists', 1, 'Affiche les listes d''acc??s de l''??quipement'),
    ('show ip access-lists', 1, 'Affiche les listes d''acc??s IP de l''??quipement'),
    ('show ip nat translations', 1, 'Affiche les traductions NAT en cours sur l''??quipement'),
    ('show ip dhcp pool', 1, 'Affiche les informations sur les pools DHCP de l''??quipement'),
    ('show ip dhcp bindings', 1, 'Affiche les associations DHCP en cours sur l''??quipement'),
    ('show ip arp', 1, 'Affiche la table ARP de l''??quipement'),
    ('show logging', 1, 'Affiche les informations de journalisation de l''??quipement'),

    # Docker
    ('docker run', 2, 'Ex??cute une image Docker en cr??ant et en d??marrant un container'),
    ('docker start', 2, 'D??marre un container arr??t??'),
    ('docker stop', 2, 'Arr??te un container en cours d''ex??cution'),
    ('docker kill', 2, 'Arr??te brutalement un container en cours d''ex??cution'),
    ('docker rm', 2, 'Supprime un ou plusieurs containers'),
    ('docker rmi', 2, 'Supprime une ou plusieurs images'),
    ('docker pull', 2, 'T??l??charge une image depuis un registry'),
    ('docker push', 2, 'Envoie une image vers un registry'),
    ('docker build', 2, 'Cr??e une image ?? partir d''un fichier Dockerfile'),
    ('docker logs', 2, 'Affiche les logs d''un container'),
    ('docker exec', 2, 'Ex??cute une commande dans un container en cours d''ex??cution'),
    ('docker search', 2, 'Cherche une image sur un registry'),
    ('docker login', 2, 'Se connecte ?? un registry'),
    ('docker tag', 2, 'Attribue un nom ?? une image'),

    # Kubernetes
    ('kubectl get', 3, 'Affiche un ou plusieurs objets Kubernetes (pods, services, etc.)'),
    ('kubectl describe', 3, 'Affiche les d??tails d''un objet Kubernetes'),
    ('kubectl create', 3, 'Cr??e un nouvel objet Kubernetes ?? partir d''un fichier de d??finition'),
    ('kubectl apply', 3, 'Applique les modifications d''un objet Kubernetes ?? partir d''un fichier de d??finition'),
    ('kubectl delete', 3, 'Supprime un ou plusieurs objets Kubernetes'),
    ('kubectl logs', 3, 'Affiche les logs d''un pod'),
    ('kubectl exec', 3, 'Ex??cute une commande dans un pod'),
    ('kubectl attach', 3, 'Acc??de au terminal d''un pod'),
    ('kubectl port-forward', 3, 'Redirige un port local vers un port dans un pod'),
    ('kubectl scale', 3, 'Modifie le nombre de r??plicas d''un d??ploiement'),
    ('kubectl rolling-update', 3,
     'Met ?? jour un d??ploiement en cr??ant de nouveaux pods et en arr??tant les anciens de mani??re progressive'),
    ('kubectl rollout', 3, 'Affiche l''historique et les d??tails des mises ?? jour de d??ploiement'),
    ('kubectl config', 3, 'G??re la configuration de kubectl (changement de cluster, de namespace, etc.)'),

    # Linux
    ('ls', 4, 'Affiche le contenu d''un r??pertoire'),
    ('cd', 4, 'Change de r??pertoire'),
    ('mkdir', 4, 'Cr??e un r??pertoire'),
    ('touch', 4, 'Cr??e un fichier vide'),
    ('cp', 4, 'Copie un fichier ou un r??pertoire'),
    ('mv', 4, 'D??place un fichier ou un r??pertoire'),
    ('rm', 4, 'Supprime un fichier ou un r??pertoire'),
    ('man', 4, 'Affiche le manuel d''une commande'),
    ('sudo', 4, 'Ex??cute une commande en tant qu''administrateur'),
    ('apt-get', 4, 'G??re les paquets du syst??me (installation, mise ?? jour, suppression)'),
    ('grep', 4, 'Cherche un motif dans un fichier ou la sortie d''une commande'),
    ('find', 4, 'Cherche des fichiers sur le syst??me de fichiers'),
    ('top', 4, 'Affiche les processus en cours d''ex??cution et leur utilisation des ressources'),
    ('df', 4, 'Affiche l''utilisation de l''espace disque'),
    ('du', 4, 'Affiche l''utilisation de l''espace disque par r??pertoire'),
    ('cat', 4, 'Affiche le contenu d''un fichier'),
    ('less', 4, 'Affiche le contenu d''un fichier par pages'),
    ('head', 4, 'Affiche les premi??res lignes d''un fichier'),
    ('tail', 4, 'Affiche les derni??res lignes d''un fichier'),
    ('wc', 4, 'Affiche le nombre de lignes, de mots et de caract??res d''un fichier'),
    ('sort', 4, 'Trie le contenu d''un fichier'),
    ('tee', 4, 'Affiche la sortie d''une commande et l''envoie dans un fichier'),
    ('cut', 4, 'Extrait des colonnes d''un fichier'),
    ('paste', 4, 'Colle des fichiers c??te ?? c??te'),
    ('sed', 4, 'Modifie le contenu d''un fichier ou de la sortie d''une commande'),
    ('awk', 4, 'Traite les donn??es d''un fichier ou de la sortie d''une commande'),

    # Nmap
    ('nmap -sS [target]', 5, 'Effectue un scan SYN complet sur la cible sp??cifi??e'),
    ('nmap -sT [target]', 5, 'Effectue un scan TCP connect sur la cible sp??cifi??e'),
    ('nmap -sU [target]', 5, 'Effectue un scan UDP sur la cible sp??cifi??e'),
    ('nmap -sV [target]', 5, 'Essaie de d??terminer les versions des services sur la cible sp??cifi??e'),
    ('nmap -O [target]', 5, 'Essaie de d??terminer le syst??me d''exploitation sur la cible sp??cifi??e'),
    ('nmap -p [port(s)] [target]', 5, 'Scan les port(s) sp??cifi??(s) sur la cible sp??cifi??e'),
    ('nmap -A [target]', 5, 'Active toutes les options d''analyse de service et de version sur la cible sp??cifi??e'),
    ('nmap -n [target]', 5, 'D??sactive la r??solution de nom d''h??te sur la cible sp??cifi??e'),
    ('nmap --top-ports [number] [target]', 5, 'Scan les [number] ports les plus utilis??s sur la cible sp??cifi??e'),
    ('nmap -iL [input file]', 5, 'Scan les cibles sp??cifi??es dans le fichier d''entr??e'),

    # Windows Server
    ('netstat', 6, 'Affiche les connexions r??seau et les ports en ??coute'),
    ('ipconfig', 6, 'Affiche les informations de configuration IP de l''ordinateur'),
    ('nslookup', 6, 'Interroge un serveur DNS pour r??soudre un nom d''h??te en adresse IP ou inversement'),
    ('tracert', 6, 'Affiche le chemin suivi par un paquet de donn??es ?? travers les r??seaux'),
    ('ping', 6, 'Envoie des paquets de donn??es ?? un h??te et affiche le temps de r??ponse'),
    ('tasklist', 6, 'Affiche la liste des processus en cours d''ex??cution'),
    ('taskkill', 6, 'Arr??te un processus'),
    ('driverquery', 6, 'Affiche la liste des pilotes install??s sur l''ordinateur'),
    ('net user', 6, 'G??re les comptes d''utilisateur du domaine'),
    ('net group', 6, 'G??re les groupes du domaine'),
    ('net localgroup', 6, 'G??re les groupes locaux'),
    ('net share', 6, 'G??re les partages r??seau'),
    ('net session', 6, 'Affiche les sessions r??seau'),
    ('net use', 6, 'G??re les connections aux partages r??seau'),
    ('netstat -ano', 6, 'Affiche les ports en ??coute et les processus associ??s'),
    ('net start', 6, 'Affiche ou d??marre les services du syst??me'),
    ('net stop', 6, 'Arr??te les services du syst??me'),
    ('sc', 6, 'G??re les services du syst??me'),
    ('schtasks', 6, 'G??re les t??ches planifi??es'),
    ('reg', 6, '??dite le registre de Windows'),
    ('sfc /scannow', 6, 'Analyse et remplace les fichiers syst??me endommag??s'),

    # Azure
    ('az login', 7, 'Se connecte ?? Azure'),
    ('az account', 7, 'G??re les informations de compte et de souscription'),
    ('az group', 7, 'G??re les groupes de ressources'),
    ('az vm', 7, 'G??re les machines virtuelles'),
    ('az vm create', 7, 'Cr??e une machine virtuelle'),
    ('az vm start', 7, 'D??marre une machine virtuelle'),
    ('az vm stop', 7, 'Arr??te une machine virtuelle'),
    ('az vm restart', 7, 'Red??marre une machine virtuelle'),
    ('az vm delete', 7, 'Supprime une machine virtuelle'),
    ('az vm image', 7, 'G??re les images de machine virtuelle'),
    ('az storage account', 7, 'G??re les comptes de stockage'),
    ('az network', 7, 'G??re les ressources de r??seau'),
    ('az webapp', 7, 'G??re les applications Web'),
    ('az functionapp', 7, 'G??re les applications de fonction'),
    ('az cdn', 7, 'G??re les r??seaux de diffusion de contenu'),
    ('az cosmosdb', 7, 'G??re les bases de donn??es Cosmos'),
    ('az sql', 7, 'G??re les bases de donn??es SQL'),

    # Angular
    ('ng new', 8, 'Cr??e un nouveau projet Angular.'),
    ('ng generate component', 8, 'G??n??re un nouveau composant Angular.'),
    ('ng generate service', 8, 'G??n??re un nouveau service Angular.'),
    ('ng generate directive', 8, 'G??n??re une nouvelle directive Angular.'),
    ('ng generate module', 8, 'G??n??re un nouveau module Angular.'),
    ('ng build', 8, 'Compile l''application Angular en un ensemble de fichiers JavaScript pour le d??ploiement.'),
    ('ng serve', 8, 'D??marre le serveur de d??veloppement pour l''application Angular.'),
    ('ng test', 8, 'Ex??cute les tests unitaires pour l''application Angular.'),
    ('ng lint', 8, 'Analyse le code pour d??tecter les erreurs de syntaxe et les pratiques de codage non recommand??es.'),
    ('ng deploy', 8, 'D??ploie l''application Angular sur une plateforme d''h??bergement.'),

    # C-sharp
    ('dotnet new', 9, 'Cr??e un nouveau projet C#.'),
    ('dotnet run', 9, 'Ex??cute l''application C#.'),
    ('dotnet build', 9, 'Compile l''application C# en un ensemble de fichiers ex??cutables.'),
    ('dotnet publish', 9, 'Publie l''application C# sous forme de fichiers ex??cutables et de fichiers de d??pendances.'),
    ('dotnet test', 9, 'Ex??cute les tests unitaires pour l''application C#.'),
    ('dotnet restore', 9, 'Restaure les packages NuGet pour l''application C#.'),
    ('dotnet add package', 9, 'Ajoute un package NuGet ?? l''application C#.'),
    ('dotnet remove package', 9, 'Supprime un package NuGet de l''application C#.'),
    ('dotnet watch run', 9,
     'D??marre le serveur de d??veloppement pour l''application C# et surveille les modifications du code source.'),
    ('dotnet ef migrations add', 9, 'Ajoute une migration ?? la base de donn??es pour l''application C#.'),

    # Javascript
    ('npm init ', 10, 'Initialise un nouveau projet JavaScript et cr??e un fichier package.json.'),
    ('npm install', 10, 'Installe les d??pendances pour le projet JavaScript ?? partir du fichier package.json.'),
    ('npm start', 10, 'D??marre le serveur de d??veloppement pour le projet JavaScript.'),
    ('npm run build', 10, 'Compile le projet JavaScript en un ensemble de fichiers pour le d??ploiement.'),
    ('npm test', 10, 'Ex??cute les tests unitaires pour le projet JavaScript.'),
    ('npm run lint', 10,
     'Analyse le code pour d??tecter les erreurs de syntaxe et les pratiques de codage non recommand??es.'),
    ('npm run watch', 10,
     'Surveille les modifications du code source et recompile automatiquement le projet JavaScript.'),
    ('npm install -g', 10, 'Installe un package JavaScript global sur votre syst??me.'),
    ('npm update', 10, 'Met ?? jour les packages JavaScript dans le fichier package.json.'),
    ('npm uninstall ', 10, 'D??sinstalle un package JavaScript du projet.'),

    # Java
    ('javac', 11, 'Compile le code source Java en un ensemble de fichiers de classes Java.'),
    ('java', 11, 'Ex??cute le programme Java ?? partir des fichiers de classes Java g??n??r??s.'),
    ('javadoc', 11, 'G??n??re une documentation pour les classes Java ?? partir du code source.'),
    ('jar', 11, 'Cr??e une archive JAR ?? partir des fichiers de classes Java.'),
    ('jdb', 11, 'D??marre le d??bogueur Java pour d??boguer le code source Java.'),
    ('jps', 11, 'Affiche les processus Java en cours d''ex??cution sur la machine.'),
    ('jstack', 11, ' Affiche la pile d''appels pour un processus Java.'),
    ('jstat', 11, 'Affiche les statistiques de performance pour un processus Java.'),
    ('jmap', 11, 'Affiche une carte de m??moire pour un processus Java.'),
    ('javap', 11, 'Affiche les informations de d??compilation pour les fichiers de classes Java.'),

    # Springboot
    ('spring init', 12,
     'Initialise un nouveau projet Spring Boot et cr??e un fichier pom.xml ou build.gradle pour g??rer les d??pendances.'),
    ('mvn spring-boot:run', 12, 'D??marre le serveur de d??veloppement Spring Boot pour l''application.'),
    ('mvn package', 12,
     'Compile l''application Spring Boot en un ensemble de fichiers ex??cutables pour le d??ploiement.'),
    ('mvn spring-boot:run -Dspring.profiles.active=dev', 12,
     'D??marre le serveur de d??veloppement Spring Boot avec le profil dev activ??.'),
    ('mvn clean', 12, 'Nettoie les fichiers g??n??r??s pr??c??demment dans le dossier de destination.'),
    ('mvn install', 12,
     'Installe l''application Spring Boot dans le r??f??rentiel local pour une utilisation ult??rieure.'),
    ('mvn spring-boot:build-image', 12, 'Cr??e une image Docker pour l''application Spring Boot.'),
    ('mvn spring-boot:start', 12, 'D??marre l''application Spring Boot comme un processus de fond.'),
    ('mvn spring-boot:stop', 12, 'Arr??te l''application Spring Boot en cours d''ex??cution.'),
    ('mvn spring-boot:help', 12, 'Affiche l''aide pour les commandes Spring Boot disponibles avec Maven.'),


    # NodeJS
    ('npm init', 13, 'Initialise un nouveau projet Node.js et cr??e un fichier package.json.'),
    ('npm install', 13, 'Installe les d??pendances pour le projet Node.js ?? partir du fichier package.json.'),
    ('node app.js', 13, 'Ex??cute l''application Node.js ?? partir du fichier app.js.'),
    ('npm start', 13, 'D??marre le serveur de d??veloppement pour le projet Node.js.'),
    ('npm run build', 13, 'Compile le projet Node.js en un ensemble de fichiers pour le d??ploiement.'),
    ('npm test', 13, 'Ex??cute les tests unitaires pour le projet Node.js.'),
    ('npm run lint', 13,
     'Analyse le code pour d??tecter les erreurs de syntaxe et les pratiques de codage non recommand??es.'),
    ('npm run watch', 13, 'Surveille les modifications du code source et recompile automatiquement le projet Node.js.'),
    ('npm install -g', 13, 'Installe un package Node.js global sur votre syst??me.'),
    ('npm update', 13, 'Met ?? jour les packages Node.js dans le fichier package.json.'),

    # PHP
    ('php -S localhost:8000', 14, 'D??marre le serveur de d??veloppement PHP sur le port 8000.'),
    ('php -v', 14, 'Affiche la version de PHP install??e sur votre syst??me.'),
    ('php -m', 14, 'Affiche tous les modules PHP install??s sur votre syst??me.'),
    ('php -i', 14, 'Affiche la configuration PHP install??e sur votre syst??me.'),
    ('composer init', 14,
     'Initialise un nouveau projet PHP et cr??e un fichier composer.json pour g??rer les d??pendances.'),
    ('composer install', 14, 'Installe les d??pendances pour le projet PHP ?? partir du fichier composer.json.'),
    ('composer update', 14, 'Met ?? jour les d??pendances pour le projet PHP ?? partir du fichier composer.json.'),
    ('phpunit', 14, 'Ex??cute les tests unitaires pour le projet PHP.'),
    ('php artisan serve', 14, 'D??marre le serveur de d??veloppement Laravel pour l''application.'),
    ('php artisan make:controller', 14, 'G??n??re un nouveau contr??leur pour l''application Laravel.'),

    # Laravel
    ('composer create-project --prefer-dist laravel/laravel', 15,
     'Initialise un nouveau projet Laravel et cr??e une structure de base pour l''application.'),
    ('php artisan serve', 15, 'D??marre le serveur de d??veloppement Laravel pour l''application.'),
    ('php artisan make:model', 15, 'G??n??re un nouveau mod??le pour l''application Laravel.'),
    ('php artisan make:migration', 15,
     'G??n??re une nouvelle migration pour la base de donn??es de l''application Laravel.'),
    ('php artisan make:controller', 15, 'G??n??re un nouveau contr??leur pour l''application Laravel.'),
    ('php artisan make:middleware', 15, 'G??n??re un nouveau middleware pour l''application Laravel.'),
    ('php artisan migrate', 15, 'Ex??cute les migrations de base de donn??es pour l''application Laravel.'),
    ('php artisan tinker ', 15,
     'Ouvre un REPL interactif pour l''application Laravel pour ex??cuter du code PHP et interagir avec la base de donn??es.'),
    ('php artisan queue:work', 15, 'Ex??cute la file d''attente pour l''application Laravel.'),
    ('php artisan route:list', 15, 'Affiche la liste des routes d??finies pour l''application Laravel.'),

    # Python
    ('python', 16, 'Lance l''interpr??teur Python en mode interactif.'),
    ('python fichier.py', 16, 'Ex??cute un script Python stock?? dans un fichier.'),
    ('pip install package', 16, 'Installe un package Python ?? partir du r??pertoire de packages Python.'),
    ('pip uninstall package', 16, 'D??sinstalle un package Python.'),
    ('pip freeze', 16, 'Affiche une liste de tous les packages Python install??s sur le syst??me.'),
    ('virtualenv env', 16, 'Cr??e un nouvel environnement virtuel Python appel?? "env".'),
    ('source env/bin/activate', 16, 'Active l''environnement virtuel "env".'),
    ('python manage.py runserver', 16, 'D??marre le serveur de d??veloppement Django pour l''application Python.'),
    ('python manage.py migrate', 16, 'Ex??cute les migrations de base de donn??es pour l''application Django.'),
    ('python manage.py createsuperuser', 16, 'Cr??e un super utilisateur pour l''application Django.'),

    # Django
    ('django-admin startproject nom_projet', 17,
     'Initialise un nouveau projet Django et cr??e une structure de base pour l''application.'),
    ('python manage.py runserver', 17, 'D??marre le serveur de d??veloppement Django pour l''application Python.'),
    ('python manage.py startapp nom_app', 17, 'Cr??e une nouvelle application Django dans le projet.'),
    ('python manage.py migrate', 17, 'Ex??cute les migrations de base de donn??es pour l''application Django.'),
    ('python manage.py createsuperuser', 17, 'Cr??e un super utilisateur pour l''application Django.'),
    ('python manage.py makemigrations', 17,
     'G??n??re un nouveau fichier de migration pour la base de donn??es de l''application Django.'),
    ('python manage.py migrate --fake', 17,
     'Marque une migration comme d??j?? ex??cut??e sans ex??cuter r??ellement la migration.'),
    ('python manage.py shell', 17,
     'Ouvre une coquille Python interactive pour l''application Django pour ex??cuter du code Python et interagir avec la base de donn??es.'),
    ('python manage.py collectstatic', 17,
     'Collecte tous les fichiers statiques de l''application dans un seul r??pertoire pour le d??ploiement.'),
    ('python manage.py test', 17, 'Ex??cute les tests pour l''application Django.'),

    # React
    ('npx create-react-app nom_projet', 18,
     'Initialise un nouveau projet React et cr??e une structure de base pour l''application.'),
    ('npm start', 18, 'D??marre le serveur de d??veloppement React pour l''application.'),
    ('npm run build', 18, 'Construit l''application React pour la production.'),
    ('npm test', 18, 'Ex??cute les tests pour l''application React.'),
    ('npm install package', 18, 'Installe un package React ?? partir du r??pertoire de packages NPM.'),
    ('npm uninstall package', 18, 'D??sinstalle un package React.'),
    ('npm update package', 18, 'Met ?? jour un package React.'),
    ('npm audit', 18, 'V??rifie les d??pendances de s??curit?? de l''application React.'),
    ('npm run eject', 18, 'Extrait la configuration de build pour l''application React.'),
    ('npm install -g json-server', 18, 'Installe le serveur JSON pour l''application React.'),

    # SQL
    ('SELECT', 19, 'R??cup??re des donn??es ?? partir d''une ou plusieurs tables.'),
    ('FROM', 19, 'Sp??cifie la ou les tables ?? partir desquelles r??cup??rer les donn??es.'),
    ('WHERE', 19, 'Filtre les r??sultats en fonction d''une condition sp??cifi??e.'),
    ('GROUP BY', 19, 'Groupe les r??sultats par une ou plusieurs colonnes.'),
    ('HAVING', 19, 'Filtre les r??sultats de groupe en fonction d''une condition sp??cifi??e.'),
    ('ORDER BY', 19, 'Trie les r??sultats par une ou plusieurs colonnes.'),
    ('JOIN', 19, 'Combine des donn??es ?? partir de deux ou plusieurs tables en fonction d''une condition de jointure.'),
    ('UNION', 19, 'Combine les r??sultats de deux ou plusieurs requ??tes SELECT distinctes.'),
    ('INSERT INTO', 19, 'Ajoute une nouvelle ligne ?? une table.'),
    ('UPDATE', 19, 'Modifie les donn??es d''une ou plusieurs lignes dans une table.'),
    ('DELETE', 19, 'Supprime une ou plusieurs lignes d''une table.'),

    # VueJS
    ('vue create nom_projet', 20,
     'Initialise un nouveau projet Vue.js et cr??e une structure de base pour l''application.'),
    ('npm run serve', 20, 'D??marre le serveur de d??veloppement Vue.js pour l''application.'),
    ('npm run build', 20, 'Construit l''application Vue.js pour la production.'),
    ('npm run test', 20, 'Ex??cute les tests pour l''application Vue.js.'),
    ('vue add package', 20, 'Ajoute un package Vue.js ?? l''application.'),
    ('vue remove package', 20, 'Supprime un package Vue.js de l''application.'),
    ('vue inspect', 20, 'Inspecte les d??pendances et les configurations de l''application Vue.js.'),
    ('vue ui', 20, 'Ouvre une interface utilisateur web pour g??rer les projets et les plugins Vue.js.'),
    ('vue serve fichier.vue', 20, 'Ex??cute un fichier Vue.js isol?? dans un serveur de d??veloppement.'),
    ('vue init webpack nom_projet', 20, 'Initialise un nouveau projet Vue.js avec le mod??le de configuration Webpack.'),

    # Flutter
    ('flutter create nom_projet', 21,
     'Initialise un nouveau projet Flutter et cr??e une structure de base pour l''application.'),
    ('flutter run', 21, 'D??marre l''application Flutter sur un p??riph??rique ??mul?? ou connect??.'),
    ('flutter build', 21, 'Construit l''application Flutter pour la production.'),
    ('flutter test', 21, 'Ex??cute les tests pour l''application Flutter.'),
    ('flutter packages get', 21, 'Installe les packages d??finis dans le fichier pubspec.yaml.'),
    ('flutter packages upgrade', 21, 'Met ?? jour les packages d??finis dans le fichier pubspec.yaml.'),
    ('flutter doctor', 21, 'V??rifie l''??tat de l''installation Flutter et de ses d??pendances.'),
    ('flutter clean', 21, 'Efface les fichiers temporaires et les caches de l''application Flutter.'),
    ('flutter format fichier.dart', 21,
     'Formate le code source d''un fichier Dart selon les r??gles de formatage Flutter.'),
    ('flutter pub run build_runner build', 21,
     'G??n??re le code source pour les annotations et les g??n??riques de build.'),

    # Typescript
    ('tsc', 22,
     'La commande principale pour compiler un fichier TypeScript en un fichier JavaScript. La commande peut ??tre utilis??e avec des options pour sp??cifier le fichier d''entr??e, le fichier de sortie, etc.'),
    ('tsc --init', 22,
     'Cr??er un fichier de configuration TypeScript appel?? tsconfig.json dans votre projet. Ce fichier contient des param??tres qui seront utilis??s lors de la compilation.'),
    ('tsc --watch', 22,
     'Compiler automatiquement votre projet ?? chaque fois que vous apportez des modifications ?? votre code TypeScript.'),
    ('npm install typescript', 22, 'Installer TypeScript localement dans votre projet.'),
    ('npm install -g typescript', 22, 'Installer TypeScript globalement sur votre syst??me.'),
    ('npm install @types/package-name', 22, 'Installer les types de d??finition pour un package JavaScript sp??cifique.'),
    ('tsc --help', 22, 'Afficher une liste compl??te des options disponibles pour la commande tsc.'),
    ('ts-node', 22, 'Ex??cuter des fichiers TypeScript directement sans avoir ?? les compiler au pr??alable.'),
    ('eslint', 22, 'Ex??cuter des analyses statiques sur votre code TypeScript pour d??tecter les erreurs potentielles.'),
    ('jest', 22, 'Ex??cuter des tests unitaires sur votre code TypeScript.'),

    # Golang
    ('go build', 23, 'Compiler votre code Go en un ex??cutable binaire.'),
    ('go run', 23, 'Compiler et ex??cute votre code Go en une seule ??tape'),
    ('go test', 23, 'Ex??cuter les tests unitaires dans votre projet Go.'),
    ('go get', 23, 'Installer des packages Go depuis des d??p??ts distants.'),
    ('go mod init', 23, 'Initialiser un nouveau module Go.'),
    ('go mod tidy', 23, 'Supprimer les packages inutilis??s et mettre ?? jour les d??pendances du module.'),
    ('go mod vendor', 23,
     'Copier les packages d??pendants dans un r??pertoire vendor, ce qui permet de les inclure avec votre code source.'),
    ('go vet', 23, 'Ex??cuter des analyses statiques sur votre code Go pour d??tecter les erreurs potentielles.'),
    ('go fmt', 23, 'Formater automatiquement votre code Go selon les conventions de formatage officielles.'),
    ('go doc', 23, 'Afficher la documentation pour les packages Go install??s localement.'),

    # Android
    ('./gradlew assemble', 24, 'Compiler votre projet Android en un fichier APK.'),
    ('./gradlew installDebug', 24, 'Installer l''APK de d??bogage sur votre appareil Android.'),
    ('./gradlew test', 24, 'Ex??cuter les tests unitaires dans votre projet Android.'),
    ('./gradlew lint', 24,
     'Ex??cuter des analyses statiques sur votre code Android pour d??tecter les erreurs potentielles.'),
    ('./gradlew clean', 24, 'Supprimer les fichiers de compilation et de construction temporaires.'),
    ('./gradlew build', 24, 'Compiler et assembler votre projet Android en un fichier APK.'),
    ('adb', 24, 'Outil de ligne de commande Android Debug Bridge pour communiquer avec votre appareil Android.'),
    ('android avd', 24, 'Outil pour cr??er, g??rer et lancer des ??mulateurs Android.'),
    ('sdkmanager', 24, 'G??rer les packages SDK Android install??s sur votre syst??me.'),
    ('javadoc', 24, 'G??n??rer la documentation Java pour votre code source Android.')
;

INSERT INTO documentation.articles
VALUES (1, 1, 'Presentation Cisco', '<h2>Introduction</h2>

<p>Cisco Systems, Inc. est une entreprise am??ricaine sp??cialis??e dans la technologie de l''information. Elle est connue
    pour ses ??quipements de r??seau, notamment ses routeurs et commutateurs de r??seau, qui sont utilis??s dans de
    nombreuses entreprises et organisations ?? travers le monde.</p>

<h2>Historique de Cisco</h2>

<p>Cisco a ??t?? fond??e en 1984 par Leonard Bosack et Sandy Lerner. L''entreprise s''est rapidement impos??e sur le march??
    des ??quipements de r??seau et a ??t?? l''un des principaux acteurs de l''explosion de l''Internet au d??but des ann??es
    1990. Aujourd''hui, Cisco est l''une des plus grandes entreprises de technologie de l''information au monde.</p>

<h2>Produits et services de Cisco</h2>

<p>Cisco propose une large gamme de produits et de services de r??seau, allant des routeurs et commutateurs aux syst??mes
    de gestion de r??seau et de s??curit??. L''entreprise propose ??galement des solutions de collaboration, de stockage de
    donn??es et de virtualisation de r??seau.</p>

<h2>Importance de Cisco</h2>

<p>Cisco est un acteur majeur dans le domaine de la technologie de l''information et est particuli??rement pr??sent dans le
    monde des r??seaux. Ses ??quipements sont utilis??s par de nombreuses entreprises et organisations ?? travers le monde
    et sont consid??r??s comme ??tant fiables et de qualit??.</p>

<h2>Certifications Cisco</h2>

<p>Cisco propose une gamme de certifications professionnelles reconnues dans le domaine de la technologie de
    l''information. Ces certifications permettent aux professionnels de d??montrer leurs comp??tences et leur expertise en
    mati??re de r??seaux et de technologie de l''information. Les certifications Cisco sont tr??s pris??es par les employeurs
    et peuvent ??tre un atout important pour les professionnels souhaitant ??voluer dans leur carri??re.</p>
'),
       (2, 2, 'Presentation Docker', '
<h2>Introduction</h2>

<p>Docker est un logiciel libre qui permet la cr??ation et l''ex??cution de conteneurs. Un conteneur est un environnement
    isol?? qui permet de d??ployer une application et ses d??pendances de mani??re autonome sur n''importe quel
    ordinateur. Les conteneurs permettent de cloisonner des environnements au niveau de l''OS, de mani??re transportable. Ils sont
    bas??s sur la technologie de virtualisation Linux LXC (Linux Containers).</p>

<h2>Pourquoi utiliser Docker ?</h2>

<ul>
    <li>Facilite le d??ploiement d''applications : pas besoin de s''inqui??ter des diff??rences d''environnement sur les
        diff??rents ordinateurs sur lesquels l''application sera d??ploy??e.
    </li>
    <li>Am??liore la productivit?? : les d??veloppeurs peuvent se concentrer sur leur code sans avoir ?? configurer leur
        environnement de d??veloppement.
    </li>
    <li>Favorise la collaboration : les conteneurs sont faciles ?? partager avec d''autres membres de l''??quipe.</li>
</ul>

<h2>Comment utiliser Docker ?</h2>

<p>Pour utiliser Docker, il faut d''abord <a href="https://docs.docker.com/engine/install/">installer Docker</a> sur
    l''ordinateur

<h2>Ensuite, voici quelques commandes de base pour manipuler les conteneurs :</h2>
<ul>
  <li>docker run : ex??cute une image Docker en cr??ant et en d??marrant un conteneur.</li>
  <li>docker start : d??marre un conteneur arr??t??.</li>
  <li>docker stop : arr??te un conteneur en cours d''ex??cution.</li>
  <li>docker kill : arr??te brutalement un conteneur en cours d''ex??cution.</li>
  <li>docker rm : supprime un ou plusieurs conteneurs.</li>
</ul>

<h2>O?? trouver des images Docker ?</h2>

<p>Il existe plusieurs registries (banques d''images) o?? vous pouvez trouver des images pr??tes ?? l''emploi :</p>
<ul>
  <li>Docker Hub : le registry par d??faut de Docker.</li>
  <li>Quay : un registry priv?? g??r?? par Red Hat.</li>
  <li>GitLab Container Registry : un registry int??gr?? ?? GitLab.</li>
</ul>

<h2>Int??r??t</h2>

<p>L''int??r??t des conteneurs est de pouvoir faire tourner des environnements isol??s les uns des autres dans des conteneurs, tout en se partageant le m??me noyau, par exemple le kernel de Linux.</p>

<h2>Avantages</h2>

<ul>
  <li>Virtualisation uniquement de l''environnement d''ex??cution (processeur, m??moire vive, syst??me de fichiers)</li>
  <li>Pas de virtualisation de toute la machine, donc pas besoin de nouveau OS</li>
  <li>Plus l??ger qu''une machine virtuelle (VM)</li>
  <li>Permet aux d??veloppeurs de faire de la mise en production sans toucher aux infrastructures</li>
</ul>
<h2>Inconv??nients</h2>
<ul>
  <li>Plus difficile et long ?? mettre en place</li>
  <li>Peut ??tre "inutile" ou "trop complexe" pour des petites infrastructures</li>
</ul>'),
       (3, 3, 'Presentation Kubernetes', '<h2>Introduction</h2>

<p>Kubernetes est un syst??me de gestion de conteneurs open source cr???? par Google. Il permet de d??ployer, de scaler et
    de g??rer des applications conteneuris??es sur un cluster de serveurs.</p>

<h2>Historique de Kubernetes</h2>

<p>Kubernetes a ??t?? open-sourc?? par Google en 2014 et est devenu rapidement l''un des syst??mes de gestion de conteneurs
    les plus populaires. Il est maintenant d??velopp?? par la fondation Cloud Native Computing, qui regroupe de nombreuses
    entreprises et organisations du secteur de la technologie de l''information.</p>

<h2>Caract??ristiques de Kubernetes</h2>

<p>Kubernetes permet de d??ployer, de scaler et de g??rer des applications conteneuris??es sur un cluster de serveurs. Il
    offre ??galement de nombreuses fonctionnalit??s de gestion de la disponibilit??, de la scalabilit?? et de la s??curit??
    des applications. Kubernetes est con??u pour ??tre facile ?? utiliser et ?? d??ployer, et est compatible avec de nombreux
    environnements de cloud et de virtualisation.</p>

<img src="https://drive.google.com/uc?export=view&id=1kR8MYmQQuMIf_XmAT1u2Xs0vclDnZL-l" style="margin-left: 30px;">

<p>Un cluster Kubernetes est un ensemble de nodes ex??cutant des applications conteneuris??es. Ces applications sont
    regroup??es dans un package comprenant l''application elle-m??me, ses d??pendances et certains services n??cessaires.</p>

<img src="https://drive.google.com/uc?export=view&id=13_jGO4VrK4SciM4f1yq2Y-laZQ9Jgx05" style="margin-left: 70px;">

<h2>Node</h2>

<p>Un node peut ??tre un serveur physique ou virtuel, et peut ??tre un master ou un node d''ex??cution.</p>

<img src="https://drive.google.com/uc?export=view&id=1hkqYD8UEYLZIuwDRhk2qYFHWsQr8IDnu" style="margin-left: 70px;">

<h2>Pods</h2>

<p>Un pod est un ensemble de conteneurs g??n??ralement li??s, par exemple un serveur Wordpress et une base de donn??es.</p>

<img src="https://drive.google.com/uc?export=view&id=1XWhyjrggJ3Nu1zA8fMCuQQtZS-AEqjd4" style="margin-left: 70px;">

<h2>Services</h2>

<p>Un service est une abstraction des pods, permettant d''??viter la communication par IP (qui peut ??tre changeante dans
    le cas de conteneurs). Un service est accessible via une IP et un port fixe, qui redirigent vers un ou plusieurs
    pods.</p>

<h2>Volumes</h2>

<p>Les volumes sont des emplacements d''??change entre pods, qui peuvent ??tre persistants ou non. Les volumes situ??s ??
    l''int??rieur de pods sont non persistants, tandis que ceux situ??s ?? l''ext??rieur le sont.</p>

<h2>Les d??ploiements</h2>

<p>Les d??ploiements sont des objets de gestion des d??ploiements permettant la cr??ation et la suppression de pods, ainsi
    que la gestion des param??tres de mont??e en charge (scaling).</p>

<h2>Namespaces</h2>

<p>Un namespace est un cluster virtuel, c''est-??-dire un sous-ensemble de services permettant de cloisonner les
    diff??rentes parties d''une application dans Kubernetes.</p>

<h2>Utilisation de Kubernetes</h2>

<p>Kubernetes est souvent utilis?? pour d??ployer et g??rer des applications de microservices. Il est ??galement couramment
    utilis?? pour mettre en place des plateformes de d??veloppement et de test en continu, ainsi que pour impl??menter des
    architectures de cloud hybrides et multicloud.</p>

<h2>B??n??fices de Kubernetes</h2>

<p>Kubernetes est un outil tr??s utile pour les d??veloppeurs et les op??rationnels souhaitant d??ployer et g??rer des
    applications conteneuris??es de mani??re efficace. Il permet de faciliter le d??ploiement et la gestion des
    applications, ainsi que de maximiser leur disponibilit?? et leur scalabilit??.</p>

<img src="https://drive.google.com/uc?export=view&id=1oUSmW-VRkX4f4seJj6ALq5v3MrH0WtYE" style="margin-left: 70px;">
'),
       (4, 4, 'Presentation Linux', '<h2>Introduction</h2>

<p>Linux est un syst??me d''exploitation open-source bas?? sur le noyau Unix. Il a ??t?? cr???? par Linus Torvalds en 1991 et
    est devenu tr??s populaire pour ses performances, sa flexibilit?? et sa stabilit??.</p>

<h2>Caract??ristiques de Linux</h2>

<p>Linux est un syst??me d''exploitation multi-t??ches qui permet ?? plusieurs programmes de s''ex??cuter en m??me temps. Il
    est ??galement portable, ce qui signifie qu''il peut ??tre install?? sur divers types de mat??riel. Linux offre ??galement
    une grande s??curit?? gr??ce ?? ses fonctionnalit??s de contr??le d''acc??s et de gestion de la m??moire.</p>

<h2>Utilisation de Linux</h2>

<p>Linux est largement utilis?? comme syst??me d''exploitation serveur, mais il peut ??galement ??tre utilis?? comme syst??me
    d''exploitation de bureau. Il est aussi utilis?? sur de nombreux appareils tels que les t??l??phones mobiles, les
    t??l??viseurs et les routeurs.</p>

<h2>Distributions de Linux</h2>

<p>Il existe de nombreuses distributions de Linux, chacune avec ses propres caract??ristiques et fonctionnalit??s.
    Certaines distributions populaires incluent Ubuntu, Fedora et CentOS.</p>

<h2>Avantages de Linux</h2>

<p>Linux est un syst??me d''exploitation stable et fiable qui offre une grande flexibilit?? et personnalisation. Il est
    ??galement gratuit et dispose d''une large communaut?? de d??veloppeurs et d''utilisateurs qui contribuent au
    d??veloppement et ?? l''am??lioration de Linux.</p>
'),
       (5, 5, 'Presentation Nmap', '<h2>Introduction</h2>

<p>nmap est un outil de scanner de r??seau open source utilis?? pour d??couvrir les h??tes et les services sur un r??seau, ainsi que pour tester la s??curit?? de ces derniers. Il permet de savoir quels services sont en ??coute sur quels ports et de d??terminer les versions de ces services.</p>

<h2>Historique de nmap</h2>

<p>nmap a ??t?? d??velopp?? par Fyodor Vaskovich en 1997 et est depuis devenue l''une des principales r??f??rences dans le domaine du scanning de r??seau. Elle est souvent utilis??e par les administrateurs syst??me et les professionnels de la s??curit?? pour ??valuer la s??curit?? de leurs r??seaux.</p>

<h2>Caract??ristiques de nmap</h2>

<p>nmap poss??de de nombreuses fonctionnalit??s permettant de scanner les h??tes et les services sur un r??seau. Elle permet notamment de d??couvrir les h??tes actifs sur un r??seau, de d??tecter les ports ouverts et les services associ??s, ainsi que de d??terminer les versions de ces services. Elle peut ??galement ??tre utilis??e pour tester la s??curit?? des r??seaux en effectuant des scans de vuln??rabilit??.</p>

<h2>Utilisation de nmap</h2>

<p>nmap peut ??tre utilis??e de diff??rentes mani??res, en fonction des besoins de l''utilisateur. Elle peut ??tre utilis??e en ligne de commande ou ?? partir d''une interface graphique, et propose de nombreuses options permettant de personnaliser les scans. Elle est disponible sous Windows, Linux et macOS.</p>

<h2>B??n??fices de nmap</h2>

<p>nmap est un outil tr??s utile pour les administrateurs syst??me et les professionnels de la s??curit??. Elle leur permet de d??couvrir et de surveiller les h??tes et les services sur un r??seau, ainsi que de tester la s??curit?? de ces derniers. Elle est ??galement tr??s pratique pour diagnostiquer les probl??mes de r??seau et pour effectuer des audits de s??curit??.</p>
'),
       (6, 6, 'Presentation Windows Server', '<h2>Introduction</h2>

<p>Windows Server est un syst??me d''exploitation de Microsoft con??u pour les environnements de serveur. Il offre une
    large gamme de fonctionnalit??s pour g??rer les r??seaux d''entreprise, le stockage de donn??es et les applications.</p>

<h2>Histoire de Windows Server</h2>

<p>Windows Server a ??t?? lanc?? pour la premi??re fois en 1993 sous le nom de Windows NT 3.1. Depuis lors, de nouvelles
    versions ont ??t?? lanc??es tous les quelques ann??es, chacune apportant de nouvelles fonctionnalit??s et am??liorations.
    La derni??re version en date est Windows Server 2019.</p>

<h2>Fonctionnalit??s de Windows Server</h2>

<p>Windows Server offre de nombreuses fonctionnalit??s pour les entreprises, notamment la gestion de l''active directory,
    le stockage en r??seau, la virtualisation et la gestion des licences. Il dispose ??galement de fonctionnalit??s de
    s??curit?? avanc??es et de contr??le d''acc??s pour prot??ger les donn??es et les r??seaux.</p>

<h2>Utilisation de Windows Server</h2>

<p>Windows Server est souvent utilis?? comme syst??me d''exploitation de serveur dans les entreprises de toutes tailles. Il
    peut ??tre utilis?? pour h??berger des applications, des bases de donn??es et d''autres services tels que le partage de
    fichiers et l''impression.</p>

<h2>Avantages de Windows Server</h2>

<p>Windows Server offre une grande compatibilit?? avec les autres produits de Microsoft, ce qui en fait un choix
    populaire pour les entreprises utilisant d??j?? d''autres produits de Microsoft. Il est ??galement facile ?? utiliser et
    dispose de nombreuses fonctionnalit??s pour la gestion des r??seaux d''entreprise.</p>
'),
       (7, 7, 'Presentation Azure', '<h2>Introduction</h2>
<p>Microsoft Azure est une plateforme de cloud computing qui offre une large gamme de services informatiques en ligne, tels que des machines virtuelles, du stockage, du r??seautage, des bases de donn??es, du d??veloppement d''applications, de l''analyse de donn??es et de l''IA.</p>
<h2>Pourquoi utiliser Azure ?</h2>
<p>Azure permet aux d??veloppeurs de cr??er, d??ployer et g??rer des applications et des services de mani??re rapide et ??conomique, sans avoir ?? se soucier de l''infrastructure sous-jacente.</p>
<p>Azure est disponible dans de nombreux datacenters ?? travers le monde, ce qui permet aux utilisateurs de choisir l''emplacement le plus proche de leurs utilisateurs pour une meilleure performance.</p>
<h2>Quels outils de d??veloppement sont disponibles sur Azure ?</h2>
<p>Azure offre de nombreux outils de d??veloppement int??gr??s, tels que Visual Studio et GitHub, ainsi que des API et des biblioth??ques pour de nombreux langages de programmation et frameworks populaires.</p>
<h2>Quels services de donn??es sont disponibles sur Azure ?</h2>
<p>Azure propose de nombreux services de donn??es, tels que Azure Cosmos DB et Azure SQL Database, qui permettent aux d??veloppeurs de stocker et de g??rer facilement des donn??es ?? grande ??chelle.</p>
<h2>Quels services de machine learning et d''IA sont disponibles sur Azure ?</h2>
<p>Azure est connu pour ses services de machine learning et de intelligence artificielle, tels que Azure Machine Learning et Azure Cognitive Services, qui permettent aux d??veloppeurs de cr??er facilement des applications de traitement du langage naturel, de reconnaissance de la parole et de reconnaissance d''image.</p>
<h2>En r??sum??</h2>
<p>En r??sum??, Microsoft Azure est une plateforme de cloud computing polyvalente et puissante qui offre un large ??ventail de services informatiques en ligne pour aider les d??veloppeurs ?? cr??er, d??ployer et g??rer facilement des applications et des services de mani??re ??conomique.</p>
'),
       (8, 8, 'Presentation Angular', '<h2>Introduction</h2>

<p>Angular est un framework open source de d??veloppement Web c??t?? client cr???? par Google en 2010. Il est bas?? sur le
    langage de programmation JavaScript et permet de cr??er des applications Web dynamiques et riches en
    fonctionnalit??s.</p>

<h2>Caract??ristiques d''Angular</h2>

<p>Angular est un framework complet qui inclut tout ce dont un d??veloppeur a besoin pour cr??er une application Web. Il
    utilise le mod??le de vue-mod??le-contr??leur (MVC) pour s??parer la vue (l''interface utilisateur) du mod??le (les
    donn??es) et du contr??leur (la logique de l''application). Angular utilise ??galement des composants pour structurer
    une application en petites parties r??utilisables.</p>

<h2>Utilisation d''Angular</h2>

<p>Angular est principalement utilis?? pour cr??er des applications Web dynamiques et riches en fonctionnalit??s. Il est
    souvent utilis?? conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>B??n??fices d''Angular</h2>

<p>Angular est un framework de d??veloppement Web populaire et largement utilis??. Il permet de cr??er des applications Web
    dynamiques de mani??re rapide et efficace, et dispose d''une grande communaut?? de d??veloppeurs qui contribuent ?? son
    d??veloppement et ?? sa documentation. En utilisant Angular, les d??veloppeurs peuvent ??galement b??n??ficier de la
    structure MVC et des composants pour cr??er des applications Web organis??es et r??utilisables.</p>

<h2>Get Started</h2>

<pre><code class="language-javascript">import { Component } from ''@angular/core'';

    @Component({
      selector: ''app-root'',
      templateUrl: ''./app.component.html'',
      styleUrls: [''./app.component.css'']
    })
    export class AppComponent {
      title = ''mon-premier-projet'';
    }
    </code></pre>

<p>Ce code importe le composant de base d''Angular et d??finit un composant appel?? "AppComponent" avec un titre de
    "mon-premier-projet". Le s??lecteur "app-root" indique que ce composant sera utilis?? comme racine de l''application et
    les templates et styles associ??s sont d??finis dans les fichiers de template et de style respectifs.</p>'),
       (9, 9, 'Presentation C-Sharp', '<h2>Introduction</h2>

<p>C# est un langage de programmation orient?? objet d??velopp?? par Microsoft. Il a ??t?? cr???? en 2000 et est utilis??
    principalement pour le d??veloppement d''applications Windows, mais peut ??galement ??tre utilis?? pour le d??veloppement
    d''applications Web, mobile et de jeux vid??o.</p>

<h2>Caract??ristiques de C-Sharp</h2>

<p>C# utilise une syntaxe de programmation similaire ?? d''autres langages tels que C++ et Java, et est bas?? sur le
    concept d''objets. Il prend en charge les fonctionnalit??s de programmation orient??e objet telles que l''h??ritage, le
    polymorphisme et l''encapsulation. C# est ??galement dot?? de nombreuses biblioth??ques de classes pr??d??finies qui
    facilitent le d??veloppement d''applications.</p>

<h2>Utilisation de C-Sharp</h2>

<p>C# est principalement utilis?? pour le d??veloppement d''applications Windows, mais peut ??galement ??tre utilis?? pour le
    d??veloppement d''applications Web, mobile et de jeux vid??o. Il est souvent utilis?? conjointement avec d''autres
    technologies telles que .NET et ASP.NET.</p>

<h2>B??n??fices de C-Sharp</h2>

<p>C# est un langage de programmation populaire et largement utilis?? pour le d??veloppement d''applications Windows. Il
    dispose d''une grande communaut?? de d??veloppeurs qui contribuent ?? son d??vel
'),
       (10, 10, 'Presentation Javascript', '<h2>Introduction</h2>

<p>JavaScript est l''un des langages de programmation les plus populaires utilis??s pour d??velopper des applications web interactives. Il est souvent utilis?? en tandem avec HTML et CSS pour cr??er des pages web dynamiques.</p>

<h2>Caract??ristiques de JavaScript</h2>

<p>JavaScript est un langage de programmation orient?? objet qui permet aux d??veloppeurs de cr??er des applications web riches et interactives. Voici quelques-unes de ses caract??ristiques cl??s:</p>

<ul>
  <li>Langage de script : JavaScript est un langage de script qui est interpr??t?? par le navigateur web. Il peut ??tre utilis?? pour ajouter des fonctionnalit??s dynamiques ?? une page web, telles que des animations, des effets de d??filement, des changements de style et plus encore.</li>
  <li>Syntaxe similaire ?? Java : La syntaxe de JavaScript est similaire ?? celle de Java, ce qui facilite l''apprentissage pour les d??veloppeurs Java. Cependant, JavaScript est un langage plus flexible que Java et offre plus de fonctionnalit??s.</li>
  <li>Types de donn??es dynamiques : Les variables en JavaScript peuvent ??tre de diff??rents types de donn??es, tels que des nombres, des cha??nes de caract??res, des tableaux, des objets, etc. Les types de donn??es peuvent ??galement ??tre modifi??s dynamiquement, ce qui offre une grande flexibilit?? pour les d??veloppeurs.</li>
  <li>Biblioth??ques et frameworks : JavaScript dispose d''une large gamme de biblioth??ques et de frameworks, tels que React, Angular et Vue.js, qui facilitent le d??veloppement d''applications web. Ces outils offrent des fonctionnalit??s pr??con??ues, ce qui permet aux d??veloppeurs de gagner du temps et d''am??liorer la qualit?? de leur code.</li>
</ul>

<h2>Utilisations de JavaScript</h2>

<p>JavaScript est principalement utilis?? pour d??velopper des applications web, mais il peut ??galement ??tre utilis?? pour cr??er des applications mobiles, des extensions de navigateur, des applications de bureau et plus encore. Voici quelques exemples d''utilisation de JavaScript:</p>

<ul>
  <li>Interaction utilisateur : JavaScript est utilis?? pour ajouter des fonctionnalit??s interactives aux pages web, telles que des menus d??roulants, des boutons cliquables, des diaporamas et plus encore.</li>
  <li>Validation de formulaire : JavaScript peut ??tre utilis?? pour valider les donn??es entr??es dans un formulaire, telles que la v??rification d''adresses e-mail, la v??rification des champs obligatoires et plus encore.</li>
  <li>Applications web dynamiques : JavaScript est utilis?? pour cr??er des applications web dynamiques, telles que des cartes interactives, des applications de traitement de texte en ligne, des jeux en ligne et plus encore.</li>
  <li>Applications mobiles : JavaScript peut ??tre utilis?? pour cr??er des applications mobiles hybrides, qui sont des applications mobiles d??velopp??es ?? l''aide de technologies web comme HTML, CSS et JavaScript.</li>
</ul>

<h2>Conclusion</h2>

<p>JavaScript est un langage de programmation puissant et flexible qui est largement utilis?? pour d??velopper des applications web interactives. Avec sa syntaxe similaire ?? Java, ses types de donn??es dynamiques et ses biblioth??ques et frameworks, JavaScript offre aux d??veloppeurs une grande flexibilit?? pour cr??er des applications web
'),
       (11, 11, 'Presentation Java', '<h2>Introduction</h2>

<p>Java est un langage de programmation orient?? objet cr???? par Sun Microsystems (maintenant propri??t?? d''Oracle) en 1995.
    Il est con??u pour ??tre facile ?? apprendre et ?? utiliser, et est utilis?? pour d??velopper une large gamme
    d''applications, allant des applications de bureau aux applications mobiles en passant par les applications Web.</p>

<h2>Caract??ristiques de Java</h2>

<p>Java est un langage de programmation interpr??t??, ce qui signifie qu''il n''est pas n??cessaire de le compiler avant de
    l''ex??cuter. Il est ??galement ind??pendant de la plateforme, ce qui signifie qu''une application Java peut ??tre
    ex??cut??e sur n''importe quel syst??me d''exploitation compatible. Java est ??galement un langage de programmation
    orient?? objet, ce qui signifie qu''il permet de d??finir et de manipuler des objets dans un programme.</p>

<h2>Utilisation de Java</h2>

<p>Java est utilis?? pour d??velopper une large gamme d''applications, allant des applications de bureau aux applications
    mobiles en passant par les applications Web. Il est ??galement utilis?? pour d??velopper des applications Android et
    des jeux vid??o.</p>

<h2>B??n??fices de Java</h2>

<p>Java est un langage de programmation tr??s populaire et largement utilis?? dans le monde de l''informatique. Il est
    facile ?? apprendre et ?? utiliser, et est compatible avec de nombreuses plateformes. Java est ??galement un langage de
    programmation stable et s??curis??, ce qui en fait un choix judicieux pour les d??veloppeurs professionnels.</p>'),
       (12, 12, 'Presentation Springboot', '<h2>Introduction</h2>

<p>Spring Boot est un framework open source de d??veloppement d''applications Java cr???? par Pivotal. Il vise ?? simplifier
    la cr??ation d''applications Java en offrant un ensemble de fonctionnalit??s pr??tes ?? l''emploi, telles que l''injection
    de d??pendances, le support de diff??rentes bases de donn??es et la gestion des erreurs.</p>

<h2>Caract??ristiques de Spring Boot</h2>

<p>Spring Boot utilise le framework Spring pour offrir un ensemble de fonctionnalit??s de d??veloppement d''applications
    Java. Il permet de configurer facilement des applications ?? l''aide de fichiers de configuration, et offre un support
    int??gr?? pour diff??rentes bases de donn??es et technologies de persistance de donn??es. Spring Boot utilise ??galement
    un syst??me de d??marrage rapide pour d??marrer rapidement une application.</p>

<h2>Utilisation de Spring Boot</h2>

<p>Spring Boot est principalement utilis?? pour cr??er des applications Java autonomes qui peuvent ??tre d??ploy??es sur
    n''importe quel environnement. Il est souvent utilis?? conjointement avec d''autres technologies Java telles que JPA,
    Hibernate et Spring MVC.</p>

<h2>B??n??fices de Spring Boot</h2>

<p>Spring Boot est un framework de d??veloppement d''applications Java populaire et largement utilis??. Il permet de cr??er
    des applications Java de mani??re rapide et efficace, et dispose d''une grande communaut?? de d??veloppeurs qui
    contribuent ?? son d??veloppement et ?? sa documentation. En utilisant Spring Boot, les d??veloppeurs peuvent ??galement
    b??n??ficier de l''ensemble de fonctionnalit??s propos?? par le framework Spring, ainsi que du syst??me de d??marrage
    rapide pour d??marrer rapidement une application.</p>

<h2>Get Started</h2>

<pre><code>import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
public class MonPremierProjetApplication {
    public static void main(String[] args) {
    SpringApplication.run(MonPremierProjetApplication.class, args);
    }
}
</code></pre>

<p>Ce code d??finit une classe d''application Spring Boot appel??e "MonPremierProjetApplication" avec la annotation <code>@SpringBootApplication</code>.
    La m??thode <code>main</code> est utilis??e pour lancer l''application en utilisant la m??thode <code>SpringApplication.run</code>.
</p>'),
       (13, 13, 'Presentation NodeJS', '<h2>Introduction</h2>

<p>Node.js est un environnement d''ex??cution JavaScript c??t?? serveur. Il permet d''ex??cuter du code JavaScript en dehors d''un navigateur Web, sur un serveur par exemple.</p>

<h2>Caract??ristiques de Node.js</h2>

<p>Node.js utilise l''engine JavaScript V8 de Google, qui permet d''ex??cuter du code JavaScript de mani??re rapide et efficace. Node.js utilise ??galement un mod??le d''ex??cution asynchrone bas?? sur les ??v??nements, ce qui le rend particuli??rement adapt?? aux applications r??seau ?? haut d??bit.</p>

<h2>B??n??fices de Node.js</h2>

<p>Node.js est un environnement d''ex??cution JavaScript populaire et largement utilis??. Il permet de cr??er des applications r??seau performantes et scalable, et dispose d''une grande communaut?? de d??veloppeurs qui contribuent ?? son d??veloppement et ?? sa documentation. En utilisant Node.js, les d??veloppeurs peuvent ??galement b??n??ficier de l''engine JavaScript V8 et du mod??le d''ex??cution asynchrone pour cr??er des applications r??seau rapides et efficaces.</p>

<h2>Utilisation de Node.js</h2>

<p>Node.js est principalement utilis?? pour cr??er des applications r??seau ?? haut d??bit et des API (interfaces de programmation d''applications). Il est souvent utilis?? conjointement avec d''autres technologies Web telles que HTTP et TCP.</p>

<h2>Get Started</h2>

<pre><code>const http = require(''http'');

const hostname = ''127.0.0.1'';
const port = 3000;

const server = http.createServer((req, res) =&gt; {
  res.statusCode = 200;
  res.setHeader(''Content-Type'', ''text/plain'');
  res.end(''Hello World\n'');
});

server.listen(port, hostname, () =&gt; {
  console.log(`Server running at http://${hostname}:${port}/`);
});
</code></pre>

<p>Ce code cr??e un serveur HTTP qui ??coute sur le port 3000 et affiche "Hello World" ?? chaque requ??te re??ue.</p>
'),
       (14, 14, 'Presentation PHP', '<h2>Introduction</h2>
<p>PHP est un langage de programmation open source utilis?? principalement pour le d??veloppement de sites web. Il est
    ex??cut?? c??t?? serveur et permet de g??n??rer du contenu dynamique en fonction des requ??tes des utilisateurs.</p>

<h2>Histoire de PHP</h2>
<p>PHP (acronyme de "PHP: Hypertext Preprocessor") a ??t?? cr???? en 1994 par Rasmus Lerdorf. Au d??part, il s''agissait d''un
    ensemble de scripts en Perl destin??s ?? g??rer les formulaires du site web de Lerdorf. PHP est rapidement devenu
    populaire en raison de sa simplicit?? et de sa flexibilit??.</p>

<h2>Utilisation de PHP</h2>
<p>PHP peut ??tre utilis?? de diff??rentes mani??res :</p>
<ul>
    <li>En combinaison avec le HTML dans les pages web</li>
    <li>Pour cr??er des scripts de commande</li>
    <li>Pour ??crire des applications web compl??tes</li>
</ul>

<h2>Avantages de PHP</h2>

<ul>
    <li>PHP est open source et gratuit</li>
    <li>Il est compatible avec la plupart des serveurs web et syst??mes d''exploitation</li>
    <li>Il est facile ?? apprendre et ?? utiliser</li>
    <li>De nombreuses librairies et frameworks sont disponibles pour ??tendre les fonctionnalit??s de PHP</li>
</ul>

<h2>Inconv??nients de PHP</h2>

<ul>
    <li>PHP peut ??tre moins performant que d''autres langages de programmation c??t?? serveur</li>
    <li>La qualit?? du code peut varier en raison de la grande flexibilit?? offerte par le langage</li>
</ul>

<h2>Conclusion</h2>

<p>PHP est un langage de programmation largement utilis?? pour le d??veloppement de sites web. Gr??ce ?? sa simplicit?? et ??
    sa flexibilit??, il est facile ?? apprendre et ?? utiliser, mais peut parfois ??tre moins performant que d''autres
    langages.</p>'),
       (15, 15, 'Presentation Laravel', '<h2>Introduction</h2>

<p>Laravel est un framework PHP open-source utilis?? pour le d??veloppement de sites web. Il a ??t?? cr???? en 2011 par Taylor Otwell.</p>

<h2>Avantages de Laravel</h2>

<ul>
    <li>Facilit?? d''utilisation gr??ce ?? une syntaxe claire et expressive</li>
    <li>Inclus un ORM (Object-Relational Mapping) pour une gestion simplifi??e de la base de donn??es</li>
    <li>Mises ?? jour fr??quentes et documentations compl??tes</li>
    <li>Grande communaut?? active et soutien de la part de la fondation Laravel</li>
</ul>

<h2>Fonctionnalit??s de Laravel</h2>

<ul>
    <li>Syst??me de routage avanc??</li>
    <li>Gestion des formulaires et des validateurs</li>
    <li>Int??gration de Blade, un moteur de template simple et efficace</li>
    <li>Gestion des sessions et des cookies</li>
    <li>Support de plusieurs bases de donn??es et de migrations de bases de donn??es</li>
    <li>Gestion des t??ches planifi??es et des commandes en arri??re-plan</li>
    <li>Int??gration de paquets tels que Cashier, Envoy, Horizon et Passport pour une expansion facile de l''application</li>
</ul>

<h2>Exemples d''utilisation de Laravel</h2>

<p>Laravel est souvent utilis?? pour la cr??ation de sites web ?? fort traffic, de sites e-commerce et de syst??mes de gestion de contenu (CMS). Quelques exemples populaires d''applications Laravel incluent:</p>

<ul>
    <li>Laravel Spark</li>
    <li>Laravel Cashier</li>
    <li>Laravel Nova</li>
    <li>Laravel Echo</li>
    <li>Laravel Horizon</li>
</ul>

<h1>Get Started</h1>

<p>Voici un exemple de code de base pour une application Laravel :</p>

<pre><code>&lt;?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view(''home'');
    }
}
</code></pre>

<p>Ce code d??finit un contr??leur de l''application appel?? <code>HomeController</code>, qui contient une m??thode <code>index</code> qui retourne la vue <code>home</code>. La vue <code>home</code> est un fichier HTML situ?? dans le r??pertoire <code>resources/views/</code>.</p>

<p>Ressources pour apprendre Laravel :</p>
<ul>
    <li>Documentation officielle de Laravel: <a href="https://laravel.com/docs">https://laravel.com/docs</a></li>
    <li>Tutoriels sur YouTube: <a href="https://www.youtube.com/watch?v=EU7PRmCpx-0&t=6s">https://www.youtube.com/watch?v=EU7PRmCpx-0&t=6s</a></li>
    <li>Livres sur Laravel: <a href="https://laravel.com/books">https://laravel.com/books</a></li>
    <li>Cours en ligne: <a href="https://laracasts.com/series/laravel-from-scratch-2018">https://laracasts.com/series/laravel-from-scratch-2018</a></li>
</ul>
'),
       (16, 16, 'Presentation Python', '<h2>Introduction</h2>

<p>Python est un langage de programmation open source cr???? en 1991 par Guido van Rossum. Il est con??u pour ??tre facile ??
    lire et ?? ??crire, et est utilis?? dans de nombreux domaines, tels que la science des donn??es, le d??veloppement Web,
    la cr??ation de jeux et la programmation syst??me.</p>

<h2>Caract??ristiques de Python</h2>

<p>Python est un langage de programmation interpr??t??, ce qui signifie qu''il n''est pas n??cessaire de le compiler avant de
    l''ex??cuter. Il est ??galement un langage de programmation orient?? objet, ce qui signifie qu''il permet de d??finir et
    de manipuler des objets dans un programme. Python est connu pour ??tre facile ?? lire et ?? ??crire et pour sa
    communaut?? de d??veloppeurs active.</p>

<h2>Utilisation de Python</h2>

<p>Python est utilis?? dans de nombreux domaines, tels que la science des donn??es, le d??veloppement Web, la cr??ation de
    jeux et la programmation syst??me. Il est ??galement souvent utilis?? comme langage de script pour automatiser des
    t??ches courantes.</p>

<h2>B??n??fices de Python</h2>

<p>Python est un langage de programmation populaire et largement utilis?? dans le monde de l''informatique. Il est facile
    ?? apprendre et ?? utiliser, et dispose d''une grande communaut?? de d??veloppeurs qui contribuent ?? son d??veloppement et
    ?? sa documentation. Python est ??galement tr??s polyvalent et peut ??tre utilis?? pour de nombreux projets diff??rents.
    Il est ??galement tr??s populaire dans la communaut?? de la science des donn??es en raison de sa puissance et de sa
    facilit?? d''utilisation pour l''analyse de donn??es. Enfin, Python dispose d''une grande biblioth??que standard et de
    nombreuses biblioth??ques tierces, ce qui en fait un choix judicieux pour les d??veloppeurs professionnels.</p>
'),
       (17, 17, 'Presentation Django', '<h2>Introduction</h2>

<p>Django est un framework de d??veloppement web open-source ??crit en Python. Il vise ?? fournir une structure solide pour
    d??velopper des applications web de mani??re rapide et s??curis??e.</p>

<h2>Pourquoi utiliser Django ?</h2>

<p>Django offre de nombreux avantages pour le d??veloppement web :</p>

<ul>
    <li>Un mod??le de donn??es robuste et flexible</li>
    <li>Un moteur de templates puissant</li>
    <li>Une gestion des formulaires simplifi??e</li>
    <li>Un syst??me de gestion des utilisateurs et des permissions</li>
    <li>Un support pour les bases de donn??es relationnelles et NoSQL</li>
    <li>Un syst??me de gestion des URLs clairs et intuitifs</li>
    <li>Un m??canisme de traduction pour le d??veloppement de sites multilingues</li>
</ul>

<h2>Get Started</h2>

<p>Pour utiliser Django, vous devrez d''abord l''installer sur votre ordinateur. Vous pouvez le faire en utilisant pip, le
    gestionnaire de packages Python.</p>

<pre><code>pip install Django
</code></pre>

<p>Une fois Django install??, vous pouvez commencer ?? cr??er votre application. Django utilise le concept de projet et
    d''application pour organiser le code. Un projet peut contenir plusieurs applications, chacune ??tant d??di??e ?? une
    fonctionnalit?? sp??cifique.</p>

<p>Pour cr??er un projet Django, vous pouvez utiliser la commande <code>django-admin startproject</code></p>

<pre><code>python manage.py startapp mon_app
</code></pre>

<p>Une fois votre projet et votre application cr????s, vous pouvez commencer ?? d??velopper votre site web en ajoutant du
    code Python dans les fichiers de votre application.</p>

<p>Voici un exemple de code de base pour une application Django:</p>
'),
       (18, 18, 'Presentation React', '<h2>Introduction</h2>

<p>React est un framework open source de d??veloppement Web c??t?? client cr???? par Facebook en 2013. Il est bas?? sur le
    langage de programmation JavaScript et permet de cr??er des interfaces utilisateur dynamiques et r??actives.</p>

<h2>Caract??ristiques de React</h2>

<p>React utilise une approche de d??veloppement bas??e sur les composants, qui permettent de structurer une interface
    utilisateur en petites parties r??utilisables. Chaque composant est ind??pendant et peut ??tre mis ?? jour de mani??re
    autonome sans affecter le reste de l''application. React utilise ??galement un m??canisme de mise ?? jour de l''interface
    utilisateur appel?? "reconnaissance de la modification", qui permet de mettre ?? jour uniquement les parties de
    l''interface qui ont chang??.</p>

<h2>B??n??fices de React</h2>

<p>React est un framework de d??veloppement Web populaire et largement utilis??. Il permet de cr??er des interfaces
    utilisateur dynamiques de mani??re rapide et efficace, et dispose d''une grande communaut?? de d??veloppeurs qui
    contribuent ?? son d??veloppement et ?? sa documentation. En utilisant React, les d??veloppeurs peuvent ??galement
    b??n??ficier de l''approche bas??e sur les composants et de la reconnaissance de la modification pour cr??er des
    interfaces utilisateur organis??es et efficaces.</p>

<h2>Utilisation de React</h2>

<p>React est principalement utilis?? pour cr??er des interfaces utilisateur dynamiques et r??actives. Il est souvent
    utilis?? conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>Get Started</h2>

<p>Exemple de code de base pour application React :</p>

<pre><code>import React from ''react'';
import ReactDOM from ''react-dom'';

const App = () =&gt; {
  return &lt;div&gt;Bienvenue dans mon premier projet React !&lt;/div&gt;;
};

ReactDOM.render(&lt;App /&gt;, document.getElementById(''root''));

</code></pre>

<p>Ce code importe les modules <code>React</code> et <code>ReactDOM</code> et d??finit une fonction de composant appel??e
    <code>App</code>. Le composant <code>App</code> affiche un message de bienvenue. La m??thode
    <code>ReactDOM.render</code> est utilis??e pour afficher le composant <code>App</code> dans l''??l??ment HTML avec l''ID
    "root".
</p>'),
       (19, 19, 'Presentation SQL', '<h2>Introduction</h2>

<p>SQL (Structured Query Language) est un langage de programmation utilis?? pour communiquer avec une base de donn??es
    relationnelle. Il permet de cr??er, de manipuler et de g??rer des donn??es stock??es dans une base de donn??es.</p>

<h2>Utilisation de SQL</h2>

<p>SQL est utilis?? pour :</p>

<ul>
    <li>Cr??er des bases de donn??es et des tables</li>
    <li>Ins??rer, mettre ?? jour et supprimer des donn??es dans les tables</li>
    <li>S??lectionner des donn??es ?? partir des tables</li>
    <li>Cr??er, modifier et supprimer des structures de base de donn??es (tables, vues, index, etc.)</li>
    <li>Ex??cuter des commandes de contr??le de donn??es (transactions, verrous)</li>

</ul>

<h2>Syntaxe de base de SQL</h2>

<p>Voici quelques exemples de syntaxe de base de SQL :</p>

<ul>
    <li>SELECT permet de s??lectionner des colonnes dans une table</li>
    <li>FROM indique la table ?? partir de laquelle les donn??es doivent ??tre s??lectionn??es</li>
    <li>WHERE permet de filtrer les r??sultats en fonction d''une condition</li>
    <li>INSERT INTO permet d''ins??rer des donn??es dans une table</li>
    <li>UPDATE permet de mettre ?? jour des donn??es existantes dans une table</li>
    <li>DELETE permet de supprimer des donn??es d''une table</li>
</ul>

<p>SQL supporte plusieurs types de donn??es, tels que :</p>

<ul>
    <li>Nombres entiers (INT)</li>
    <li>Nombres ?? virgule flottante (FLOAT)</li>
    <li>Cha??nes de caract??res (VARCHAR)</li>
    <li>Date et heure (DATETIME)</li>
</ul>

'),
       (20, 20, 'Presentation VueJS', '<h2>Introduction</h2>

<p>Vue.js est un framework open source de d??veloppement Web c??t?? client cr???? en 2014. Il est bas?? sur le langage de
    programmation JavaScript et permet de cr??er des interfaces utilisateur dynamiques et r??actives.</p>

<h2>Caract??ristiques de Vue.js</h2>

<p>Vue.js utilise une approche de d??veloppement bas??e sur les composants, qui permettent de structurer une interface
    utilisateur en petites parties r??utilisables. Chaque composant est ind??pendant et peut ??tre mis ?? jour de mani??re
    autonome sans affecter le reste de l''application. Vue.js utilise ??galement un m??canisme de mise ?? jour de
    l''interface utilisateur appel?? "reconnaissance de la modification", qui permet de mettre ?? jour uniquement les
    parties de l''interface qui ont chang??.</p>

<h2>Utilisation de Vue.js</h2>

<p>Vue.js est principalement utilis?? pour cr??er des interfaces utilisateur dynamiques et r??actives. Il est souvent utilis?? conjointement avec d''autres technologies Web telles que HTML, CSS et JavaScript.</p>

<h2>B??n??fices de Vue.js</h2>

<p>Vue.js est un framework de d??veloppement Web populaire et largement utilis??. Il permet de cr??er des interfaces utilisateur dynamiques de mani??re rapide et efficace, et dispose d''une grande communaut?? de d??veloppeurs qui contribuent ?? son d??veloppement et ?? sa documentation. En utilisant Vue.js, les d??veloppeurs peuvent ??galement b??n??ficier de l''approche bas??e sur les composants et de la reconnaissance de la modification pour cr??er des interfaces utilisateur organis??es et efficaces.</p>

<h2>Get Started</h2>

<pre><code>&lt;template&gt;
  &lt;div&gt;Bienvenue dans mon premier projet Vue.js !&lt;/div&gt;
&lt;/template&gt;

&lt;script&gt;
export default {
  name: ''App''
}
&lt;/script&gt;

&lt;style&gt;
/* Styles ici */
&lt;/style&gt;
</code></pre>

<p>Ce code d??finit un composant Vue.js appel?? "App" avec un template qui affiche un message de bienvenue. Le script d??finit les options du composant, telles que son nom. Le style peut ??tre utilis?? pour appliquer des styles au composant.</p>
'),
       (21, 21, 'Presentation Flutter', '<h2>Introduction</h2>

<p>Flutter est un framework open-source de d??veloppement d''applications mobiles cr???? par Google. Il permet de d??velopper
    des applications iOS et Android de mani??re rapide et efficace en utilisant un seul codebase.</p>
<h2>Les avantages de Flutter</h2>

<ul>
    <li>Flutter utilise le langage de programmation Dart, qui est facile ?? apprendre et ?? utiliser.</li>
    <li>Flutter propose un kit de d??veloppement complet (SDK) avec tous les outils n??cessaires pour d??velopper, tester
        et d??ployer des applications mobiles.
    </li>
    <li>Flutter offre une exp??rience de d??veloppement fluide gr??ce ?? son syst??me de "hot reload", qui permet de voir les
        changements apport??s au code en temps r??el sur l''??mulateur ou l''appareil de test.
    </li>
    <li>Flutter fournit une biblioth??que de widgets riche et personnalisable, qui permet de cr??er des interfaces
        utilisateur attrayantes et coh??rentes sur les diff??rentes plateformes.
    </li>
    <li>Flutter est performant et peut g??rer des applications ?? hautes exigences en termes de performances, gr??ce ?? sa
        compilation en code natif.
    </li>
</ul>

<h2>Cas d''utilisation de Flutter</h2>

<ul>
    <li>Flutter est id??al pour les d??veloppeurs ind??pendants et les petites ??quipes souhaitant d??velopper rapidement des
        applications de qualit?? pour les deux principales plateformes mobiles.
    </li>
    <li>Flutter peut ??galement ??tre utilis?? par les entreprises pour d??velopper des applications internes ou pour des
        projets ?? long terme.
    </li>
    <li>Flutter est particuli??rement adapt?? aux projets n??cessitant une interface utilisateur personnalis??e ou des
        animations fluides.
    </li>
</ul>

<h2>Get Started</h2>

<p>Voici le code de base d''une application Flutter simple qui affiche un message "Hello World" sur l''??cran :</p>
<pre><code>import ''package:flutter/material.dart'';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(''Hello World''),
        ),
      ),
    );
  }
}
</code></pre>

<p>Dans ce code, nous importons le package <code>material.dart</code> de Flutter, qui fournit une biblioth??que de
    widgets pour cr??er des interfaces utilisateur coh??rentes avec le style Material Design.</p>'),

       (22, 22, 'Presentation Typescript', '<h2>Introduction</h2>

<p>TypeScript est un langage de programmation open-source d??velopp?? par Microsoft. Il est consid??r?? comme un sur-ensemble de JavaScript, ce qui signifie qu''il ??tend les fonctionnalit??s de JavaScript en ajoutant des types statiques et d''autres fonctionnalit??s de programmation orient??e objet.</p>

<h2>Les fonctionnalit??s cl??s de TypeScript</h2>

<ul>
  <li>Typage statique : TypeScript permet de d??finir des types pour les variables, les fonctions et les classes, ce qui facilite la d??tection des erreurs de programmation avant l''ex??cution du code.</li>
  <li>Compatibilit?? avec JavaScript : TypeScript est compatible avec la syntaxe JavaScript, ce qui signifie que les d??veloppeurs peuvent int??grer du code JavaScript dans leur application TypeScript.</li>
  <li>Programmation orient??e objet : TypeScript prend en charge la programmation orient??e objet en permettant la d??finition de classes, d''interfaces et d''h??ritage.</li>
  <li>Support pour les modules : TypeScript prend en charge les modules, ce qui permet aux d??veloppeurs de cr??er des applications modulaires et faciles ?? maintenir.</li>
  <li>Int??gration avec les outils de d??veloppement : TypeScript est int??gr?? ?? Visual Studio Code, ce qui facilite le d??veloppement et le d??bogage des applications TypeScript.</li>
</ul>

<h2>Exemple de code TypeScript</h2>

<p>Voici un exemple simple de code TypeScript qui montre comment d??clarer une variable avec un type :</p>

<pre><code>let message: string = "Hello world";
console.log(message);
</code></pre>

<p>Dans cet exemple, nous d??clarons une variable <code>message</code> de type <code>string</code> et lui attribuons une valeur. Nous utilisons ensuite la fonction <code>console.log()</code> pour afficher la valeur de la variable dans la console.</p>

<h2>Conclusion</h2>

<p>TypeScript est un langage de programmation puissant qui offre des fonctionnalit??s avanc??es pour le d??veloppement d''applications web et mobiles. En ajoutant des types statiques et d''autres fonctionnalit??s de programmation orient??e objet ?? JavaScript, TypeScript permet aux d??veloppeurs de cr??er des applications plus robustes et plus faciles ?? maintenir.</p>
'),
       (23, 23, 'Presentation Golang', '<h2>Introduction</h2>
<p>GoLang (??galement connu sous le nom de Golang) est un langage de programmation open-source d??velopp?? par Google. Il est con??u pour ??tre rapide, efficace et facile ?? utiliser, avec une syntaxe concise et une gestion efficace de la m??moire.</p>
<h2>Les caract??ristiques de GoLang</h2>
<ul>
<li>Langage de programmation compil?? : GoLang est un langage de programmation compil??, ce qui signifie que le code source est traduit en code machine avant l''ex??cution.</li>
<li>Typage statique : GoLang prend en charge le typage statique, ce qui permet de d??tecter les erreurs de type avant l''ex??cution du code.</li>
<li>Gestion efficace de la m??moire : GoLang dispose d''un ramasse-miettes (garbage collector) int??gr?? qui permet de g??rer efficacement la m??moire.</li>
<li>Concurrency : GoLang prend en charge la programmation concurrente, ce qui permet de cr??er des applications qui peuvent ex??cuter plusieurs t??ches en parall??le.</li>
<li>Standard library riche : GoLang dispose d''une biblioth??que standard riche qui offre de nombreuses fonctionnalit??s telles que la manipulation de fichiers, les entr??es/sorties, la gestion de r??seau, la cryptographie et plus encore.</li>
</ul>
<h2>Exemple de code GoLang</h2>
<p>Voici un exemple simple de code GoLang qui montre comment imprimer un message dans la console :</p>
<pre><code class="language-go">package main

import "fmt"

func main() {
    fmt.Println("Hello World !")
}
</code></pre>
<p>Dans cet exemple, nous importons le package `fmt` pour utiliser la fonction `Println` qui permet d''afficher le message "Hello, GoLang!" dans la console.</p>
<h2>Conclusion</h2>
<p>GoLang est un langage de programmation moderne qui offre des performances ??lev??es, une gestion efficace de la m??moire et une prise en charge de la programmation concurrente. Avec une syntaxe concise et une biblioth??que standard riche, GoLang est facile ?? apprendre et ?? utiliser. Si vous recherchez un langage de programmation efficace et rapide, GoLang est un excellent choix.</p>'),
       (24, 24, 'Presentation Android', '<h2>Introduction</h2>
	<p>Android est un syst??me d''exploitation mobile open-source d??velopp?? par Google. Il est utilis?? par des millions d''appareils mobiles dans le monde entier, tels que les smartphones, les tablettes, les montres connect??es et les t??l??visions intelligentes.</p>
	<h2>L''architecture d''Android</h2>
	<p>Android utilise une architecture en couches, compos??e de cinq couches principales :</p>
	<ul>
		<li>L''application : la couche sup??rieure o?? les applications sont ex??cut??es.</li>
		<li>Le framework d''application : une couche interm??diaire qui fournit des API pour les applications.</li>
		<li>Le framework syst??me : une couche interm??diaire qui fournit des services syst??me tels que la gestion des fichiers, la s??curit??, la gestion des ressources et la communication interprocessus.</li>
		<li>Le noyau Linux : une couche basse qui fournit les services de base tels que la gestion de la m??moire, la gestion du processeur et la gestion des p??riph??riques.</li>
		<li>Le mat??riel : la couche la plus basse qui comprend les composants mat??riels tels que l''??cran, la cam??ra, le processeur et la m??moire.</li>
	</ul>
	<h2>Les outils de d??veloppement pour Android</h2>
	<p>Pour d??velopper des applications Android, vous pouvez utiliser Android Studio, qui est l''environnement de d??veloppement int??gr?? officiel pour Android. Il offre des fonctionnalit??s telles que l''??diteur de code, le d??bogueur, le compilateur, l''??mulateur Android et bien plus encore.</p>
	<h2>Les langages de programmation pour Android</h2>
	<p>Android prend en charge plusieurs langages de programmation, notamment Java, Kotlin et C++. Java est le langage de programmation historique pour Android, tandis que Kotlin est de plus en plus populaire en raison de sa concision et de sa s??curit?? accrues.</p>
	<h2>Conclusion</h2>
	<p>Android est un syst??me d''exploitation mobile populaire utilis?? par des millions d''utilisateurs dans le monde entier. Il offre une architecture en couches avec une vari??t?? d''outils et de langages de programmation pour d??velopper des applications. Si vous souhaitez d??velopper des applications mobiles, Android est une plateforme int??ressante ?? explorer.</p>')
;
