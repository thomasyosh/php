CREATE DATABASE `test`;

USE `test`;


CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1',
  `isAdmin` tinyint NOT NULL DEFAULT '0',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `users` (`name`, `email`, `password`,`isAdmin`) VALUES
  ('admin', 'admin@mail.com', '$2y$10$9QQ395uheDOoYAL6I.Ju0OAHqws5NtTJqeNWuj2LpVXU6pG3w3GFa',1);
  INSERT INTO `users` (`name`, `email`, `password`,`isAdmin`) VALUES
  ('user01', 'user01@mail.com', '$2y$10$9QQ395uheDOoYAL6I.Ju0OAHqws5NtTJqeNWuj2LpVXU6pG3w3GFa',0);

  CREATE TABLE `message` (
  `message_id` int NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `create_by` int NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;