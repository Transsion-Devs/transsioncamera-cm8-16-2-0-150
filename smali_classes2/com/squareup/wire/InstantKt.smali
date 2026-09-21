.class public final Lcom/squareup/wire/InstantKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ofEpochSecond(JJ)Ljava/time/Instant;
    .registers 4

    .line 22
    invoke-static {p0, p1, p2, p3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    const-string p1, "ofEpochSecond(epochSecond, nano)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
