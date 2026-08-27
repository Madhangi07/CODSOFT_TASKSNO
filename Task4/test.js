const assert = require('assert');

// Simple automated unit test for CI pipeline
try {
    const app = require('./app');
    assert.ok(app, "Application instance should exist");
    console.log("PASS: Automated Unit Tests Passed Successfully!");
    process.exit(0);
} catch (error) {
    console.error("FAIL: Automated Test Failed!", error);
    process.exit(1);
}