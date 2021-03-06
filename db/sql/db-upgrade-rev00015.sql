-- # * ********************************************************************* *
-- # *                                                                       *
-- # *   Business Portal                                                     *
-- # *   This file is part of business. This project may be found at:        *
-- # *   https://github.com/IdentityBank/Php_business.                       *
-- # *                                                                       *
-- # *   Copyright (C) 2020 by Identity Bank. All Rights Reserved.           *
-- # *   https://www.identitybank.eu - You belong to you                     *
-- # *                                                                       *
-- # *   This program is free software: you can redistribute it and/or       *
-- # *   modify it under the terms of the GNU Affero General Public          *
-- # *   License as published by the Free Software Foundation, either        *
-- # *   version 3 of the License, or (at your option) any later version.    *
-- # *                                                                       *
-- # *   This program is distributed in the hope that it will be useful,     *
-- # *   but WITHOUT ANY WARRANTY; without even the implied warranty of      *
-- # *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the        *
-- # *   GNU Affero General Public License for more details.                 *
-- # *                                                                       *
-- # *   You should have received a copy of the GNU Affero General Public    *
-- # *   License along with this program. If not, see                        *
-- # *   https://www.gnu.org/licenses/.                                      *
-- # *                                                                       *
-- # * ********************************************************************* *

-- #############################################################################
-- # DB migration file
-- #############################################################################

-- #############################################################################
-- # KD: Create Idb Audit Message Table
-- #############################################################################

-- # ---------------------------------------------------------------------- # --
-- # Table: p57b_business.idb_audit_message
-- # ---------------------------------------------------------------------- # --

DROP TABLE IF EXISTS "p57b_business"."idb_audit_message";

CREATE TABLE "p57b_business"."idb_audit_message"
(
  "id" serial PRIMARY KEY,
  "tag" text,
  "order" smallint,
  "portal_uuid" text,
  "message" text NOT NULL
);
ALTER TABLE "p57b_business"."idb_audit_message"
  OWNER TO p57b_business;

CREATE INDEX idb_business_audit_message_order_idx
  ON "p57b_business"."idb_audit_message" ("order");

-- #############################################################################
-- #                               End of file                                 #
-- #############################################################################
