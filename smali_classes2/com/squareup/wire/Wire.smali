.class public final Lcom/squareup/wire/Wire;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method
