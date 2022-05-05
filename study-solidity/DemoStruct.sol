// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoStruct {
    struct Student {
        string name;
        uint age;
        // mapping(string => uint) grade;
    }

    Student public stu;

    function initStudent1() public pure returns(string memory, uint) {
        Student memory st;
        return(st.name, st.age);
    }

    function initStudent2() public pure returns(string memory, uint) {
        Student memory st = Student ("lixx", 32);
        return (st.name, st.age);
    }

    function initStudent3() public pure returns(string memory, uint) {
        Student memory st = Student ({name:"zhangsan", age:34});
        return (st.name, st.age);
    }

    Student st = Student({name:"xiaoming", age:40});

    // function initStudent4() public pure returns(string memory, uint, uint) {
    //     st.grade["xiaoming"] = 90;
    //     return (st.name, st.age, st.grade["xiaoming"]);
    // }

    struct CustomType {
        bool myBool;
        uint myInt;
    }

    struct CustomType2{
        CustomType2[] cts;
        mapping(string => CustomType2) indexs;
    }


}