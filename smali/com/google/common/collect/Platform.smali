.class abstract Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static newHashMapWithExpectedSize(I)Ljava/util/Map;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/google/common/collect/CompactHashMap;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;

    move-result-object p0

    return-object p0
.end method
