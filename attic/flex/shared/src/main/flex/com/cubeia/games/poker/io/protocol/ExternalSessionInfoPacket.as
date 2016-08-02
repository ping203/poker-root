// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)
package com.cubeia.games.poker.io.protocol {

    import com.cubeia.firebase.io.PacketInputStream;
    import com.cubeia.firebase.io.PacketOutputStream;
    import com.cubeia.firebase.io.ProtocolObject;
  
    import flash.utils.ByteArray;

    public class ExternalSessionInfoPacket implements ProtocolObject {
        public static const CLASSID:int = 36;

        public function classId():int {
            return ExternalSessionInfoPacket.CLASSID;
        }

        public var externalTableReference:String;
        public var externalTableSessionReference:String;

        public function save():ByteArray
        {
            var buffer:ByteArray = new ByteArray();
            var ps:PacketOutputStream = new PacketOutputStream(buffer);
            ps.saveString(externalTableReference);
            ps.saveString(externalTableSessionReference);
            return buffer;
        }

        public function load(buffer:ByteArray):void 
        {
            var ps:PacketInputStream = new PacketInputStream(buffer);
            externalTableReference = ps.loadString();
            externalTableSessionReference = ps.loadString();
        }
        

        public function toString():String
        {
            var result:String = "ExternalSessionInfoPacket :";
            result += " external_table_reference["+externalTableReference+"]" ;
            result += " external_table_session_reference["+externalTableSessionReference+"]" ;
            return result;
        }

    }
}

// I AM AUTO-GENERATED, DON'T CHECK ME INTO SUBVERSION (or else...)

