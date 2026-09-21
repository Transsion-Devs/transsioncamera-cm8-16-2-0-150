.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/LookupCache;
.implements Ljava/io/Serializable;


# instance fields
.field protected final transient _map:Ljava/util/concurrent/ConcurrentHashMap;

.field protected final transient _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1f

    .line 45
    monitor-enter p0

    .line 46
    :try_start_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1b

    .line 47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    goto :goto_1b

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 49
    :cond_1b
    :goto_1b
    monitor-exit p0

    goto :goto_1f

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_19

    throw p1

    .line 51
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1f

    .line 62
    monitor-enter p0

    .line 63
    :try_start_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1b

    .line 64
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    goto :goto_1b

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 66
    :cond_1b
    :goto_1b
    monitor-exit p0

    goto :goto_1f

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_19

    throw p1

    .line 68
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
