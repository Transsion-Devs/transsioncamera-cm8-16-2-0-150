.class Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;
    }
.end annotation


# instance fields
.field private final head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

.field private final keyToEntry:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    return-void
.end method

.method private makeHead(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .registers 2

    .line 98
    invoke-static {p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object p0, p1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object p0, p1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 101
    invoke-static {p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->updateEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    return-void
.end method

.method private makeTail(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .registers 3

    .line 106
    invoke-static {p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 108
    iput-object p0, p1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 109
    invoke-static {p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->updateEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    return-void
.end method

.method private static removeEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v1, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    return-void
.end method

.method private static updateEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public get(Lcom/transsion/camera/utils/bitmap_recycle/Poolable;)Ljava/lang/Object;
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    if-nez v0, :cond_15

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 45
    :cond_15
    invoke-interface {p1}, Lcom/transsion/camera/utils/bitmap_recycle/Poolable;->offer()V

    .line 48
    :goto_18
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->makeHead(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 50
    invoke-virtual {v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Lcom/transsion/camera/utils/bitmap_recycle/Poolable;Ljava/lang/Object;)V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    if-nez v0, :cond_18

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->makeTail(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 32
    :cond_18
    invoke-interface {p1}, Lcom/transsion/camera/utils/bitmap_recycle/Poolable;->offer()V

    .line 35
    :goto_1b
    invoke-virtual {v0, p2}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 57
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 58
    invoke-virtual {v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    return-object v1

    .line 69
    :cond_13
    invoke-static {v0}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->removeEntry(Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;)V

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/utils/bitmap_recycle/Poolable;

    invoke-interface {v1}, Lcom/transsion/camera/utils/bitmap_recycle/Poolable;->offer()V

    .line 74
    iget-object v0, v0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    goto :goto_4

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    iget-object v1, v1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    const/4 v2, 0x0

    .line 85
    :goto_c
    iget-object v3, p0, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap;->head:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const/16 v2, 0x7b

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, v1, Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/transsion/camera/utils/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    const/4 v2, 0x1

    goto :goto_c

    :cond_33
    if-eqz v2, :cond_42

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 93
    :cond_42
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
