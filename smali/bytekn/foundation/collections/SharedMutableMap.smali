.class public final Lbytekn/foundation/collections/SharedMutableMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# instance fields
.field private final synthetic $$delegate_0:Ljava/util/Map;


# direct methods
.method public constructor <init>(Z)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_14

    :cond_b
    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    :goto_14
    iput-object p1, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 1

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lbytekn/foundation/collections/SharedMutableMap;->$$delegate_0:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge size()I
    .registers 1

    .line 10
    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->getSize()I

    move-result p0

    return p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
