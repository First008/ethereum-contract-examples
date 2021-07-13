pragma solidity >=0.8.0;

contract DeletableMapping {
    // Input is keccak256(uint32 mappingVersion, string _productCode)
    mapping (bytes32 => string) orders;
    uint32 currentMappingVersion;

    // Use this function for getting the order with _productCode
    function getOrders(string memory _productCode) external view returns(string memory) {
        bytes32 key = keccak256(abi.encode(currentMappingVersion, _productCode));
        return orders[key];
    }
    
    // This function for setting new orders.
    function setOrders(string memory  _productCode, string memory _countAndNote) external {
        bytes32 key = keccak256(abi.encode(currentMappingVersion, _productCode));
        orders[key] = _countAndNote;
    }

    // This is the miracle function. In order to delete all orders it's just increasing its' value with 1.
    function deleteAllOrders() external {
        currentMappingVersion++;
    }

    // This function for deleting the older order which is still there because of an error. (I guess)
    function recoverGas(uint32 _version, string memory _productCode) external {
        require(_version < currentMappingVersion);
        bytes32 key = keccak256(abi.encode(_version, _productCode));
        delete(orders[key]);
    }
}