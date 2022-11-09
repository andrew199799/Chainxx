pragma solidity ^0.4.24;
contract ChainAPI{
    function get() public constant returns(string);
    function set(string n);
    

    function VSetFilePath(string filePath_in);
    function VLoadSK(string filename);
    function VLoadPK(string filename);
    function VLoadDictionary(string filename);

    function VEncryptPubInt(string input) public constant returns(string);
    function VDecryptInt(string input) public constant returns(string);
    function VEncryptPubDouble(string input) public constant returns(string);
    function VDecryptDouble(string input) public constant returns(string);
    function VEncryptPubString(string input) public constant returns(string);
    function VDecryptString(string input) public constant returns(string);
    function VAddInt(string data1, string data2) public constant returns(string);
    function VSubstractInt(string data1, string data2) public constant returns(string);
    function VAddDouble(string data1, string data2) public constant returns(string);
    function VSubstractDouble(string data1, string data2) public constant returns(string);
    function VMultiplyDouble(string data1, string data2) public constant returns(string);
    function VDivideDouble(string data1, string data2) public constant returns(string);
    function VCompareDouble(string data1, string data2) public constant returns(string);
    function VConcatString(string data1, string data2) public constant returns(string);
    function VSubstring(string data, string start_in, string end_in) public constant returns(string);
    function VLength(string data) public constant returns(string);
}
