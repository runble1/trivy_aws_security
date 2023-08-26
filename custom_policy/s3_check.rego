package trivy

default is_public = false

is_public {
    input.spec.acl == "public-read"
}

is_public {
    input.spec.acl == "public-read-write"
}

is_public {
    statement := input.spec.bucket_policy.Statement[_]
    statement.Effect == "Allow"
    statement.Principal == "*"
}