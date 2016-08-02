/**
 * Copyright (C) 2010 Cubeia Ltd <info@cubeia.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.cubeia.backoffice.accounting;

import javax.annotation.Resource;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.cubeia.backoffice.accounting.core.dao.AccountingDAO;
import com.cubeia.backoffice.accounting.core.manager.AccountingManager;

@ContextConfiguration(locations = {"classpath:accounting-app-test.xml"})
@TransactionConfiguration(transactionManager = "accounting.transactionManager")
public abstract class BaseTest extends AbstractTransactionalJUnit4SpringContextTests {
	
    @Resource(name = "accounting.accountingManager")
	protected AccountingManager accountingManager;

	@Resource(name = "accounting.accountingDAO")
	protected AccountingDAO accountingDAO;
	
}
