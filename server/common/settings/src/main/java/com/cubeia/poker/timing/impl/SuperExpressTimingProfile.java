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

package com.cubeia.poker.timing.impl;

import com.cubeia.poker.timing.Periods;
import com.cubeia.poker.timing.TimingProfile;
import com.cubeia.poker.timing.Timings;

public class SuperExpressTimingProfile extends TimingProfile {

    private static final long serialVersionUID = 5998534828390461865L;

    public String toString() {
        return "SuperExpressTimingProfile";
    }

    public long getTime(Periods period) {
        switch (period) {
            case POCKET_CARDS:
                return 500;
            case FLOP:
                return 500;
            case TURN:
                return 500;
            case RIVER:
                return 500;
            case START_NEW_HAND:
                return 2000;
            case ACTION_TIMEOUT:
                return 2000;
            case AUTO_POST_BLIND_DELAY:
                return 100;
            case LATENCY_GRACE_PERIOD:
                return 200;
            case DISCONNECT_EXTRA_TIME:
                return 2000;
            default:
                return 500;
        }
    }

    @Override
    public String getName() {
        return "SUPER_EXPRESS";
    }

}
