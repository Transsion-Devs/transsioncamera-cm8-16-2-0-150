.class public final Lcom/google/common/flogger/context/LogLevelMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/LogLevelMap$Builder;
    }
.end annotation


# instance fields
.field private final trie:Lcom/google/common/flogger/context/SegmentTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/context/SegmentTrie<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/logging/Level;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;",
            "Ljava/util/logging/Level;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 130
    invoke-static {p1, v0, p2}, Lcom/google/common/flogger/context/SegmentTrie;->create(Ljava/util/Map;CLjava/lang/Object;)Lcom/google/common/flogger/context/SegmentTrie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    return-void
.end method

.method public static builder()Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .registers 2

    .line 88
    new-instance v0, Lcom/google/common/flogger/context/LogLevelMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;-><init>(Lcom/google/common/flogger/context/LogLevelMap$1;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/flogger/context/LogLevelMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;)",
            "Lcom/google/common/flogger/context/LogLevelMap;"
        }
    .end annotation

    .line 105
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-static {p0, v0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;",
            "Ljava/util/logging/Level;",
            ")",
            "Lcom/google/common/flogger/context/LogLevelMap;"
        }
    .end annotation

    .line 114
    const-string v0, "default log level must not be null"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    goto :goto_d

    .line 121
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "log levels must not be null; logger="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid logger name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_6a
    new-instance v0, Lcom/google/common/flogger/context/LogLevelMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/LogLevelMap;-><init>(Ljava/util/Map;Ljava/util/logging/Level;)V

    return-object v0
.end method

.method public static create(Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;
    .registers 2

    .line 96
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method

.method private static min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .registers 4

    .line 169
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_b

    return-object p0

    :cond_b
    return-object p1
.end method


# virtual methods
.method public getLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {p0, p1}, Lcom/google/common/flogger/context/SegmentTrie;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/logging/Level;

    return-object p0
.end method

.method public merge(Lcom/google/common/flogger/context/LogLevelMap;)Lcom/google/common/flogger/context/LogLevelMap;
    .registers 9

    .line 147
    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {v0}, Lcom/google/common/flogger/context/SegmentTrie;->getEntryMap()Ljava/util/Map;

    move-result-object v0

    .line 148
    iget-object v1, p1, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {v1}, Lcom/google/common/flogger/context/SegmentTrie;->getEntryMap()Ljava/util/Map;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 153
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 156
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Level;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 157
    :cond_41
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 158
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Level;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 160
    :cond_51
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Level;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Level;

    invoke-static {v5, v6}, Lcom/google/common/flogger/context/LogLevelMap;->min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 164
    :cond_65
    iget-object p0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {p0}, Lcom/google/common/flogger/context/SegmentTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/logging/Level;

    iget-object p1, p1, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {p1}, Lcom/google/common/flogger/context/SegmentTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Level;

    invoke-static {p0, p1}, Lcom/google/common/flogger/context/LogLevelMap;->min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object p0

    .line 165
    invoke-static {v2, p0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method
