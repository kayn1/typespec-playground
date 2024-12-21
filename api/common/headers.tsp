import "@typespec/http";
import "../types.tsp";

using TypeSpec.Http;

model IdHeader {
    @header
    requestID: UUIDV5;
}

model IdempotencyKeyHeader {
    @header
    idempotencyKey: UUIDV5;
}
