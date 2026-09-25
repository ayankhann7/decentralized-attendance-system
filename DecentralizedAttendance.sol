// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DecentralizedAttendance {

    address public owner;

    struct AttendanceRecord {
        address student;
        bool present;
        bool marked;
        uint256 timestamp;
    }

    mapping(address => AttendanceRecord) public attendance;

    address[] public students;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function markPresent(address student) public onlyOwner {
        if (!attendance[student].marked) {
            students.push(student);
        }

        attendance[student] = AttendanceRecord(
            student,
            true,
            true,
            block.timestamp
        );
    }

    function markAbsent(address student) public onlyOwner {
        if (!attendance[student].marked) {
            students.push(student);
        }

        attendance[student] = AttendanceRecord(
            student,
            false,
            true,
            block.timestamp
        );
    }

    function getAttendance(address student)
        public
        view
        returns (
            address,
            bool,
            bool,
            uint256
        )
    {
        AttendanceRecord memory record = attendance[student];

        return (
            record.student,
            record.present,
            record.marked,
            record.timestamp
        );
    }

    function getClassAttendance()
        public
        view
        returns (AttendanceRecord[] memory)
    {
        AttendanceRecord[] memory records =
            new AttendanceRecord[](students.length);

        for (uint256 i = 0; i < students.length; i++) {
            records[i] = attendance[students[i]];
        }

        return records;
    }

    function getStudentCount()
        public
        view
        returns (uint256)
    {
        return students.length;
    }
}
