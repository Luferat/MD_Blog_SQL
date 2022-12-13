# Blog Database
Modelo de referência para banco de dados "blog.sql". Este é o modelo completo, já com os exercícios resolvidos.
'''
             ╔════════════════════════════════════════════════════════╗
             ║                         users                          ║
             ╠════════════════════════════════════════════════════════╣
   ┌─┬───┬──■║ user_id INT (PK)                                       ║
   │ │   │   ║ user_date TIMESTAMP                                    ║
   │ │   │   ║ user_name VARCHAR(255)                                 ║
   │ │   │   ║ user_email VARCHAR(255)                                ║
   │ │   │   ║ user_password VARCHAR(63)                              ║
   │ │   │   ║ user_birth DATE                                        ║
   │ │   │   ║ user_avatar VARCHAR(255)                               ║
   │ │   │   ║ user_meta TEXT                                         ║
   │ │   │   ║ user_type ENUM('user', 'author', 'moderator', 'admin') ║
   │ │   │   ║ user_status ENUM('on', 'off', 'del', 'ban')            ║
   │ │   │   ╚════════════════════════════════════════════════════════╝
   │ │   │   ╔════════════════════════════════════════════════════════╗
   │ │   │   ║                       articles                         ║
   │ │   │   ╠════════════════════════════════════════════════════════╣
   │ │ ┌─│──■║ art_id INT (PK)                                        ║
   │ │ │ │   ║ art_date TIMESTAMP                                     ║
   │ │ │ │   ║ art_title VARCHAR(255)                                 ║
   │ │ │ │   ║ art_thumb VARCHAR(255)                                 ║
   │ │ │ │   ║ art_resume VARCHAR(255)                                ║
   │ │ │ │   ║ art_content LONGTEXT                                   ║
   │ │ │ └──█║ art_author INT  (FK → users(user_id))                  ║
   │ │ │     ║ art_views INT                                          ║
   │ │ │     ║ art_status ENUM('on', 'off', 'del'                     ║
   │ │ │     ╚════════════════════════════════════════════════════════╝
   │ │ │     ╔════════════════════════════════════════════════════════╗
   │ │ │     ║                       comments                         ║
   │ │ │     ╠════════════════════════════════════════════════════════╣
   │ │ │     ║ cmt_id INT (PK)                                        ║
   │ │ │     ║ cmt_date TIMESTAMP                                     ║
   │ │ │     ║ cmt_comment VARCHAR(255)                               ║
   │ │ └────█║ cmt_article VARCHAR(255)  (FK → articles(art_id))      ║
   │ └──────█║ cmt_user VARCHAR(255)    (FK → users(user_id))         ║
   │         ║ cmt_status ENUM('on', 'off', 'del', 'ban')             ║
   │         ╚════════════════════════════════════════════════════════╝
   │         ╔════════════════════════════════════════════════════════╗
   │         ║                       categories                       ║
   │         ╠════════════════════════════════════════════════════════╣
   │     ┌──■║ cat_id INT (PK)                                        ║
   │     │   ║ cat_date TIMESTAMP                                     ║
   │     │   ║ cat_name VARCHAR(255)                                  ║
   │     │   ╚════════════════════════════════════════════════════════╝
   │     │   ╔════════════════════════════════════════════════════════╗
   │     │   ║                       art_cat                          ║
   │     │   ╠════════════════════════════════════════════════════════╣
   │     │   ║ ac_id INT (PK)                                         ║
   │     └──█║ ac_category INT  (PK → categories(cat_id))             ║
   └────────█║ ac_article INT   (PK → articles(art_id))               ║
             ╚════════════════════════════════════════════════════════╝
             ╔════════════════════════════════════════════════════════╗
             ║                       contacts                         ║
             ╠════════════════════════════════════════════════════════╣
             ║ id INT (PK)                                            ║
             ║ date TIMESTAMP                                         ║
             ║ name VARCHAR(255)                                      ║
             ║ email VARCHAR(255)                                     ║
             ║ subject VARCHAR(255)                                   ║
             ║ message TEXT                                           ║
             ║ status ENUM('received', 'readed', 'responded',         ║
             ║             'archived', 'deleted')                     ║
             ╚════════════════════════════════════════════════════════╝                               
'''
