CREATE TABLE `order_rating_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_rating_id` int(10) unsigned NOT NULL,
  `rating_tag_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_rating_id` (`order_rating_id`),
  KEY `fk_rating_tag_id` (`rating_tag_id`),
  CONSTRAINT `fk_order_rating_id` FOREIGN KEY (`order_rating_id`) REFERENCES `order_ratings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rating_tag_id` FOREIGN KEY (`rating_tag_id`) REFERENCES `rating_tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
