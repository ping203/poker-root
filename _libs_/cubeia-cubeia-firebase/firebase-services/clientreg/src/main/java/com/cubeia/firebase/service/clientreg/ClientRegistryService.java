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
package com.cubeia.firebase.service.clientreg;

import org.apache.log4j.Logger;

import com.cubeia.firebase.api.server.SystemException;
import com.cubeia.firebase.api.service.Service;
import com.cubeia.firebase.api.service.ServiceContext;
import com.cubeia.firebase.service.clientreg.state.StateClientRegistry;

/**
 * See the {@link ClientRegistryServiceContract implemented interface} for a functional 
 * description of this service. 
 * 
 * @author Fredrik
 * @see ClientRegistry
 */
public class ClientRegistryService implements Service, ClientRegistryServiceContract {
	
	private transient Logger log = Logger.getLogger(this.getClass());
	
	private ClientRegistry registry = new StateClientRegistry();
	
	public ClientRegistry getClientRegistry() {
		return registry;
	}
	
	public void destroy() {
		registry = null;
	}

	public void init(ServiceContext con) throws IllegalStateException {
		try {
			registry.init(con);
		} catch (SystemException e) {
			log.error("Could not init client registry", e);
			throw new IllegalStateException("Init failed for client reg", e);
		}
	}
	
	public void start() {
		registry.start();
	}
	
	public void stop() {
		registry.stop();
	}

	
}