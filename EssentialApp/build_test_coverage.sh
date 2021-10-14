WORKSPACE=$1
SCHEME=$2
SIMULATOR_DESTINATION=$3
SPECIFIC_DERIVEDDATA=$4
COVERAGEJSON="coverage.json"

xcodebuild -workspace $WORKSPACE \
-scheme "$SCHEME" \
-configuration Debug \
-destination "$SIMULATOR_DESTINATION" \
-sdk iphonesimulator \
-derivedDataPath $SPECIFIC_DERIVEDDATA \
-enableCodeCoverage YES \
test \
clean build-for-testing | xcpretty -c

xcrun xccov view --only-targets --json --report $SPECIFIC_DERIVEDDATA/Logs/Test/*.xcresult/ > $COVERAGEJSON

rm -rf $SPECIFIC_DERIVEDDATA
