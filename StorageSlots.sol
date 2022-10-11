// SPDX-License-Identifier: MIT
/*

    @author : deltartificial
    @description : Deal with Yul Storage Slots in Solidity.

*/

pragma solidity 0.8.17;

contract YulStorageSlots {

    uint256 x; // storage slot 0 : 0x0
    uint256 y; // storage slot 1 : 0x1
    uint256 z; // storage slot 2 : 0x2

    // ------------------ GET VARIABLE ------------------
    // @notice : get current variable state with his slot.

    function getVarYul(uint256 slot) external view returns(uint256 ret) {
        assembly {
            ret := sload(slot)
        }
    }

    // ------------------ SET VARIABLE ------------------
    // @notice : set a new value to a current storage slot.

    function setVarwithYul(uint256 slot, uint256 value) external {
        assembly {
            sstore(slot, value)
        }
    }

    // ------------------ GET VARIABLE ------------------
    // @notice : get X, Y, Z variable state with each storage slot.

    function getXwithYul() external view returns(uint256 ret) {
        assembly {
            ret := sload(0x0)
        }
    }

    function getYwithYul() external view returns(uint256 ret) {
        assembly {
            ret := sload(0x1)
        }
    }

    function getZwithYul() external view returns(uint256 ret) {
        assembly {
            ret := sload(0x2)
        }
    }

}