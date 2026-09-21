.class public final Lcom/squareup/wire/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final durationOfSeconds(JJ)Ljava/time/Duration;
    .registers 4

    .line 22
    invoke-static {p0, p1, p2, p3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    const-string p1, "ofSeconds(seconds, nano)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
