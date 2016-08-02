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

package com.hurlant.crypto.symmetric
{
	import flash.utils.ByteArray;
	import com.hurlant.util.Memory;
	import com.hurlant.util.Hex;

	public class TripleDESKey extends DESKey
	{
		protected var encKey2:Array;
		protected var encKey3:Array;
		protected var decKey2:Array;
		protected var decKey3:Array;
		
		/**
		 * This supports 2TDES and 3TDES.
		 * If the key passed is 128 bits, 2TDES is used.
		 * If the key has 192 bits, 3TDES is used.
		 * Other key lengths give "undefined" results.
		 */
		public function TripleDESKey(key:ByteArray)
		{
			super(key);
			encKey2 = generateWorkingKey(false, key, 8);
			decKey2 = generateWorkingKey(true, key, 8);
			if (key.length>16) {
				encKey3 = generateWorkingKey(true, key, 16);
				decKey3 = generateWorkingKey(false, key, 16);
			} else {
				encKey3 = encKey;
				decKey3 = decKey;
			}
		}

		public override function dispose():void
		{
			super.dispose();
			var i:uint = 0;
			if (encKey2!=null) {
				for (i=0;i<encKey2.length;i++) { encKey2[i]=0; }
				encKey2=null;
			}
			if (encKey3!=null) {
				for (i=0;i<encKey3.length;i++) { encKey3[i]=0; }
				encKey3=null;
			}
			if (decKey2!=null) {
				for (i=0;i<decKey2.length;i++) { decKey2[i]=0; }
				decKey2=null
			}
			if (decKey3!=null) {
				for (i=0;i<decKey3.length;i++) { decKey3[i]=0; }
				decKey3=null;
			}
			Memory.gc();
		}
		
		public override function encrypt(block:ByteArray, index:uint=0):void
		{
			desFunc(encKey, block,index, block,index);
			desFunc(encKey2, block,index, block,index);
			desFunc(encKey3, block,index, block,index);
		}
		
		public override function decrypt(block:ByteArray, index:uint=0):void
		{
			desFunc(decKey3, block, index, block, index);
			desFunc(decKey2, block, index, block, index);
			desFunc(decKey, block, index, block, index);
		}
		
		public override function toString():String {
			return "3des";
		}
	}
}