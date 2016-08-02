/**
 * Copyright (C) 2011 Cubeia Ltd <info@cubeia.com>
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
package com.cubeia.firebase.api.action;

/**
 * An abstract representation of an action.
 */
public abstract class AbstractGameAction extends AbstractAction implements GameAction {
	
	private static final long serialVersionUID = 4624250034765837012L;

	private int tableId = -1;

	public AbstractGameAction(int tableId) {
        this.tableId = tableId;
    }
    
	public int getTableId() {
		return tableId;
	}
}
