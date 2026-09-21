.class public abstract Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static equalsImpl(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 2133
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_17

    .line 2134
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 2135
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
