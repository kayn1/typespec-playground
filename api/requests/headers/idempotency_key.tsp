import "@typespec/http";

import "../../types.tsp";
import "../../common/headers.tsp";

using TypeSpec.Http;

model RequestIdempotencyKeyHeader extends IdempotencyKeyHeader {}
