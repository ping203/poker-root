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
package com.cubeia.firebase.api.service.dosprotect;

import java.util.concurrent.atomic.AtomicInteger;

import com.cubeia.firebase.api.service.dosprotect.Rule;
import com.cubeia.firebase.api.service.dosprotect.RuleChain;

public class TrivialRule implements Rule {
	
	private final AtomicInteger count;

	public TrivialRule(AtomicInteger count) {
		this.count = count;
	}

	public boolean allow(Object callerId, RuleChain chain) {
		count.incrementAndGet();
		return chain.next(callerId);
	}

	public void cleanup() { } 

}
