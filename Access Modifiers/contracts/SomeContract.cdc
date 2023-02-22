access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        //read and write scope everywhere
        pub(set) var a: String

        //read: all, write: current and inner
        pub var b: String

        //read: contract, current and inner block, write: only current and inner block
        access(contract) var c: String

        //read: current and inner block, write: current and inner block
        access(self) var d: String

        //
        // 3 Functions
        //

        //all access
        pub fun publicFunc() {}

        //current, inner and contract
        access(contract) fun contractFunc() {}

        //current and inner block
        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
