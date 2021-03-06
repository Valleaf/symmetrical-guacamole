USE [ENCHERES_BDD]
GO
SET IDENTITY_INSERT [dbo].[CATEGORIES] ON 

INSERT [dbo].[CATEGORIES] ([no_categorie], [libelle]) VALUES (1, N'Informatique')
INSERT [dbo].[CATEGORIES] ([no_categorie], [libelle]) VALUES (2, N'Ameublement')
INSERT [dbo].[CATEGORIES] ([no_categorie], [libelle]) VALUES (3, N'Vêtement')
INSERT [dbo].[CATEGORIES] ([no_categorie], [libelle]) VALUES (4, N'Sport & Loisir')
SET IDENTITY_INSERT [dbo].[CATEGORIES] OFF
SET IDENTITY_INSERT [dbo].[UTILISATEURS] ON 

INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (1, N'admin', N'Bluth', N'Georges', N'gbluth@campus.fr', N'0241468598', N'16 av du monde', N'49000', N'Angers', N'cGFzc1N3b3JEMEAj', 0, 1)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (2, N'felix', N'Bluth', N'Félix', N'fbluth@campus.fr', N'0241461708', N'11 rue du chêne vert', N'85000', N'La Roche/Yon', N'aGpkc3xVRTIzJUA=', 100, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (3, N'tom', N'Bluth', N'Tom', N'tbluth@campus.fr', N'0695020202', N'5 rue de la mer', N'44000', N'Nantes', N'VW5zdVBlck1AdERlUEBzc2Uh', 65, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (4, N'samuel', N'Bluth', N'Samuel', N'sbluth@campus.fr', N'0788030303', N'9 chemin des gites', N'44000', N'Nantes', N'cGFzc0UjNjU0', 260, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (5, N'luisa', N'Bluth', N'Luisa', N'lbluth@campus.fr', N'', N'9 rue de l''océan', N'85000', N'Les Sables d''Olonnes', N'ZW5jNDIzNG9lcmV1QEBucGFzc0U=', 200, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (6, N'laure', N'Bluth', N'Laure', N'laurebluth@campus.fr', N'0202020202', N'rue de Nantes', N'44000', N'Nantes', N'b3VpZDIxdnJhaUVVMUAj', 150, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (7, N'Jean', N'Valjean', N'Jean', N'jValjean@campus.fr', N'0202020252', N'rue de Paris', N'75412', N'Paris', N'b3VpZDIxdnJhaUVVMUAj', 200, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (8, N'vendeurPro', N'Macron', N'Emmanuel', N'wolfofWallStreet@campus.fr', N'0202620202', N'rue de France', N'69007', N'Lyon', N'b3VpZDIxdnJhaUVVMUAj', 400, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (9, N'Prince', N'Dantes', N'Edmond', N'edmondD@campus.fr', N'0442020202', N'85 Promenande de la Mer', N'13521', N'Marseille', N'b3VpZDIxdnJhaUVVMUAj', 212, 0)
INSERT [dbo].[UTILISATEURS] ([no_utilisateur], [pseudo], [nom], [prenom], [email], [telephone], [rue], [code_postal], [ville], [mot_de_passe], [credit], [administrateur]) VALUES (10, N'dystopia', N'Orwell', N'George', N'sunshine@campus.fr', N'0202096202', N'chemin du Nord', N'64234', N'Amiens', N'b3VpZDIxdnJhaUVVMUAj', 300, 0)


SET IDENTITY_INSERT [dbo].[UTILISATEURS] OFF

SET IDENTITY_INSERT [dbo].[ARTICLES_VENDUS] ON
INSERT INTO [dbo].[ARTICLES_VENDUS]
           ([no_article]
		   ,[nom_article]
           ,[description]
           ,[date_debut_enchere]
           ,[date_fin_enchere]
           ,[prix_initial]
           ,[prix_vente]
           ,[no_utilisateur]
           ,[no_categorie]
           ,[etat_vente]
           ,[image])
     VALUES
           (1
		   ,'Feuille verte'
           ,'Une feuille toute neuve'
           ,getdate()
           ,getdate() + 1
           ,10
           ,null
           ,1
           ,1
           ,'EC'
           ,'https://u.cubeupload.com/valleaf/pexelspixabay86397.jpg');
INSERT INTO [dbo].[ARTICLES_VENDUS]
           ([no_article]
		   ,[nom_article]
           ,[description]
           ,[date_debut_enchere]
           ,[date_fin_enchere]
           ,[prix_initial]
           ,[prix_vente]
           ,[no_utilisateur]
           ,[no_categorie]
           ,[etat_vente]
           ,[image])
     VALUES
           (2
		   ,'Sable fin'
           ,'Une botte de sable toute neuve'
           ,getdate() + 1
           ,getdate() + 3
           ,5
           ,null
           ,2
           ,2
           ,DEFAULT
           ,'https://u.cubeupload.com/valleaf/pexelsmarlontrottman.jpg');
INSERT INTO [dbo].[ARTICLES_VENDUS]
           ([no_article]
		   ,[nom_article]
           ,[description]
           ,[date_debut_enchere]
           ,[date_fin_enchere]
           ,[prix_initial]
           ,[prix_vente]
           ,[no_utilisateur]
           ,[no_categorie]
           ,[etat_vente]
           ,[image])
     VALUES
           (3
		   ,'Armée de robots'
           ,'Une armee de robots prete a vous servir'
           ,getdate()
           ,getdate() + 3
           ,150
           ,null
           ,3
           ,2
           ,'EC'
           ,'https://u.cubeupload.com/valleaf/irobotwallpaper.jpg');
SET IDENTITY_INSERT [dbo].[ARTICLES_VENDUS] OFF
