INSERT INTO `pizzas`(`id`, `prezzo`, `created_at`, `descrizione`, `image`, `nome`) VALUES (1,4.50,'2020-04-01 08:00','salsa di pomodoro, mozzarella fresca, olio extravergine, basilico fresco','https://www.repstatic.it/content/contenthub/img/2023/05/10/130943467-ede94857-ae9e-496b-9092-00ab6db1348b.jpg','Pizza Margherita')
INSERT INTO `pizzas`(`id`, `prezzo`, `created_at`, `descrizione`, `image`, `nome`) VALUES (2,5.50,'2020-04-01 08:00','salsa di pomodoro, mozzarella fresca, olio extravergine, ruccola fresca, grana padano, basilico fresco','https://vivere.meglio.it/wp-content/uploads/2011/07/Depositphotos_29196329_s-2015.jpg','Pizza Ruccola e Grana')
INSERT INTO `pizzas`(`id`, `prezzo`, `created_at`, `descrizione`, `image`, `nome`) VALUES (3,6.00,'2020-04-01 08:00','salsa di pomodoro, mozzarella fresca, gorgonzola, fontina, grana padano, olio extravergine','https://img2.kochrezepte.at/use/1/pizza-quattro-formaggi_1824.jpg','Pizza 4 Formaggi')

INSERT INTO `offers`(`fine_offerta`, `id`, `inizio_offerta`, `pizza_id`, `nome_offerta`) VALUES ('2023-09-15',1,'2023-07-01',1,'Pizza + Lattina')
INSERT INTO `offers`(`fine_offerta`, `id`, `inizio_offerta`, `pizza_id`, `nome_offerta`) VALUES ('2023-09-15',2,'2023-07-01',1,'DoublePizza + Bottiglia 2l')

INSERT INTO `ingredients`(`id`, `image`, `nome`) VALUES (1,'https://www.alpenfein.com/fileadmin/_processed_/f/5/csm_124336061_s_40f7017471.jpg','Salsa di pomodoro')
INSERT INTO `ingredients`(`id`, `image`, `nome`) VALUES (2,'https://www.checucino.it/wp-content/uploads/2019/02/iStock-181151637-1-930x620.jpg','Mozzarella fresca')