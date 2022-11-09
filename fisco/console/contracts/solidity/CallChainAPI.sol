pragma solidity ^0.4.24;
import "./ChainAPI.sol";

contract CallChainAPI {
    ChainAPI chainapi;
    string aa;
    string bb;
    string cc;
    string c;
    string filePath = "/root/chainx/file/";
    string stk = "base_block.stk";
    string pck = "base_block.pck";
    string dict = "base_block.dict";

    function CallChainAPI() {
        chainapi = ChainAPI(0x5001);
        chainapi.VSetFilePath(filePath);
        chainapi.VLoadSK(stk);
        chainapi.VLoadPK(pck);
        chainapi.VLoadDictionary(dict);
    }
    function get() public constant returns(string) {
        return chainapi.get();
    }
    function set(string m) {
        chainapi.set(m);
    }
    function addint(string a,string b) public constant returns(string){
        aa=chainapi.VEncryptPubInt(a);
        bb=chainapi.VEncryptPubInt(b);
        cc=chainapi.VAddInt(aa,bb);
        c=chainapi.VDecryptInt(cc);
        return c;

    }
    function adddb(string a,string b) public constant returns(string){
        aa=chainapi.VEncryptPubDouble(a);
        bb=chainapi.VEncryptPubDouble(b);
        cc=chainapi.VAddDouble(aa,bb);
        c=chainapi.VDecryptDouble(cc);
        return c;

    }
    function constr(string a,string b) public constant returns(string){
        aa=chainapi.VEncryptPubString(a);
        bb=chainapi.VEncryptPubString(b);
        cc=chainapi.VConcatString(aa,bb);
        c=chainapi.VDecryptString(cc);
        return c;

    }

}
