// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)
package com.cubeia.games.poker.io.protocol {

    import com.cubeia.firebase.io.PacketInputStream;
    import com.cubeia.firebase.io.PacketOutputStream;
    import com.cubeia.firebase.io.ProtocolObject;
  
    import flash.utils.ByteArray;

    public class PlayerSitoutRequest implements ProtocolObject {
        public static const CLASSID:int = 34;

        public function classId():int {
            return PlayerSitoutRequest.CLASSID;
        }


        public function save():ByteArray
        {
            var buffer:ByteArray = new ByteArray();
            var ps:PacketOutputStream = new PacketOutputStream(buffer);
            return buffer;
        }

        public function load(buffer:ByteArray):void 
        {
            var ps:PacketInputStream = new PacketInputStream(buffer);
        }
        

        public function toString():String
        {
            var result:String = "PlayerSitoutRequest :";
            return result;
        }

    }
}

// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)

