.class public abstract Lcom/google/common/collect/Collections2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2

    .line 103
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    const/4 p0, 0x0

    return p0
.end method
