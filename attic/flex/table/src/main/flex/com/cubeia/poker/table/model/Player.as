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

package com.cubeia.poker.table.model
{
	import com.cubeia.games.poker.io.protocol.GameCard;
	import com.cubeia.games.poker.io.protocol.RankEnum;
	import com.cubeia.games.poker.io.protocol.SuitEnum;
	import com.cubeia.model.PokerPlayerInfo;
	import com.cubeia.poker.table.cards.WrappedGameCard;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ListCollectionView;
	import mx.controls.Alert;
	
	public class Player
	{
		public static const STATUS_SITOUT:String = "STATUS_SITOUT";
		public static const STATUS_WAITING_TO_ACT:String = "STATUS_WAITING_TO_ACT";
		public static const STATUS_ACTED:String = "STATUS_ACTED";
		public static const STATUS_ALLIN:String = "STATUS_ALLIN";
		
		/** Unique ID */
		public var id:int;
		
		[Bindable]
		public var screenname:String;
		
		[Bindable]
		public var status:String = STATUS_SITOUT;
		
		/** Avatar image */
		[Bindable]
		public var imageUrl:String;
		
		public var seatId:int;
		
		[Bindable]
		public var balance:Number;
		
		[Bindable]
		public var betStack:Number;
		
		[Bindable]
		public var pocketCards:ArrayCollection = new ArrayCollection(new Array(5));
		
		/** time available before timeout */
		[Bindable]
		public var timeToAct:int = 0;
		
		public static function fromPlayerInfo(info:PokerPlayerInfo):Player
		{
			var player:Player = new Player(info.id);
			player.screenname = info.name;
			player.imageUrl = info.imageUrl;
			return player;
		}
		
		public function Player(id:int)
		{
			this.id = id;
		}

		public function removePocketCards():void {
			pocketCards.setItemAt(null, 0);
			pocketCards.setItemAt(null, 1);
			pocketCards.setItemAt(null, 2);
			pocketCards.setItemAt(null, 3);
			pocketCards.setItemAt(null, 4);
		}
		
		/**
		 * Add or replace a pocket card with this card information.
		 * Card ID will be used for lookup.
		 */
		public function setPocketCard(card:WrappedGameCard):void {
			var index:int = 0;
			var foundPosition:int = -1;
			for each (var pocket:WrappedGameCard in pocketCards) {
				if (pocket != null && pocket.cardId == card.cardId) {
					foundPosition = index;
				}
				index++;
			}
			if (foundPosition >= 0) {
				pocketCards.setItemAt(card, foundPosition);
			} else {
				addCardToEmptySlot(card);
			}
		}
		
		private function addCardToEmptySlot(card:WrappedGameCard):void {
			var index:int = 0;
			for each (var pocket:WrappedGameCard in pocketCards) {
				if (pocket != null) {
					index++;
				} else {
					break;
				}
			}
			pocketCards.setItemAt(card, index);
		}
	}
}