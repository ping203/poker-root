// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)
package com.cubeia.games.poker.io.protocol {

    import com.cubeia.firebase.io.PacketInputStream;
    import com.cubeia.firebase.io.PacketOutputStream;
    import com.cubeia.firebase.io.ProtocolObject;
  
    import flash.utils.ByteArray;

    public class CardToDeal implements ProtocolObject {
        public static const CLASSID:int = 7;

        public function classId():int {
            return CardToDeal.CLASSID;
        }

        public var player:int;
        public var card:GameCard;

        public function save():ByteArray
        {
            var buffer:ByteArray = new ByteArray();
            var ps:PacketOutputStream = new PacketOutputStream(buffer);
            ps.saveInt(player);
            ps.saveArray(card.save());
            return buffer;
        }

        public function load(buffer:ByteArray):void 
        {
            var ps:PacketInputStream = new PacketInputStream(buffer);
            player = ps.loadInt();
            card = new GameCard();
            card.load(buffer);
        }
        

        public function toString():String
        {
            var result:String = "CardToDeal :";
            result += " player["+player+"]" ;
            result += " card["+card+"]" ;
            return result;
        }

    }
}

// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)

