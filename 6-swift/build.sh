# swiftc -emit-library -emit-object customswift/Logger.swift -sdk $(xcrun --show-sdk-path --sdk macosx) -module-name Logger
# ar rcs libLogger.a customswift/Logger.o
# swiftc -S main.swift -I customswift/ -L . -lLogger


swiftc -emit-assembly -O main.swift