.class public Lcom/google/protobuf/TextFormatParseInfoTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    }
.end annotation


# instance fields
.field private locationsFromField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;>;"
        }
    .end annotation
.end field

.field subtreesFromField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseInfoTree;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseInfoTree$Builder;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 76
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->locationsFromField:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    .line 83
    invoke-virtual {v3}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;->build()Lcom/google/protobuf/TextFormatParseInfoTree;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 85
    :cond_70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 87
    :cond_7c
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->subtreesFromField:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/protobuf/TextFormatParseInfoTree$1;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormatParseInfoTree;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .registers 2

    .line 147
    new-instance v0, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;-><init>(Lcom/google/protobuf/TextFormatParseInfoTree$1;)V

    return-object v0
.end method

.method private static getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    if-gez p1, :cond_9

    goto :goto_e

    .line 157
    :cond_9
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 152
    :cond_e
    :goto_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_15

    const-string p2, "<null>"

    goto :goto_19

    .line 155
    :cond_15
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 153
    const-string p2, "Illegal index field: %s, index %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getLocation(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Lcom/google/protobuf/TextFormatParseLocation;
    .registers 3

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getLocations(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/TextFormatParseLocation;

    return-object p0
.end method

.method public getLocations(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->locationsFromField:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_c

    .line 99
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_c
    return-object p0
.end method

.method public getNestedTree(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Lcom/google/protobuf/TextFormatParseInfoTree;
    .registers 3

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getNestedTrees(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/TextFormatParseInfoTree;

    return-object p0
.end method

.method public getNestedTrees(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/protobuf/TextFormatParseInfoTree;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->subtreesFromField:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_c

    .line 125
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_c
    return-object p0
.end method
