import qbs

Project {
    minimumQbsVersion: "1.7.1"

    CppApplication {
        name: "manualtest"
        consoleApplication: true
        cpp.cxxLanguageVersion: "c++14"
        files: [
            "unicode_view",
            "main.cpp",
        ]

        Group {     // Properties for the produced executable
            fileTagsFilter: "application"
            qbs.install: true
        }
    }

    CppApplication {
        name: "benchmark"
        consoleApplication: true
        cpp.cxxLanguageVersion: "c++14"
        files: [
            "benchmark_util.h",
            "unicode_view",
            "benchmark.cpp"
        ]
    }

    CppApplication {
        name: "test"
        consoleApplication: true
        cpp.cxxLanguageVersion: "c++14"
        cpp.includePaths: [ ".", "3rdparty" ]
        files: [
            "unicode_view",
            "test/unicode_view_test.cpp",
            "test/test_main.cpp"
        ]
    }
}
