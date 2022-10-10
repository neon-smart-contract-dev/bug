// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.6.12;

contract Bug {
    mapping (uint256 => uint256) public test_mapping;
    
    uint256 block_timestamp;

    constructor() public {}

    function get_now() external view returns (uint256) {
        return now;
    }

    function get_block_timestamp() external view returns (uint256) {
        return block.timestamp;
    }

    function create_new_element_1() external {
        test_mapping[1] = 100;
    }

    function create_new_element_100000000000000000() external {
        test_mapping[100000000000000000] = 100;
    }

    function create_new_element_timestamp1() external {
        block_timestamp = block.timestamp;
        test_mapping[block_timestamp] = 100;
    }

    function create_new_element_timestamp2() external {
        test_mapping[block.timestamp] = 100;
    }

    function create_new_element_now() external {
        test_mapping[now] = 100;
    }
}
