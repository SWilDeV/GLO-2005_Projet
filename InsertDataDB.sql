use MadaTournoi;

Insert into Pays (IdPays, NomPays, Drapeau) values (1, 'France', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (2, 'Japon', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (3, 'Espagne', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (4, 'Italie', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (5, 'Canada', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (6, 'Allemagne', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (7, 'Russie', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (8, 'Chine', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (9, 'Corée', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (10, 'Royaume-Uni', null);

Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (1, 'Minecraft', '11/18/2011', 'PVP', 'Jeu qui consiste à placer des blocs et à partir dans des aventures pour se battre contre des monstres ou des joueurs.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (2, 'Overwatch', '05/24/2016', 'FPS', 'Jeu de tir futuriste basé sur une équipe dynamique. Chaque match est une bataille acharnée qui oppose 6 héros uniques.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (3, 'League Of Legends', '09/27/2009', 'MOBA', 'Jeu en équipe avec plus de 140 champions, pour des actions à couper le souffle.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (4, 'Counter Strike', '08/21/2012', 'FPS', "Jeu de tir à la première personne dans lequel deux équipes s'affrontent pour perpétrer ou empêcher un acte terroriste.", null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (5, 'World Of Warcraft ', '11/23/2004', 'MMO', "Jeu massivement multijoueur de l'univers médiéval-fantastique Warcraft.", null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (6, 'Fortnite', '07/21/2017', 'BR', 'Jeu de battle royale avec un maximum de 100 joueurs, jouant seul, en équipe de deux, en équipe de trois ou à quatre. Les joueurs sont largués dans un Battle Bus qui traverse la carte du jeu sans aucune arme.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (7, 'Apex Legends', '02/04/2019', 'BR', 'Jeu de tir de héros gratuit où des compétiteurs légendaires combattent ensemble aux confins de la Frontière pour la gloire.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (8, 'Valorant', '06/2/2020', 'FPS', 'Jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (9, 'Echecs', null, 'Plateau', "Jeu composé d'un plateau de 64 cases et de 32 pièces (16 pour chacun des deux joueurs). Le jeu consiste à mettre l'autre joueur échec et mat, c'est-à-dire que son roi est en prise et qu'il n'y a aucun coup possible pour l'en sortir.", null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (10, 'Hockey', null, 'Sport', "Sport se déroulant sur une surface d'eau très froide, où les joueurs chaussent des chaussures montées de couteau et tentent de placer un petit bout de caoutchouc volcanisé dans une zone précise", null);


insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (1, 'thulburd0', 'PzctZ6f', 'thulburd0@cloudflare.com', 'Talyah', 'Hulburd', 'Vinnytsya', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', null, 2, 5, '6/17/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (2, 'ehubbard1', 'nJgpHeZ9MsO', 'ehubbard1@barnesandnoble.com', 'Erin', 'Hubbard', 'Santa Fe', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 8, 2, '3/5/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (3, 'ggori2', 'nGRB0y', 'ggori2@163.com', 'Giulio', 'Gori', 'Rizal', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', null, 1, 7, '2/15/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (4, 'eveeler3', 'MLFQEfiZC2yz', 'eveeler3@google.com.hk', 'Erek', 'Veeler', 'Caluquembe', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', null, 5, 7, '11/29/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (5, 'bmckendry4', 'q3HiMdZp', 'bmckendry4@goodreads.com', 'Berna', 'McKendry', 'Guolemude', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', null, 9, 6, '1/22/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (6, 'isteggals5', 'xyGYHR', 'isteggals5@friendfeed.com', 'Israel', 'Steggals', 'Calibutbut', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', null, 7, 8, '11/22/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (7, 'wrubens6', 'hArOOj', 'wrubens6@economist.com', 'Wilfrid', 'Rubens', 'Nisporeni', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', null, 9, 6, '2/17/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (8, 'askeath7', 'IwOkvovK2wvU', 'askeath7@sun.com', 'Angel', 'Skeath', 'Bandhagen', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', null, 1, 3, '7/22/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (9, 'hdewerk8', 'K4S11aWmKiSj', 'hdewerk8@yandex.ru', 'Hercule', 'de Werk', 'Chư Prông', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', null, 3, 2, '3/5/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (10, 'bcrippes9', 'u0GmyfKSL2LP', 'bcrippes9@moonfruit.com', 'Bevon', 'Crippes', 'Jamaica', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', null, 5, 7, '5/2/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (11, 'bstockneya', 'vQzAbMQ', 'bstockneya@msn.com', 'Beatriz', 'Stockney', 'Muxagata', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', null, 6, 9, '7/14/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (12, 'wrobbekeb', 'RgTFuhSN', 'wrobbekeb@nydailynews.com', 'Ware', 'Robbeke', 'Strängnäs', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', null, 9, 6, '12/14/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (13, 'gbambrughc', 'B1cYo8SaDhsj', 'gbambrughc@blogspot.com', 'Gerard', 'Bambrugh', 'Canta', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', null, 8, 3, '5/16/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (14, 'ichoudhuryd', 'IuUSoLz', 'ichoudhuryd@squidoo.com', 'Irv', 'Choudhury', 'Bhiria', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', null, 1, 4, '10/20/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (15, 'bstuddee', 'Q7Fqscs0BwP', 'bstuddee@sun.com', 'Bel', 'Studde', 'Pskov', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', null, 5, 3, '11/6/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (16, 'gestcourtf', 'EIVG64kV', 'gestcourtf@bluehost.com', 'Gerhard', 'Estcourt', 'Timon', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', null, 1, 3, '5/24/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (17, 'fduleng', 'rimStC5P', 'fduleng@unc.edu', 'Fleming', 'Dulen', 'Livadiya', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', null, 9, 8, '6/6/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (18, 'gbalchh', 'oaTOoDUX', 'gbalchh@tripod.com', 'Griffie', 'Balch', 'Choya', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', null, 7, 8, '4/30/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (19, 'wambrozi', 'jaNjDkQx', 'wambrozi@homestead.com', 'Winni', 'Ambroz', 'Sukaraja', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', null, 9, 2, '4/11/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (20, 'njzakj', 'm7bFir1ZDH3', 'njzakj@yelp.com', 'Nonnah', 'Jzak', 'Senadan', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', null, 2, 9, '11/24/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (21, 'mwendenk', 'ijiY681EBxP', 'mwendenk@google.com.hk', 'Mariejeanne', 'Wenden', 'El Porvenir', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', null, 6, 4, '3/18/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (22, 'acatanheiral', 'kGiyWbu', 'acatanheiral@umich.edu', 'Almeda', 'Catanheira', 'Laotai', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', null, 7, 5, '10/23/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (23, 'jpancoustm', 'slGo0Lj85u', 'jpancoustm@nydailynews.com', 'Jessie', 'Pancoust', 'Milán', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', null, 9, 6, '7/17/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (24, 'tbrandinon', 'LgXB3H6HbaD', 'tbrandinon@archive.org', 'Tybie', 'Brandino', 'Sława', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 1, 5, '10/28/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (25, 'ecuttelaro', 'Tajha27bm0a', 'ecuttelaro@blogs.com', 'Emmit', 'Cuttelar', 'Sarāb', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', null, 5, 8, '5/20/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (26, 'thallgatep', 'ycsSzj', 'thallgatep@bbb.org', 'Torr', 'Hallgate', 'Saint-Constant', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', null, 6, 6, '12/14/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (27, 'nwalshq', 'DbB2AYOlGXy', 'nwalshq@google.com.br', 'Neda', 'Walsh', 'Dassa-Zoumé', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 9, 8, '8/10/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (28, 'tbruhnicker', 'kUv6PyO7Tdt', 'tbruhnicker@nyu.edu', 'Torie', 'Bruhnicke', 'Buriti Bravo', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', null, 9, 4, '6/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (29, 'dbarretts', 'l9dW0O2vBpxI', 'dbarretts@mysql.com', 'Donelle', 'Barrett', 'Sosnovka', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', null, 7, 7, '3/17/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (30, 'qselburnt', 'EVDoesK', 'qselburnt@apple.com', 'Quinn', 'Selburn', 'Shanggu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', null, 2, 9, '7/21/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (31, 'ljoselovitchu', 'TxyIXQbINVh', 'ljoselovitchu@smugmug.com', 'Lauree', 'Joselovitch', 'Kanbe', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', null, 6, 6, '3/5/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (32, 'blalondev', 'EXndKg43Wuu', 'blalondev@bravesites.com', 'Binni', 'Lalonde', 'Mizhuang', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', null, 2, 9, '3/26/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (33, 'ugarmsw', 'JZspDlZkiF', 'ugarmsw@cbsnews.com', 'Ulises', 'Garms', 'Waepana', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', null, 6, 3, '7/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (34, 'abrosnanx', 'kM2IDJ', 'abrosnanx@patch.com', 'Antonie', 'Brosnan', 'Skellefteå', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', null, 2, 5, '5/30/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (35, 'joldroydey', 'gzRDhdmbo5VR', 'joldroydey@arizona.edu', 'Janet', 'Oldroyde', 'Gozdowo', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', null, 7, 7, '6/22/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (36, 'scrosslandz', '8GH3KgCwiZ8T', 'scrosslandz@digg.com', 'Silvano', 'Crossland', 'Subotica', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', null, 7, 7, '6/12/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (37, 'vjowers10', 'QuKiOy4UBYoz', 'vjowers10@wp.com', 'Vinny', 'Jowers', 'Laascaanood', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', null, 3, 9, '5/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (38, 'cliggens11', '6fGmbHn', 'cliggens11@japanpost.jp', 'Carina', 'Liggens', 'Mafa', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', null, 5, 4, '6/29/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (39, 'yfarherty12', 'ZfiD0BNWnst', 'yfarherty12@sun.com', 'Yoshiko', 'Farherty', 'Longhua', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', null, 1, 9, '7/16/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (40, 'mmottershead13', 'fLCJFsS', 'mmottershead13@adobe.com', 'Myrah', 'Mottershead', 'Bulungu', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', null, 9, 7, '4/4/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (41, 'dcallar14', '9lSXhvR', 'dcallar14@prweb.com', 'Dougie', 'Callar', 'Lamont', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', null, 5, 1, '11/14/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (42, 'bmccerery15', 'zVYqHnM', 'bmccerery15@bluehost.com', 'Brigit', 'McCerery', 'Fengshuling', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 8, 5, '12/20/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (43, 'gdunhill16', 'ji26wB', 'gdunhill16@biglobe.ne.jp', 'Gusella', 'Dunhill', 'Xinxing', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', null, 7, 4, '7/26/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (44, 'srigby17', 'jT0wgJ', 'srigby17@vkontakte.ru', 'Solomon', 'Rigby', 'Chinchaypujio', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', null, 7, 7, '6/3/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (45, 'nkeam18', 'OagxQ3eIbwlM', 'nkeam18@thetimes.co.uk', 'Natal', 'Keam', 'La Tebaida', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', null, 2, 8, '8/16/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (46, 'ghelder19', 'faz0Q0hBa', 'ghelder19@timesonline.co.uk', 'Glyn', 'Helder', 'Arnhem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', null, 8, 9, '9/7/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (47, 'ccroft1a', '5oSr2O', 'ccroft1a@pinterest.com', 'Clint', 'Croft', 'Clarin', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', null, 2, 6, '1/24/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (48, 'nmiell1b', 'NEWSpk', 'nmiell1b@vk.com', 'Nada', 'Miell', 'Bulacnin', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', null, 4, 1, '6/4/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (49, 'rteligin1c', 'io1vtLN6DA', 'rteligin1c@usda.gov', 'Ringo', 'Teligin', 'Xinqiao', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', null, 4, 3, '11/2/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (50, 'hcluderay1d', 'i56xB05', 'hcluderay1d@sciencedirect.com', 'Hughie', 'Cluderay', 'Sremska Mitrovica', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', null, 1, 1, '10/3/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (51, 'kvaughton1e', 'LnvopHnYwSu', 'kvaughton1e@delicious.com', 'Kahaleel', 'Vaughton', 'Sete Cidades', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', null, 4, 9, '1/16/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (52, 'erisom1f', 'SgmGt5qD', 'erisom1f@360.cn', 'Emylee', 'Risom', 'Beit Horon', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', null, 2, 7, '11/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (53, 'fcuttler1g', 'aTrUE5lcI0', 'fcuttler1g@newsvine.com', 'Freida', 'Cuttler', 'Xinminxiang', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 8, 1, '6/13/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (54, 'nstather1h', 'ir06IY4R', 'nstather1h@ezinearticles.com', 'Nissa', 'Stather', 'Xiaosong', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 4, 1, '12/16/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (55, 'areyes1i', '1nE7Nof', 'areyes1i@japanpost.jp', 'Alec', 'Reyes', 'Plaridel', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', null, 5, 6, '2/22/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (56, 'tredit1j', 'pwXmyW7R', 'tredit1j@i2i.jp', 'Tish', 'Redit', 'Yinglan', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', null, 4, 7, '8/8/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (57, 'twinchcum1k', 'mv36eyI', 'twinchcum1k@webeden.co.uk', 'Tait', 'Winchcum', 'Daya', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', null, 4, 1, '8/29/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (58, 'cstanes1l', 'nz4LLBZHaTri', 'cstanes1l@tmall.com', 'Coralyn', 'Stanes', 'Tapada das Mercês', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', null, 7, 1, '1/2/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (59, 'jjeste1m', 'lm4vnf', 'jjeste1m@berkeley.edu', 'Jobi', 'Jeste', 'Longba', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', null, 4, 8, '4/26/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (60, 'ewyche1n', 'ojrMKE', 'ewyche1n@google.pl', 'Ediva', 'Wyche', 'Mae Wang', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', null, 7, 5, '12/3/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (61, 'planghorn1o', 'Zc2QfHzhGcnl', 'planghorn1o@accuweather.com', 'Phylys', 'Langhorn', 'Non Sung', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', null, 2, 1, '7/24/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (62, 'lcolvie1p', 'txQIBdMKlG', 'lcolvie1p@usnews.com', 'Lonnie', 'Colvie', 'Naryn', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', null, 2, 4, '6/7/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (63, 'ddavitashvili1q', 'Lw19ROSIK', 'ddavitashvili1q@cbsnews.com', 'Delphine', 'Davitashvili', 'Sidrolândia', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', null, 6, 1, '6/30/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (64, 'rwalczak1r', 'rGSjVcSJ', 'rwalczak1r@wikimedia.org', 'Ruby', 'Walczak', 'Ciénaga de Oro', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', null, 7, 4, '9/26/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (65, 'tmelbourne1s', '0L7BtKX', 'tmelbourne1s@taobao.com', 'Tybie', 'Melbourne', 'Féres', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', null, 5, 3, '6/4/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (66, 'eshear1t', 'RqMQUQMFDk', 'eshear1t@wsj.com', 'Eal', 'Shear', 'Chyšky', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', null, 5, 9, '10/8/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (67, 'dkirsopp1u', 'cJNJDAEDCL7K', 'dkirsopp1u@usda.gov', 'Delores', 'Kirsopp', 'Nantai', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', null, 5, 8, '2/2/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (68, 'hrosoman1v', 'j5po0q33KhT', 'hrosoman1v@accuweather.com', 'Hubie', 'Rosoman', 'Peterhof', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', null, 7, 2, '12/20/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (69, 'kdowson1w', 'NlZikRi9xU', 'kdowson1w@europa.eu', 'Katrina', 'Dowson', 'Cihua', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 9, 6, '4/23/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (70, 'atreacher1x', 'gymccce', 'atreacher1x@themeforest.net', 'Amble', 'Treacher', 'Engenho', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 1, 4, '7/24/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (71, 'blufkin1y', 'zzINvqdyCp', 'blufkin1y@adobe.com', 'Bart', 'Lufkin', 'Farsta', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', null, 1, 7, '9/25/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (72, 'lburnall1z', 'Au449dWUN34', 'lburnall1z@behance.net', 'Livvie', 'Burnall', 'Ad Dann', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', null, 1, 1, '7/31/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (73, 'crobiot20', '5DI6UBp', 'crobiot20@mac.com', 'Candice', 'Robiot', 'Marugame', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', null, 4, 9, '5/21/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (74, 'bbolt21', 'Po2AhvXbCm', 'bbolt21@cisco.com', 'Bordy', 'Bolt', 'Liuzhi', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', null, 4, 9, '10/1/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (75, 'ftodhunter22', 'azqC6eH4rxzW', 'ftodhunter22@oakley.com', 'Faun', 'Todhunter', 'Burirao', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', null, 3, 5, '6/21/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (76, 'cplaskitt23', 'YvHD1HuI', 'cplaskitt23@privacy.gov.au', 'Cindy', 'Plaskitt', 'Ensanche Luperón', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', null, 3, 1, '10/9/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (77, 'nstrong24', 'QGmGlRfU', 'nstrong24@canalblog.com', 'Nalani', 'Strong', 'Yamaga', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', null, 6, 4, '2/9/2022');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (78, 'iratke25', 'ud4L1r6l8CzG', 'iratke25@usda.gov', 'Ines', 'Ratke', 'Teresa', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', null, 9, 8, '6/12/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (79, 'kthying26', 'jx9VI8dh', 'kthying26@icq.com', 'Kathy', 'Thying', 'Nāḩiyat as Sab‘ Biyār', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', null, 9, 2, '6/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (80, 'jdutchburn27', 'lpelHh74', 'jdutchburn27@myspace.com', 'Jeremie', 'Dutchburn', 'Saltsjöbaden', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', null, 7, 9, '12/17/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (81, 'jmattheus28', '2N0X3G9GZ9', 'jmattheus28@canalblog.com', 'Jenelle', 'Mattheus', 'Linjiang', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', null, 4, 3, '8/18/2021');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (82, 'lgarrish29', 'IGO0loOc0gVH', 'lgarrish29@printfriendly.com', 'Larisa', 'Garrish', 'São Paulo', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', null, 4, 7, '2020-10-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (83, 'drandales2a', 'jEj0OnWzXQ', 'drandales2a@mozilla.com', 'Decca', 'Randales', 'Gjirokastër', 'Ut at dolor quis odio consequat varius.', null, 9, 1, '2021-02-24');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (84, 'nantrag2b', 'cT22PVYCs', 'nantrag2b@springer.com', 'Nicol', 'Antrag', 'Hoorn', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', null, 2, 7, '2020-06-28');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (85, 'bharbison2c', 'AserhCNC2c', 'bharbison2c@nationalgeographic.com', 'Benson', 'Harbison', 'Trzebinia', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', null, 1, 1, '2020-09-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (86, 'adurning2d', 'c7Xded', 'adurning2d@xrea.com', 'Alessandra', 'Durning', 'Eshan', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', null, 4, 7, '2020-11-29');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (87, 'cbeardsall2e', '1i50WRbtp', 'cbeardsall2e@youtu.be', 'Constancy', 'Beardsall', 'Buga', 'Vestibulum ac est lacinia nisi venenatis tristique.', null, 2, 4, '2020-10-29');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (88, 'awicklen2f', 'EAFeryT', 'awicklen2f@canalblog.com', 'Alla', 'Wicklen', 'Taiping', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', null, 4, 2, '2020-09-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (89, 'ubroszkiewicz2g', 'qdFrqp2fyQ', 'ubroszkiewicz2g@nasa.gov', 'Ursula', 'Broszkiewicz', 'Stamford', 'Integer ac neque.', null, 4, 3, '2020-11-14');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (90, 'kcostard2h', 'yQHBaIRbfP', 'kcostard2h@facebook.com', 'Katharine', 'Costard', 'Wrocław', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', null, 10, 8, '2021-02-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (91, 'awhereat2i', 'SWbvkZZ', 'awhereat2i@amazon.co.uk', 'Aurelea', 'Whereat', 'Ampera', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', null, 2, 5, '2021-05-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (92, 'jpates2j', 'phtHWVQ', 'jpates2j@technorati.com', 'Janel', 'Pates', 'Beberibe', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', null, 9, 5, '2020-09-07');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (93, 'odenson2k', 'ArI30YZ', 'odenson2k@yelp.com', 'Osbert', 'Denson', 'Río Blanquito', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', null, 2, 3, '2020-10-16');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (94, 'kstidworthy2l', 'pb1BhvA0', 'kstidworthy2l@upenn.edu', 'Kirsteni', 'Stidworthy', 'Beylagan', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', null, 4, 3, '2021-06-11');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (95, 'gtrent2m', 'rS8Jd8sRX3p', 'gtrent2m@hostgator.com', 'Godiva', 'Trent', 'Basyūn', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', null, 10, 1, '2020-08-17');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (96, 'slavalde2n', 'CYMnZwbn', 'slavalde2n@nymag.com', 'Sigfried', 'Lavalde', 'Anle', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', null, 10, 5, '2020-07-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (97, 'fvanhaeften2o', '3WD9MdVrjQ', 'fvanhaeften2o@parallels.com', 'Felicity', 'Van Haeften', 'Miribel', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', null, 3, 6, '2020-07-18');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (98, 'agreeveson2p', 'h3YihrGjU', 'agreeveson2p@istockphoto.com', 'Ambrosius', 'Greeveson', 'Kasingan', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', null, 9, 2, '2021-01-11');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (99, 'ccornejo2q', 'bpWbZfp7w', 'ccornejo2q@lulu.com', 'Chelsy', 'Cornejo', 'Yuekou', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', null, 2, 1, '2021-01-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (100, 'ejess2r', 'UucJsV7f5w', 'ejess2r@dyndns.org', 'Eloise', 'Jess', 'Lurut', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', null, 5, 5, '2020-08-16');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (101, 'sducker2s', '5qJAFwi', 'sducker2s@nytimes.com', 'Sara-ann', 'Ducker', 'Guanlu', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', null, 8, 4, '2020-10-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (102, 'javrahamof2t', 'YjnsvTMbNe', 'javrahamof2t@princeton.edu', 'Janice', 'Avrahamof', 'San Juan de Manapiare', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 10, 10, '2021-06-09');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (103, 'evonoertzen2u', 'W6TtEwzLAb', 'evonoertzen2u@people.com.cn', 'Eula', 'Von Oertzen', 'Ouaoula', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', null, 3, 2, '2021-04-07');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (104, 'kperett2v', '6vWKvJrG8m', 'kperett2v@arstechnica.com', 'Kaylil', 'Perett', 'Chengdu', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', null, 1, 4, '2021-05-21');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (105, 'bdickey2w', 'kCLU1lgJ', 'bdickey2w@apple.com', 'Betteann', 'Dickey', 'Anyar', 'Ut at dolor quis odio consequat varius. Integer ac leo.', null, 4, 3, '2020-08-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (106, 'akaret2x', 'kdbw1MqJ', 'akaret2x@netvibes.com', 'Alberto', 'Karet', 'Ḩawallī', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', null, 8, 5, '2021-02-19');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (107, 'jmonson2y', 'Zv2HiTKSi8', 'jmonson2y@diigo.com', 'Jobi', 'Monson', 'Néa Karváli', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.', null, 10, 5, '2021-01-23');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (108, 'egohier2z', 'kyTdX67ov', 'egohier2z@cafepress.com', 'Edik', 'Gohier', 'Samran', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', null, 8, 5, '2021-06-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (109, 'aheckle30', 'gfnQr9c', 'aheckle30@blogspot.com', 'Annabelle', 'Heckle', 'Bungkulan', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', null, 3, 9, '2021-02-24');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (110, 'mkurth31', 'lrdvuQ6zQAl', 'mkurth31@berkeley.edu', 'Mae', 'Kurth', 'Ninh Hòa', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', null, 9, 4, '2020-12-07');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (111, 'lpach32', 'gq7Azd2v', 'lpach32@people.com.cn', 'Lee', 'Pach', 'Malhiao', 'In blandit ultrices enim.', null, 5, 8, '2021-05-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (112, 'dgirdwood33', 'oRSWcZUI', 'dgirdwood33@prweb.com', 'Darryl', 'Girdwood', 'Marull', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', null, 2, 5, '2020-07-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (113, 'cbettesworth34', 'Yw3uK6SzrRFd', 'cbettesworth34@columbia.edu', 'Charin', 'Bettesworth', 'Yelizavetinskoye', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', null, 3, 5, '2020-10-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (114, 'sdoret35', 'b88mQDqBWWNI', 'sdoret35@blog.com', 'Silvia', 'Doret', 'Tangub', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', null, 5, 10, '2020-07-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (115, 'econnachan36', 'yj6847EIN', 'econnachan36@shinystat.com', 'Eric', 'Connachan', 'Velventós', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', null, 7, 3, '2021-01-28');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (116, 'itander37', 'XN1bVOQPi2T', 'itander37@theatlantic.com', 'Inness', 'Tander', 'Słupsk', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', null, 10, 3, '2020-06-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (117, 'tgovini38', 'jvPF3gu', 'tgovini38@indiegogo.com', 'Trev', 'Govini', 'Hwasun', 'Sed sagittis.', null, 8, 10, '2020-10-05');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (118, 'vwalsh39', 'FclLijlzg5', 'vwalsh39@yahoo.co.jp', 'Veriee', 'Walsh', 'Raychikhinsk', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', null, 1, 2, '2021-05-01');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (119, 'lsword3a', 'N9eeQk', 'lsword3a@yandex.ru', 'Lucretia', 'Sword', 'Ilesa', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', null, 4, 10, '2020-11-19');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (120, 'mkolyagin3b', 'Vmq9lHWYbL', 'mkolyagin3b@issuu.com', 'Myrtie', 'Kolyagin', 'Meishan', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', null, 3, 8, '2020-12-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (121, 'jjorry3c', 'yabHfNpJTYKi', 'jjorry3c@nyu.edu', 'Jozef', 'Jorry', 'Zdounky', 'Vestibulum sed magna at nunc commodo placerat.', null, 4, 1, '2021-07-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (122, 'dharryman3d', 'bZQF57YnGwUE', 'dharryman3d@house.gov', 'Dominique', 'Harryman', 'Çalxanqala', 'Morbi ut odio.', null, 4, 5, '2021-03-31');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (123, 'klibermore3e', 'ugJVQyY06czD', 'klibermore3e@smugmug.com', 'Karola', 'Libermore', 'Munjul', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', null, 8, 2, '2020-12-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (124, 'rniaves3f', 'nVDuqkXtXHbc', 'rniaves3f@jimdo.com', 'Raf', 'Niaves', 'Tak Bai', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', null, 4, 2, '2021-02-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (125, 'akenealy3g', 'vtfQDipuu', 'akenealy3g@hhs.gov', 'Andria', 'Kenealy', 'São Mateus', 'Ut at dolor quis odio consequat varius. Integer ac leo.', null, 5, 9, '2020-10-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (126, 'gdudley3h', 'KPNJrn', 'gdudley3h@unblog.fr', 'Gerrie', 'Dudley', 'Thị Trấn Phù Yên', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', null, 6, 3, '2021-05-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (127, 'gstallibrass3i', 'K8z9xE', 'gstallibrass3i@domainmarket.com', 'Griffie', 'Stallibrass', 'Bieligutai', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', null, 4, 7, '2020-09-18');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (128, 'atrumper3j', 'pBaNWNRsm', 'atrumper3j@weebly.com', 'Arabel', 'Trumper', 'Naranjito', 'In blandit ultrices enim.', null, 1, 3, '2021-06-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (129, 'mowbridge3k', 'cUacOKD0hGsf', 'mowbridge3k@china.com.cn', 'Mikaela', 'Owbridge', 'Zamora', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', null, 3, 9, '2021-05-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (130, 'cmatitiaho3l', 'cXFS6ho44S', 'cmatitiaho3l@mtv.com', 'Chrisse', 'Matitiaho', 'Xinshan', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', null, 3, 2, '2020-09-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (131, 'jgoodings3m', '28F5srmR', 'jgoodings3m@nba.com', 'Jarad', 'Goodings', 'Wuṯahpūr', 'Morbi ut odio.', null, 8, 4, '2020-10-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (132, 'kgrahamslaw3n', 'JtvQ2DB', 'kgrahamslaw3n@xrea.com', 'Kari', 'Grahamslaw', 'Angao', 'Phasellus in felis. Donec semper sapien a libero.', null, 5, 4, '2020-10-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (133, 'fchilders3o', 'LqsyLO', 'fchilders3o@artisteer.com', 'Flossi', 'Childers', 'Lyuban’', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', null, 4, 2, '2021-06-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (134, 'gglencross3p', 'IhmVJl', 'gglencross3p@soundcloud.com', 'Garth', 'Glencross', 'Mlonggo', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', null, 2, 4, '2020-12-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (135, 'tfrow3q', 'P1dYpGNxQ', 'tfrow3q@comcast.net', 'Tina', 'Frow', 'Huanshan', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', null, 2, 10, '2020-08-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (136, 'fellissen3r', 'MRubs7rd6', 'fellissen3r@oakley.com', 'Farlie', 'Ellissen', 'Tuoshi', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', null, 5, 6, '2020-06-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (137, 'abrunner3s', 'a1kB157o', 'abrunner3s@live.com', 'Abby', 'Brunner', 'Caringin', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', null, 9, 10, '2021-01-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (138, 'croutley3t', 'GkmH6o', 'croutley3t@php.net', 'Carlos', 'Routley', 'Itamarandiba', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', null, 1, 7, '2021-03-23');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (139, 'mmosco3u', 'Ljuy77Nl', 'mmosco3u@techcrunch.com', 'Myranda', 'Mosco', 'Woodford Hill', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', null, 9, 4, '2020-12-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (140, 'phardes3v', 'KCbY0rqPryhW', 'phardes3v@privacy.gov.au', 'Patton', 'Hardes', 'Zhangshui', 'Suspendisse accumsan tortor quis turpis.', null, 7, 1, '2020-11-17');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (141, 'twolseley3w', 'WwMAAb', 'twolseley3w@globo.com', 'Tarrah', 'Wolseley', 'Žamberk', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', null, 1, 3, '2020-07-23');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (142, 'zheephy3x', 'nxPpqP3tm', 'zheephy3x@theguardian.com', 'Zena', 'Heephy', 'Agía Varvára', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', null, 2, 8, '2021-03-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (143, 'genevold3y', '0fs8tkCT14', 'genevold3y@marketwatch.com', 'Galvan', 'Enevold', 'Dubova (Driloni)', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', null, 4, 9, '2021-02-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (144, 'mbehne3z', 'Bsu5MD8WLEpl', 'mbehne3z@github.io', 'Merrie', 'Behne', 'Huerta Grande', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', null, 8, 6, '2020-08-05');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (145, 'abiggadyke40', 'tvW93or0IBd', 'abiggadyke40@shinystat.com', 'Abbi', 'Biggadyke', 'Norakert', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', null, 1, 4, '2020-07-31');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (146, 'nbrockwell41', 'WhZ8N4xWTv', 'nbrockwell41@sfgate.com', 'Nat', 'Brockwell', 'Babakan Baru', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', null, 2, 1, '2020-08-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (147, 'rscotchmor42', 'VGmJxtm5xOoD', 'rscotchmor42@time.com', 'Ryon', 'Scotchmor', 'Wangcun', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', null, 2, 3, '2020-06-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (148, 'dpaolinelli43', 'Tg11sFi4', 'dpaolinelli43@oracle.com', 'Devland', 'Paolinelli', 'Melbourne', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', null, 4, 5, '2020-11-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (149, 'gwatsonbrown44', '2hkBPA0P5mm', 'gwatsonbrown44@furl.net', 'Goldarina', 'Watson-Brown', 'Werangere', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', null, 7, 8, '2020-07-14');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (150, 'earmour45', 'qPmSbRy', 'earmour45@reuters.com', 'Elliot', 'Armour', 'Kranuan', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', null, 10, 7, '2021-07-07');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (151, 'syelland46', 'ttwo23qhvmDj', 'syelland46@ucoz.ru', 'Sloan', 'Yelland', 'Floreşti', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', null, 9, 6, '2020-11-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (152, 'fbothwell47', '3gy52h', 'fbothwell47@accuweather.com', 'Farly', 'Bothwell', 'Naxos', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', null, 3, 6, '2020-07-09');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (153, 'rparysiak48', '3fq1lMVQAs', 'rparysiak48@e-recht24.de', 'Raynard', 'Parysiak', 'Liugong', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', null, 3, 9, '2021-05-26');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (154, 'lreef49', '8GqHMkVq7', 'lreef49@joomla.org', 'Loralyn', 'Reef', 'Leon Postigo', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', null, 9, 6, '2021-03-09');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (155, 'gplester4a', 'rNUSCv98BebS', 'gplester4a@yahoo.co.jp', 'Garrik', 'Plester', 'Touama', 'Quisque id justo sit amet sapien dignissim vestibulum.', null, 10, 9, '2021-04-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (156, 'kdonhardt4b', '58jc7GXb', 'kdonhardt4b@bizjournals.com', 'Karalynn', 'Donhardt', 'Postoloprty', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', null, 6, 10, '2020-06-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (157, 'kbrogini4c', 'UtrvYszl', 'kbrogini4c@hhs.gov', 'Kanya', 'Brogini', 'Shaxi', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', null, 8, 5, '2020-07-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (158, 'fgrewer4d', 'zIQtC238', 'fgrewer4d@tripadvisor.com', 'Florenza', 'Grewer', 'Birendranagar', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', null, 9, 3, '2021-02-16');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (159, 'tmarcroft4e', 'kR6NpxUT5yQO', 'tmarcroft4e@ihg.com', 'Travers', 'Marcroft', 'Cergy-Pontoise', 'Duis ac nibh.', null, 3, 6, '2020-07-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (160, 'bvalek4f', 'EH43p3kvn', 'bvalek4f@netlog.com', 'Brigham', 'Valek', 'Koszyce Wielkie', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', null, 9, 10, '2020-06-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (161, 'bgarrit4g', 'hligsg9h', 'bgarrit4g@telegraph.co.uk', 'Britney', 'Garrit', 'Puente Alto', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', null, 7, 2, '2021-06-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (162, 'dduffell4h', 'hg7v8IToBU', 'dduffell4h@mtv.com', 'Darb', 'Duffell', 'Curahklapa', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', null, 2, 2, '2021-03-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (163, 'lreams4i', 'CArXdFka', 'lreams4i@techcrunch.com', 'Loni', 'Reams', 'Chantilly', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', null, 10, 4, '2021-04-01');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (164, 'lbranston4j', 'uaHPZuywkA', 'lbranston4j@goodreads.com', 'Lissi', 'Branston', 'Stockholm', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', null, 3, 6, '2020-09-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (165, 'pleake4k', 'KTRvZFciADT', 'pleake4k@51.la', 'Perice', 'Leake', 'Gondar', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', null, 1, 10, '2020-10-24');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (166, 'aaizikovich4l', '5pmVTJ', 'aaizikovich4l@about.me', 'Anna-diana', 'Aizikovich', 'Meixi', 'Proin at turpis a pede posuere nonummy.', null, 6, 1, '2021-04-29');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (167, 'nbellee4m', 'DQMCip', 'nbellee4m@mail.ru', 'Nikolaus', 'Bellee', 'Simo Satu', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', null, 3, 9, '2021-01-24');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (168, 'rlakin4n', 'HvXOPCsQ3O', 'rlakin4n@mail.ru', 'Rich', 'Lakin', 'Liuduzhai', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', null, 1, 6, '2020-12-11');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (169, 'wfernandez4o', 'w7BJRks', 'wfernandez4o@google.ru', 'Waldo', 'Fernandez', 'Oullins', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', null, 2, 9, '2020-12-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (170, 'askip4p', 'y6Djtua', 'askip4p@mysql.com', 'Alick', 'Skip', 'Chiguirip', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', null, 5, 9, '2021-06-29');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (171, 'ozuan4q', 'lxFjchGQSlI', 'ozuan4q@who.int', 'Oralla', 'Zuan', 'Bulubrangsi', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', null, 10, 2, '2021-04-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (172, 'tjenken4r', 'c3tVHPx', 'tjenken4r@patch.com', 'Torrin', 'Jenken', 'Yihe', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', null, 5, 5, '2020-07-09');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (173, 'pnoto4s', 'N1RFkVHVJs', 'pnoto4s@goo.ne.jp', 'Penn', 'Noto', 'Banqiao', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', null, 9, 9, '2021-02-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (174, 'mmara4t', 'r7Uh7hWOe77', 'mmara4t@cloudflare.com', 'Murdoch', 'Mara', 'Liuyuan', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', null, 6, 4, '2021-06-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (175, 'kgierck4u', '1hd0LxxcEh', 'kgierck4u@booking.com', 'Kenneth', 'Gierck', 'Miringa', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', null, 9, 10, '2021-03-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (176, 'cdissman4v', 'uFeBvQS2ti', 'cdissman4v@moonfruit.com', 'Chere', 'Dissman', 'Soufrière', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', null, 4, 5, '2021-02-23');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (177, 'dradolf4w', '0aATHoQ', 'dradolf4w@cbsnews.com', 'Den', 'Radolf', 'Tayang', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', null, 5, 1, '2020-10-01');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (178, 'rlymer4x', 'X5jcw1oWEW', 'rlymer4x@eventbrite.com', 'Rodd', 'Lymer', 'Chadian', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', null, 2, 1, '2020-08-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (179, 'bpotter4y', '8bzvGEDk', 'bpotter4y@canalblog.com', 'Bert', 'Potter', 'Kamalaputi', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', null, 3, 8, '2021-06-10');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (180, 'tpaish4z', 'SjAHIvRFMmNA', 'tpaish4z@yolasite.com', 'Teri', 'Paish', 'Saint-Brieuc', 'Morbi ut odio.', null, 3, 5, '2021-03-17');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (181, 'eharmes50', 'Ur0TAX', 'eharmes50@ifeng.com', 'Edik', 'Harmes', 'Potlot', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', null, 3, 2, '2020-10-16');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (182, 'bcongreve51', 'x3iMxM', 'bcongreve51@youtu.be', 'Barri', 'Congreve', 'Shuangxing', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', null, 10, 3, '2020-09-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (183, 'cmonson52', 'ff7BRYCd', 'cmonson52@tinyurl.com', 'Carolus', 'Monson', 'La Guacamaya', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', null, 7, 2, '2021-03-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (184, 'hwethers53', 'ntG4oozabOH', 'hwethers53@usatoday.com', 'Holly', 'Wethers', 'Jinpanling', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', null, 2, 6, '2021-04-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (185, 'cgatch54', 'c5ANWYXpZOhf', 'cgatch54@time.com', 'Christy', 'Gatch', 'Klyetsk', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', null, 4, 8, '2020-12-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (186, 'mmunby55', '3WjvlrQ', 'mmunby55@engadget.com', 'Maddalena', 'Munby', 'Citeguh', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', null, 9, 9, '2020-12-07');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (187, 'ccassley56', '68sW9A2', 'ccassley56@blogspot.com', 'Correy', 'Cassley', 'Golovchino', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', null, 2, 1, '2020-10-14');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (188, 'gfilyushkin57', 'ftzH2Qtu', 'gfilyushkin57@networksolutions.com', 'Gregg', 'Filyushkin', 'Phichai', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', null, 1, 4, '2020-08-17');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (189, 'fcancellor58', 'gXfXsZhSNH', 'fcancellor58@amazon.com', 'Fulvia', 'Cancellor', 'Banjar Kajanan', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', null, 3, 8, '2020-06-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (190, 'bgiacaponi59', 'jNn2ZBiT0x', 'bgiacaponi59@tripadvisor.com', 'Bard', 'Giacaponi', 'Néa Éfesos', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', null, 5, 8, '2020-07-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (191, 'ccastellino5a', 'QtMxhN4', 'ccastellino5a@ebay.com', 'Cos', 'Castellino', 'Nanjie', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', null, 2, 7, '2020-09-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (192, 'cfery5b', 'OgFct1gOy5b', 'cfery5b@eventbrite.com', 'Charmion', 'Fery', 'Pankovka', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', null, 6, 1, '2020-07-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (193, 'gmates5c', 'o4NMipR', 'gmates5c@51.la', 'Gerry', 'Mates', 'Wilmington', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', null, 8, 3, '2021-07-05');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (194, 'jgoublier5d', 'R25XX07IlY', 'jgoublier5d@php.net', 'Joannes', 'Goublier', 'Ciudad Tecún Umán', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', null, 1, 3, '2021-05-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (195, 'gpitcock5e', 'ISjYRAregLS', 'gpitcock5e@wordpress.com', 'Gideon', 'Pitcock', 'Ashbourne', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 2, 3, '2020-07-11');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (196, 'forro5f', 'gCeZCW6srVCg', 'forro5f@about.com', 'Franny', 'Orro', 'Joal-Fadiout', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', null, 5, 4, '2020-12-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (197, 'bfussey5g', 'tXCv1LkwYXc', 'bfussey5g@google.de', 'Berenice', 'Fussey', 'Turus', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', null, 9, 7, '2020-11-23');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (198, 'bfilkov5h', 'nKM647fRen', 'bfilkov5h@1und1.de', 'Brynna', 'Filkov', 'Semalang', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', null, 5, 3, '2020-12-28');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (199, 'ajezard5i', 'FENezt', 'ajezard5i@pagesperso-orange.fr', 'Ariel', 'Jezard', 'San Pedro', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', null, 10, 6, '2021-05-24');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (200, 'pmacskeagan5j', '0YygGj3t83Qk', 'pmacskeagan5j@mediafire.com', 'Pattie', 'MacSkeagan', 'Weston', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', null, 3, 3, '2020-08-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (201, 'mstanislaw5k', 'eeag1sH693BU', 'mstanislaw5k@cloudflare.com', 'Madge', 'Stanislaw', 'Ćmielów', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', null, 4, 6, '2021-07-04');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (202, 'ctomovic5l', '1BQ6GaGTNKz', 'ctomovic5l@abc.net.au', 'Cullie', 'Tomovic', 'Nuasepu', 'Nulla ut erat id mauris vulputate elementum.', null, 4, 4, '2020-10-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (203, 'micke5m', 'GdxPCtF4O', 'micke5m@dagondesign.com', 'Marchelle', 'Icke', 'Ampahana', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', null, 5, 9, '2020-09-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (204, 'oommundsen5n', 'YoqjGS5cDNN', 'oommundsen5n@reference.com', 'Otha', 'Ommundsen', 'Västerås', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', null, 7, 9, '2020-07-26');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (205, 'dlodder5o', 'SgxJSmyCp', 'dlodder5o@cam.ac.uk', 'Devina', 'Lodder', 'Ajoyani', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', null, 1, 6, '2020-06-29');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (206, 'llegrice5p', 'MNfy1og53zL', 'llegrice5p@wikispaces.com', 'Leontyne', 'Le Grice', 'Lipka', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', null, 5, 7, '2021-05-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (207, 'cidney5q', 'EwGYjdWlp', 'cidney5q@woothemes.com', 'Cathie', 'Idney', 'Kisela Voda', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', null, 5, 5, '2020-08-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (208, 'kpitcaithly5r', '3mpAASv', 'kpitcaithly5r@over-blog.com', 'Kerry', 'Pitcaithly', 'Yanaoca', 'Donec quis orci eget orci vehicula condimentum.', null, 8, 3, '2021-07-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (209, 'hbreens5s', '0NKUpX', 'hbreens5s@nifty.com', 'Hans', 'Breens', 'Ramos', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', null, 3, 9, '2021-06-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (210, 'esutherland5t', 'z2UbnJC7p', 'esutherland5t@wikimedia.org', 'Emmaline', 'Sutherland', 'Tanjung', 'Etiam vel augue. Vestibulum rutrum rutrum neque.', null, 8, 10, '2020-08-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (211, 'espillman5u', 'Nw3u2V', 'espillman5u@va.gov', 'Ezmeralda', 'Spillman', 'Fajã de Cima', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', null, 1, 10, '2020-06-16');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (212, 'jwashington5v', 'Tax9sICc2198', 'jwashington5v@devhub.com', 'Jerrold', 'Washington', 'Saseel', 'In eleifend quam a odio.', null, 10, 3, '2020-10-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (213, 'strunkfield5w', 'nRSu9xb6yb', 'strunkfield5w@domainmarket.com', 'Shelba', 'Trunkfield', 'Debrecen', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', null, 8, 8, '2020-07-10');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (214, 'wthomasson5x', 'HQGmo62Jq', 'wthomasson5x@archive.org', 'Wilhelmina', 'Thomasson', 'Volosovo', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', null, 2, 3, '2021-06-10');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (215, 'ftomasik5y', 'WuG3IZlTBeIP', 'ftomasik5y@umich.edu', 'Flynn', 'Tomasik', 'Chonglou', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', null, 3, 3, '2020-12-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (216, 'wsheraton5z', '8Ggb9js9yEg', 'wsheraton5z@opensource.org', 'Winnah', 'Sheraton', 'Shuibian', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', null, 8, 1, '2020-06-14');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (217, 'ileuren60', 'gz0GbIUPuPz', 'ileuren60@cmu.edu', 'Inessa', 'Leuren', 'Cardona', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', null, 10, 7, '2020-12-31');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (218, 'npedden61', 'T6SdIT98zAo', 'npedden61@go.com', 'Nixie', 'Pedden', 'Ruangwa', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', null, 1, 3, '2020-07-21');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (219, 'uyellep62', 'OENSjCveYdEA', 'uyellep62@google.co.jp', 'Urson', 'Yellep', 'Rizómata', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', null, 3, 10, '2020-11-15');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (220, 'lollivier63', 'KeOuO0n5DAY', 'lollivier63@mac.com', 'Lira', 'Ollivier', 'Usukhchay', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', null, 3, 5, '2020-10-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (221, 'iotoole64', 'EPbWqjM4gu', 'iotoole64@oakley.com', 'Ingrid', 'O''Toole', 'Jabon', 'Curabitur at ipsum ac tellus semper interdum.', null, 8, 1, '2021-06-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (222, 'bdoughtery65', 'zrXaIq', 'bdoughtery65@foxnews.com', 'Brandon', 'Doughtery', 'Santa Elena', 'Etiam justo.', null, 2, 5, '2021-02-17');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (223, 'bantyshev66', 'V5SL3BMv7', 'bantyshev66@aboutads.info', 'Brigham', 'Antyshev', 'Sarakhs', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', null, 8, 6, '2020-11-05');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (224, 'adrewery67', 'xdJmDnwMlir', 'adrewery67@discuz.net', 'Alwyn', 'Drewery', 'Bordeaux', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', null, 6, 9, '2021-05-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (225, 'rburgwin68', 'b5DTZvCu0', 'rburgwin68@wikimedia.org', 'Rosa', 'Burgwin', 'Kallífytos', 'Sed vel enim sit amet nunc viverra dapibus.', null, 2, 3, '2021-02-02');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (226, 'dmcharg69', 'dH7Weleh2Z', 'dmcharg69@psu.edu', 'Drusi', 'Mc Harg', 'Nice', 'Morbi non quam nec dui luctus rutrum. Nulla tellus.', null, 8, 6, '2021-06-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (227, 'csexton6a', '4uDXZIU', 'csexton6a@army.mil', 'Charisse', 'Sexton', 'Dallas', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', null, 7, 2, '2021-01-06');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (228, 'negger6b', 'MnE3hWhSg', 'negger6b@so-net.ne.jp', 'Nikolia', 'Egger', 'Władysławowo', 'Suspendisse potenti.', null, 8, 8, '2020-07-20');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (229, 'lmerrigans6c', 'LAyO5b', 'lmerrigans6c@hubpages.com', 'Lock', 'Merrigans', 'Gibara', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.', null, 8, 5, '2021-03-22');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (230, 'cseale6d', 'JxkQoyc', 'cseale6d@netvibes.com', 'Courtnay', 'Seale', 'Leuweheq', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', null, 8, 5, '2020-08-08');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (231, 'dpoff6e', 'AgdN19ZxJ', 'dpoff6e@digg.com', 'Dayle', 'Poff', 'Mielec', 'Vestibulum sed magna at nunc commodo placerat.', null, 6, 4, '2020-07-03');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (232, 'mgalero6f', 'sckfa1Kc8A0', 'mgalero6f@webs.com', 'Maighdiln', 'Galero', 'Chavães', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', null, 5, 2, '2020-10-27');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (233, 'sturbefield6g', 'g4beP1velD', 'sturbefield6g@yelp.com', 'Shel', 'Turbefield', 'Nanyaojie', 'Proin at turpis a pede posuere nonummy.', null, 5, 9, '2021-01-25');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (234, 'urought6h', 'qQtktbeC3B', 'urought6h@prweb.com', 'Ursulina', 'Rought', 'Bethlehem', 'Aliquam sit amet diam in magna bibendum imperdiet.', null, 2, 7, '2020-08-13');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (235, 'ndoggart6i', 'YBrL4SWTLwl', 'ndoggart6i@so-net.ne.jp', 'Norine', 'Doggart', 'Cincinnati', 'Curabitur at ipsum ac tellus semper interdum.', null, 9, 3, '2021-06-30');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (236, 'sduffet6j', 'CnyUJy', 'sduffet6j@bbc.co.uk', 'Sam', 'Duffet', 'Busilak', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', null, 9, 8, '2021-03-12');
insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (237, 'bkerrey6k', 'CcwhwY', 'bkerrey6k@unc.edu', 'Brianne', 'Kerrey', 'Chekhov', 'Maecenas pulvinar lobortis est.', null, 4, 6, '2021-03-09');



Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (1, 'SFShock', 'Maecenas sollicitudin, sapien in tincidunt porttitor, velit elit tincidunt quam, non lobortis nibh turpis non est. Maecenas egestas odio felis, eget mattis lacus placerat et. Morbi tincidunt eu erat quis vestibulum.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/San_Francisco_Shock_logo.svg/1200px-San_Francisco_Shock_logo.svg.png', 7, 1, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (2, 'LAGladiators', 'Sed porta lobortis consequat. In pellentesque rhoncus ante, eu varius tortor pharetra auctor.', 'https://i0.wp.com/thegamehaus.com/wp-content/uploads/2019/02/eB1_wFIo_400x400.jpg?fit=400%2C400&ssl=1', 6, 7, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (3, 'PAEternal', 'Maecenas dapibus bibendum congue. Etiam odio libero, porttitor eget auctor eget, cursus ut leo. Sed tempor rhoncus tempus.', 'https://liquipedia.net/commons/images/e/e9/Paris_Eternal_allmode_full.png', 10, 6, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (4, 'NYExcelsior', 'Donec congue nibh sed velit eleifend porttitor. Cras finibus tempor bibendum. Aliquam at dolor nulla.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/New_York_Excelsior_%28logo%29.svg/1200px-New_York_Excelsior_%28logo%29.svg.png', 9, 9, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (5, 'SEDynasty', 'Mauris efficitur felis eget enim elementum, sit amet iaculis felis luctus.', null, 17, 9, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (6, 'LAValiant', 'Etiam dapibus, felis quis venenatis tincidunt, mi sapien ornare felis, et fermentum eros orci eu enim.', null, 52, 4, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (7, 'GZCharge', 'Suspendisse lectus orci, hendrerit ac aliquet sed, dictum molestie diam.', null, 16, 2, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (8, 'HZSpark', 'Quisque ultrices tellus et vulputate fringilla. Aliquam fermentum est at sem tincidunt, eu placerat ante posuere.', null, 77, 4, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (9, 'LDSpitfire', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 1, 1, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (10, 'Dream Team', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 34, 6, 1);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (11, 'Creeper Team', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 79, 4, 1);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (12, 'Minr Team', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', 'https://wiki.minr.org/resources/assets/wiki.png', 26, 3, 1);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (13, 'Ventry', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 27, 6, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (14, 'MadaGo', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 68, 4, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (15, 'ChatSGO', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 36, 3, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (16, 'SKTT1', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 36, 3, 3);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (17, 'FortOne', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 68, 4, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (18, 'FortTwo', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 23, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (19, 'FortThree', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 65, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (20, 'FortFour', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 81, 4, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (21, 'FortFive', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 34, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (22, 'FortSix', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 75, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (23, 'FortSeven', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 23, 4, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (24, 'FortEight', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 39, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (25, 'FortNine', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 35, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (26, 'FortTen', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 73, 4, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (27, 'FortEleven', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 65, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (28, 'FortTwelve', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 24, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (29, 'FortThirteen', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 15, 4, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (30, 'FortFourteen', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 32, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (31, 'FortFifteen', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 23, 3, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (32, 'FortSixteen', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 13, 7, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (33, 'Odilon', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 24, 2, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (34, 'Deuka8', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 46, 4, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (35, 'Mokoko', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 51, 3, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (36, 'Shulker Fox', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 1, 7, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (37, 'Not on point', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 27, 6, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (38, 'Mada Academy', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 82, 2, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (39, 'Sirius', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 102, 3, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (40, 'LAZY', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 123, 5, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (41, 'DAZN', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 100, 1, 2);



Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (1, 'MCC', '2022-02-26', 2, 8, 3, 8, 1, 12, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (2, 'CS:GO Invitational', '2022-04-01', 4, 16, 5, 10, 4, 58, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (3, 'AFO', '2022-04-28', 2, 12, 5, 8, 3, 7, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (4, 'Fortnite championship', '2022-01-30', 2, 25, 1, 4, 6, 69, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (5, 'The big WOW', '2022-04-19', 10, 50, 4, 10, 5, 36, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (6, '1v1 widow', '2022/06/03', 1, 1, 40, 80, 6, 44, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (7, 'AHHHHHH', '2022/05/01', 2, 4, 20, 40, 1, 46, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (8, 'egg hunt', '2022/06/24', 4, 6, 30, 50, 9, 6, null);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner, Logo) values (9, 'OWL', '2022-05-01', 2, 30, 6, 12, 2, 17, null);


Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (1, 1, '2021-04-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (2, 1, '2020-05-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (3, 1, '2020-07-09', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (4, 1, '2020-08-24', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (5, 1, '2020-09-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (6, 1, '2020-10-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (7, 1, '2020-12-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (8, 1, '2021-01-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (9, 2, '2021-01-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (10, 2, '2021-03-18', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (11, 2, '2021-03-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (12, 2, '2021-03-29', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (13, 2, '2021-04-06', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (14, 2, '2021-05-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (15, 2, '2021-05-13', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (16, 2, '2021-05-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (17, 3, '2021-10-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (18, 3, '2021-10-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (19, 3, '2021-11-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (20, 3, '2021-12-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (21, 3, '2021-12-20', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (22, 3, '2022-01-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (23, 3, '2022-01-09', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (24, 3, '2022-03-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (25, 4, '2022-03-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (26, 4, '2022-03-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (27, 4, '2020-05-04', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (28, 4, '2020-05-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (29, 4, '2020-05-23', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (30, 4, '2020-05-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (31, 5, '2020-06-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (32, 5, '2020-07-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (33, 5, '2020-08-20', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (34, 5, '2020-09-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (35, 5, '2020-09-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (36, 5, '2020-10-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (37, 6, '2020-10-04', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (38, 6, '2020-10-12', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (39, 6, '2020-12-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (40, 6, '2020-12-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (41, 6, '2021-01-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (42, 6, '2021-02-06', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (43, 6, '2021-04-08', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (44, 7, '2021-04-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (45, 7, '2021-05-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (46, 7, '2021-06-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (47, 7, '2021-08-11', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (48, 7, '2021-10-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (49, 7, '2021-11-08', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (50, 7, '2021-11-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (51, 7, '2022-01-31', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (52, 7, '2020-09-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (53, 8, '2020-09-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (54, 8, '2020-09-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (55, 8, '2020-05-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (56, 8, '2020-09-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (57, 8, '2020-09-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (58, 8, '2021-05-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (59, 8, '2022-03-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (60, 9, '2022-03-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (61, 9, '2020-05-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (62, 9, '2022-03-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (63, 9, '2022-01-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (64, 9, '2022-01-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (65, 9, '2021-04-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (66, 10, '2021-05-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (67, 10, '2020-05-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (68, 10, '2020-06-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (69, 10, '2020-10-04', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (70, 11, '2020-11-08', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (71, 11, '2021-05-06', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (72, 11, '2021-04-04', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (73, 12, '2021-05-29', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (74, 12, '2021-05-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (75, 12, '2021-07-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (76, 12, '2021-05-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (77, 12, '2021-09-10', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (78, 12, '2021-09-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (79, 13, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (80, 13, '2020-07-31', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (81, 13, '2021-04-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (6, 13, '2021-06-11', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (24, 13, '2021-08-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (12, 13, '2021-09-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (15, 14, '2021-02-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (23, 14, '2020-11-26', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (64, 14, '2020-10-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (62, 14, '2021-05-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (27, 14, '2020-12-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (73, 14, '2021-05-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (14, 15, '2020-10-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (63, 15, '2020-06-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (19, 15, '2021-08-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (48, 15, '2021-05-07', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (17, 15, '2020-11-26', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (5, 15, '2020-06-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (25, 15, '2021-06-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (16, 15, '2020-10-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (2, 15, '2020-02-13', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (3, 16, '2020-05-23', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (6, 16, '2021-12-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (13, 16, '2021-07-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (15, 16, '2021-08-11', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (23, 16, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (12, 17, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (25, 17, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (64, 18, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (10, 19, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (14, 20, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (21, 20, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (69, 20, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (31, 21, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (26, 22, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (47, 22, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (59, 23, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (80, 24, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (71, 25, '2021-02-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (2, 26, '2021-04-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (32, 27, '2021-06-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (81, 27, '2021-09-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (70, 28, '2020-11-04', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (24, 28, '2021-06-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (63, 29, '2021-03-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (39, 29, '2020-09-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (42, 30, '2020-11-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (60, 31, '2020-07-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (55, 31, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (29, 32, '2020-05-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (82, 33, '2021-12-18', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (83, 33, '2021-12-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (84, 33, '2021-12-23', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (85, 33, '2021-12-26', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (86, 33, '2022-01-01', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (87, 33, '2022-01-09', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (88, 34, '2022-01-10', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (89, 34, '2022-01-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (90, 34, '2022-01-18', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (91, 34, '2022-01-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (92, 34, '2022-01-20', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (93, 34, '2022-01-24', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (94, 35, '2022-02-06', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (95, 35, '2022-02-12', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (96, 35, '2022-02-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (97, 35, '2022-02-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (98, 35, '2022-02-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (99, 35, '2022-02-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (100, 35, '2022-02-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (101, 36, '2022-03-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (102, 36, '2022-03-11', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (103, 36, '2022-03-14', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (104, 36, '2022-03-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (105, 36, '2022-03-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (106, 36, '2022-03-30', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (107, 37, '2021-12-20', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (108, 37, '2021-12-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (109, 37, '2021-12-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (110, 37, '2021-12-26', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (111, 37, '2021-12-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (112, 37, '2021-12-29', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (113, 38, '2022-01-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (114, 38, '2022-01-05', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (115, 38, '2022-01-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (116, 38, '2022-01-18', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (117, 38, '2022-01-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (118, 38, '2022-01-22', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (119, 39, '2022-01-24', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (120, 39, '2022-01-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (121, 39, '2022-02-02', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (122, 39, '2022-02-17', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (123, 39, '2022-02-21', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (124, 39, '2022-02-25', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (125, 40, '2022-02-27', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (126, 40, '2022-03-03', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (127, 40, '2022-03-09', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (128, 40, '2022-03-20', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (129, 40, '2022-03-26', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (130, 40, '2022-03-28', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (131, 41, '2022-03-29', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (132, 41, '2021-12-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (133, 41, '2021-12-24', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (134, 41, '2022-01-15', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (135, 41, '2022-01-16', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (136, 41, '2022-01-19', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (137, 41, '2022-01-20', null);




Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-17', '14:00', 1, 2, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-18', '15:00', 3, 4, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-22', '18:00', 5, 6, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-26', '14:00', 7, 8, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-29', '17:00', 9, 1, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-02', '19:00', 2, 3, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-04', '20:00', 4, 5, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-14', '14:00', 6, 7, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-18', '17:00', 8, 9, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-21', '14:00', 1, 3, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-31', '18:00', 2, 4, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-07', '19:00', 3, 5, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-10', '19:00', 4, 6, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-14', '14:30', 5, 7, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-15', '15:00', 6, 8, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-17', '16:00', 7, 9, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-19', '19:00', 8, 1, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-08-27', '18:00', 9, 2, null, null, 9, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-02-26', '15:00', 10, 11, 3, 5, 1, 11);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-03-15', '16:00', 12, 1, 6, 3, 1, 12);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-03-27', '19:00', 4, 10, 1, 3, 1, 10);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-02', '18:00', 11, 12, 2, 3, 1, 12);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-17', '18:00', 1, 4, 4, 1, 1, 1);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-03', '15:00', 10, 12, null, null, 1, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-17', '16:00', 11, 1, null, null, 1, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-19', '19:00', 12, 4, null, null, 1, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-06-22', '18:00', 1, 10, null, null, 1, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-07-01', '18:00', 4, 11, null, null, 1, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-05', '18:00', 13, 14, 5, 3, 2, 13);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-12', '18:00', 15, 6, 3, 5, 2, 6);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-17', '18:00', 8, 13, 5, 0, 2, 8);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-28', '18:00', 14, 15, null, null, 2, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-01', '18:00', 6, 8, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-16', '19:00', 16, 5, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-17', '19:00', 6, 9, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-18', '19:00', 5, 6, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-19', '19:00', 9, 16, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-20', '19:00', 16, 6, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-21', '19:00', 9, 5, null, null, 3, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '13:00', 17, 18, 2, 10, 4, 18);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '13:30', 19, 20, 10, 2, 4, 19);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '14:00', 21, 22, 10, 7, 4, 22);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '14:30', 23, 24, 4, 10, 4, 24);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '15:00', 25, 26, 10, 8, 4, 25);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '15:30', 27, 28, 5, 10, 4, 28);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '16:00', 29, 30, 9, 10, 4, 30);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-30', '16:30', 31, 32, 1, 10, 4, 32);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-31', '14:00', 18, 19, 10, 6, 4, 18);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-31', '14:30', 22, 24, 10, 0, 4, 22);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-31', '15:00', 25, 28, 10, 4, 4, 25);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-01-31', '15:30', 30, 32, 6, 10, 4, 32);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-02-01', '14:00', 18, 22, 10, 8, 4, 18);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-02-01', '14:30', 25, 32, 9, 10, 4, 32);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-02-01', '16:00', 18, 32, 10, 8, 4, 18);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-19', '16:00', 33, 34, 3, 1, 5, 33);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-20', '16:00', 35, 36, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-21', '16:00', 37, 38, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-22', '16:00', 39, 32, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-23', '16:00', 40, 32, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-24', '16:00', 41, 1, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-25', '16:00', 2, 3, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-26', '16:00', 4, 5, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-27', '16:00', 6, 7, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-28', '16:00', 8, 9, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-29', '16:00', 33, 35, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-04-30', '16:00', 34, 36, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-01', '16:00', 35, 37, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-02', '16:00', 36, 38, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-03', '16:00', 37, 39, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-04', '16:00', 38, 40, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-05', '16:00', 39, 41, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-06', '16:00', 40, 1, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-07', '16:00', 41, 2, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-08', '16:00', 1, 3, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-09', '16:00', 2, 4, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-10', '16:00', 3, 5, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-11', '16:00', 4, 6, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-12', '16:00', 5, 7, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-13', '16:00', 6, 8, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-14', '16:00', 7, 9, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-15', '16:00', 8, 33, null, null, 5, null);
Insert into Partie (dateMatch, heureMatch, idEquipe1, idEquipe2, scoreEquipe1, scoreEquipe2, idTournoi, idGagnant) values ('2022-05-16', '16:00', 9, 34, null, null, 5, null);



Insert into Inscription (IdEquipe, IdTournoi) values (1, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (2, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (3, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (4, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (5, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (6, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (7, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (8, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (9, 9);
Insert into Inscription (IdEquipe, IdTournoi) values (10, 1);
Insert into Inscription (IdEquipe, IdTournoi) values (11, 1);
Insert into Inscription (IdEquipe, IdTournoi) values (12, 1);
Insert into Inscription (IdEquipe, IdTournoi) values (1, 1);
Insert into Inscription (IdEquipe, IdTournoi) values (4, 1);
Insert into Inscription (IdEquipe, IdTournoi) values (13, 2);
Insert into Inscription (IdEquipe, IdTournoi) values (14, 2);
Insert into Inscription (IdEquipe, IdTournoi) values (15, 2);
Insert into Inscription (IdEquipe, IdTournoi) values (6, 2);
Insert into Inscription (IdEquipe, IdTournoi) values (8, 2);
Insert into Inscription (IdEquipe, IdTournoi) values (16, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (5, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (6, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (9, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (17, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (18, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (19, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (20, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (21, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (22, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (23, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (24, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (25, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (26, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (27, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (28, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (29, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (30, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (31, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (32, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (33, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (34, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (35, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (36, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (37, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (38, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (39, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (40, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (41, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (1, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (2, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (3, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (4, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (5, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (6, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (7, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (8, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (9, 5);