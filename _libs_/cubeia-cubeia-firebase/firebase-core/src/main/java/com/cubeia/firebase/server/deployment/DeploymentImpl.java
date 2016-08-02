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
package com.cubeia.firebase.server.deployment;

import java.util.concurrent.atomic.AtomicInteger;



/**
 * Base class for all deployment types.
 * Implements the common interface methods.
 * 
 * @author Fredrik
 */
public abstract class DeploymentImpl implements Deployment {

	protected String name;
	protected DeploymentType type;
	protected AtomicInteger latestVersion = new AtomicInteger(0);
	
	
	/**
	 * 
	 * @param name, name of resource
	 * @param type, type of resource
	 * @param workDir, location of work dir
	 */
	public DeploymentImpl(String name, DeploymentType type) {
		this.name = name;
		this.type = type;
	}
	
	@Override
	public String getArtifactId() {
		return "n/a";
	}
	
	public String toString() {
		return getIdentifier();
		
	}
	
	public String getIdentifier() {
		return name+"."+type;
	}
	
	public int getLatestVersion() {
		return latestVersion.get();
	}

	public String getName() {
		return name;
	}

	public DeploymentType getType() {
		return type;
	}
}
