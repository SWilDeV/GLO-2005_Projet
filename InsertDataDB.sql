Insert into Pays (IdPays, NomPays, Drapeau) values (1, 'France', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (2, 'Japon', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (3, 'Espagne', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (4, 'Italie', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (5, 'Canada', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (6, 'Allemagne', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (7, 'Russie', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (8, 'Chine', null);
Insert into Pays (IdPays, NomPays, Drapeau) values (9, 'Corée', null);

Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (1, 'Minecraft', '11/18/2011', 'PVP', 'Jeu qui consiste à placer des blocs et à partir dans des aventures pour se battre contre des monstres ou des joueurs.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (2, 'Overwatch', '05/24/2016', 'FPS', 'Jeu de tir futuriste basé sur une équipe dynamique. Chaque match est une bataille acharnée qui oppose 6 héros uniques.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (3, 'League Of Legends', '09/27/2009', 'MOBA', 'Jeu en équipe avec plus de 140 champions, pour des actions à couper le souffle.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (4, 'Counter Strike', '08/21/2012', 'FPS', "Jeu de tir à la première personne dans lequel deux équipes s'affrontent pour perpétrer ou empêcher un acte terroriste.", null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (5, 'World Of Warcraft ', '11/23/2004', 'MMO', "Jeu massivement multijoueur de l'univers médiéval-fantastique Warcraft.", null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (6, 'Fortnite', '07/21/2017', 'BR', 'Jeu de battle royale avec un maximum de 100 joueurs, jouant seul, en équipe de deux, en équipe de trois ou à quatre. Les joueurs sont largués dans un Battle Bus qui traverse la carte du jeu sans aucune arme.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (7, 'Apex Legends', '02/04/2019', 'BR', 'Jeu de tir de héros gratuit où des compétiteurs légendaires combattent ensemble aux confins de la Frontière pour la gloire.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (8, 'Valorant', '06/2/2020', 'FPS', 'Jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games.', null);
Insert into Game (IdGame, Nom, DateSortie, TypeJeu, DescriptionJeu, Logo) values (9, 'Echecs', null, 'Plateau', "Jeu composé d'un plateau de 64 cases et de 32 pièces (16 pour chacun des deux joueurs). Le jeu consiste à mettre l'autre joueur échec et mat, c'est-à-dire que son roi est en prise et qu'il n'y a aucun coup possible pour l'en sortir.", null);




insert into Utilisateur (IdJoueur, Username, Password, Courriel, Prenom, Nom, Ville, Presentation, Avatar, IdPays, IdGame, DateJoined) values (1, 'thulburd0', 'PzctZ6f', 'thulburd0@cloudflare.com', 'Talyah', 'Hulburd', 'Vinnytsya', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', null, 5, 6, '6/17/2021');
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



Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (1, 'SFShock', 'Maecenas sollicitudin, sapien in tincidunt porttitor, velit elit tincidunt quam, non lobortis nibh turpis non est. Maecenas egestas odio felis, eget mattis lacus placerat et. Morbi tincidunt eu erat quis vestibulum.', null, 7, 1, 1);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (2, 'LAGladiators', 'Sed porta lobortis consequat. In pellentesque rhoncus ante, eu varius tortor pharetra auctor.', null, 6, 7, 8);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (3, 'PAEternal', 'Maecenas dapibus bibendum congue. Etiam odio libero, porttitor eget auctor eget, cursus ut leo. Sed tempor rhoncus tempus.', null, 10, 6, 9);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (4, 'NYExcelsior', 'Donec congue nibh sed velit eleifend porttitor. Cras finibus tempor bibendum. Aliquam at dolor nulla.', null, 9, 9, 6);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (5, 'SEDynasty', 'Mauris efficitur felis eget enim elementum, sit amet iaculis felis luctus.', null, 17, 9, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (6, 'LAValiant', 'Etiam dapibus, felis quis venenatis tincidunt, mi sapien ornare felis, et fermentum eros orci eu enim.', null, 52, 4, 2);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (7, 'GZCharge', 'Suspendisse lectus orci, hendrerit ac aliquet sed, dictum molestie diam.', null, 16, 2, 8);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (8, 'HZSpark', 'Quisque ultrices tellus et vulputate fringilla. Aliquam fermentum est at sem tincidunt, eu placerat ante posuere.', null, 77, 4, 3);
Insert into Equipe (IdEquipe, NomEquipe, Presentation, Logo, IdOwner, IdPays, IdGame) values (9, 'LDSpitfire', 'Nullam ornare, augue non blandit porta, est magna cursus dui, id viverra risus dui vitae risus.', null, 1, 1, 5);


Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (1, 'tournoi cool', '2022/04/26', 2, 4, 2, 8, 9, 12);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (2, 'Autre tournoi', '2022/04/22', 8, 16, 24, 48, 7, 58);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (3, 'AFO', '2022/05/16', 6, 12, 30, 60, 8, 7);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (4, 'LNH', '2022/07/30', 4, 10, 24, 60, 2, 69);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (5, 'Mada Lan', '2022/04/19', 2, 4, 12, 28, 2, 36);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (6, '1v1 widow', '2022/06/03', 1, 1, 40, 80, 6, 44);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (7, 'AHHHHHH', '2022/05/01', 2, 4, 20, 40, 1, 46);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (8, 'egg hunt', '2022/06/24', 4, 6, 30, 50, 9, 6);
Insert into Tournoi (IdTournoi, nomTournoi, dateDebut, minEquipe, maxEquipe, minJoueur, maxJoueur, IdGame, IdOwner) values (9, 'OWL', '2022/07/01', 2, 10, 10, 80, 5, 17);

Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (2, 2, '3/4/2022', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (7, 4, '3/5/2022', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (8, 3, '8/25/2021', '9/5/2022');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (10, 4, '6/30/2021', '4/14/2022');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (12, 7, '9/14/2022', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (16, 6, '5/28/2021', '9/2/2021');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (18, 2, '6/10/2021', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (20, 8, '11/29/2021', '1/4/2022');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (30, 9, '7/22/2021', '7/28/2021');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (52, 4, '12/8/2021', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (54, 1, '12/17/2021', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (55, 1, '2/24/2022', '2/29/2022');
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (16, 4, '10/8/2021', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (20, 5, '1/5/2022', null);
Insert into MembresEquipe (IdJoueur, IdEquipe, DateJoined, DateLeft) values (30, 7, '11/8/2021', null);


Insert into Inscription (IdEquipe, IdTournoi) values (4, 6);
Insert into Inscription (IdEquipe, IdTournoi) values (2, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (7, 3);
Insert into Inscription (IdEquipe, IdTournoi) values (5, 4);
Insert into Inscription (IdEquipe, IdTournoi) values (1, 7);
Insert into Inscription (IdEquipe, IdTournoi) values (3, 8);
Insert into Inscription (IdEquipe, IdTournoi) values (6, 5);
Insert into Inscription (IdEquipe, IdTournoi) values (9, 9);