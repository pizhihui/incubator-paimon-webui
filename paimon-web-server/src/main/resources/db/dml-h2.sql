--  Licensed to the Apache Software Foundation (ASF) under one or more
--  contributor license agreements.  See the NOTICE file distributed with
--  this work for additional information regarding copyright ownership.
--  The ASF licenses this file to You under the Apache License, Version 2.0
--  (the "License"); you may not use this file except in compliance with
--  the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.

INSERT INTO `user` ( id, username, password, nickname, mobile
                   , email, enabled, is_delete)
VALUES ( 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 0
       , 'admin@paimon.com', 1, 0);
INSERT INTO `user` (id, username, password, nickname, mobile, email, enabled, is_delete)
VALUES (2, 'common', '21232f297a57a5a743894a0e4a801fc3', 'common', 0, 'common@paimon.com', 1, 0);

INSERT INTO `tenant` (id, name, description)
VALUES (1, 'DefaultTenant', 'DefaultTenant');

INSERT INTO `user_tenant` (`id`, `user_id`, `tenant_id`)
VALUES (1, 1, 1);

insert into sys_role (id, role_name, role_key, sort)
values (1, 'admin', 'admin', 1),
       (2, 'common', 'common', 2);

insert into sys_menu (id, menu_name, parent_id, sort, path, component, is_frame, type, perms, icon, remark)
values (1, 'all', 0, 1, 'system', null, 1, 'M', 'system', 'admin', 'system root path'),
       (100, 'user manager', 1, 1, 'user', 'user/index', 1, 'C', 'system:user:list', 'user', 'user manager'),
       (1000, 'user query', 100, 1, '', '', 1, 'F', 'system:user:query', '#', ''),
       (1001, 'user add', 100, 2, '', '', 1, 'F', 'system:user:add', '#', ''),
       (1002, 'user edit', 100, 3, '', '', 1, 'F', 'system:user:edit', '#', ''),
       (1003, 'user del', 100, 4, '', '', 1, 'F', 'system:user:remove', '#', ''),
       (1004, 'user reset', 100, 5, '', '', 1, 'F', 'system:user:resetPwd', '#', ''),
       (200, 'role manager', 1, 1, 'role', 'role/index', 1, 'C', 'system:role:list', 'role', 'role manager'),
       (2000, 'role query', 200, 1, '', '', 1, 'F', 'system:role:query', '#', ''),
       (2001, 'role add', 200, 2, '', '', 1, 'F', 'system:role:add', '#', ''),
       (2002, 'role edit', 200, 3, '', '', 1, 'F', 'system:role:edit', '#', ''),
       (2003, 'role del', 200, 4, '', '', 1, 'F', 'system:role:remove', '#', ''),
       (300, 'menu manager', 1, 1, 'menu', 'menu/index', 1, 'C', 'system:menu:list', 'menu', 'menu manager'),
       (3000, 'menu query', 300, 1, '', '', 1, 'F', 'system:menu:query', '#', ''),
       (3001, 'menu add', 300, 2, '', '', 1, 'F', 'system:menu:add', '#', ''),
       (3002, 'menu edit', 300, 3, '', '', 1, 'F', 'system:menu:edit', '#', ''),
       (3003, 'menu del', 300, 4, '', '', 1, 'F', 'system:menu:remove', '#', '');

insert into user_role (id, user_id, role_id)
values (1, 1, 1), (2, 2, 2);

insert into role_menu (role_id, menu_id)
values (1, 1),
       (1, 100),
       (1, 1000),
       (1, 1001),
       (1, 1002),
       (1, 1003),
       (1, 1004);

insert into `catalog` (catalog_type, catalog_name, warehouse)
values ('filesystem', 'paimon', 'file:///D:/path/'),
       ('filesystem', 'fts', 'file:///D:/path/'),
       ('filesystem', 'streaming_warehouse', 'file:///D:/path/')
