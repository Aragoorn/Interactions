// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

// قرارداد اول: انباری اطلاعات
contract DataRegistry {
    uint256 public value;
    
    function setValue(uint256 _value) public {
        value = _value;
    }
}

// قرارداد دوم: مدیریت و تعامل
contract Manager {
    DataRegistry public registry;

    constructor(address _registryAddress) {
        registry = DataRegistry(_registryAddress);
    }

    // این تابع، قرارداد اول را صدا می‌زند
    function updateRegistry(uint256 _newValue) public {
        registry.setValue(_newValue);
    }
}