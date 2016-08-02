// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)
package com.cubeia.games.poker.io.protocol {

    import com.cubeia.firebase.io.PacketInputStream;
    import com.cubeia.firebase.io.PacketOutputStream;
    import com.cubeia.firebase.io.ProtocolObject;
  
    import flash.utils.ByteArray;

    public class StartNewHand implements ProtocolObject {
        public static const CLASSID:int = 10;

        public function classId():int {
            return StartNewHand.CLASSID;
        }

        public var dealerSeatId:int;
        public var handId:String;

        public function save():ByteArray
        {
            var buffer:ByteArray = new ByteArray();
            var ps:PacketOutputStream = new PacketOutputStream(buffer);
            ps.saveInt(dealerSeatId);
            ps.saveString(handId);
            return buffer;
        }

        public function load(buffer:ByteArray):void 
        {
            var ps:PacketInputStream = new PacketInputStream(buffer);
            dealerSeatId = ps.loadInt();
            handId = ps.loadString();
        }
        

        public function toString():String
        {
            var result:String = "StartNewHand :";
            result += " dealerSeatId["+dealerSeatId+"]" ;
            result += " handId["+handId+"]" ;
            return result;
        }

    }
}

// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)

