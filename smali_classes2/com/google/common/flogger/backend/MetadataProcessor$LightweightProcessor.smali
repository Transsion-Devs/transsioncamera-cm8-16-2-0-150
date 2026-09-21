.class final Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;
.super Lcom/google/common/flogger/backend/MetadataProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LightweightProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;
    }
.end annotation


# static fields
.field private static final MAX_LIGHTWEIGHT_ELEMENTS:I = 0x1c


# instance fields
.field private final keyCount:I

.field private final keyMap:[I

.field private final logged:Lcom/google/common/flogger/backend/Metadata;

.field private final scope:Lcom/google/common/flogger/backend/Metadata;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V
    .registers 4

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$1;)V

    .line 195
    const-string v0, "scope metadata"

    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/Metadata;

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    .line 196
    const-string v0, "logged metadata"

    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/Metadata;

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    .line 201
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    .line 203
    :goto_28
    const-string v0, "metadata size too large"

    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 204
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    .line 205
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->prepareKeyMap([I)I

    move-result p1

    iput p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/MetadataProcessor$1;)V
    .registers 4

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;-><init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)I
    .registers 1

    .line 184
    iget p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)[I
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Lcom/google/common/flogger/MetadataKey;
    .registers 2

    .line 184
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;I",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    if-nez v0, :cond_12

    .line 275
    invoke-direct {p0, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p4}, Lcom/google/common/flogger/backend/MetadataHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 277
    :cond_12
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataProcessor$1;)V

    invoke-virtual {p3, p1, v0, p4}, Lcom/google/common/flogger/backend/MetadataHandler;->handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    return-void
.end method

.method private getKey(I)Lcom/google/common/flogger/MetadataKey;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 380
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    sub-int/2addr p1, v0

    :goto_b
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    goto :goto_b
.end method

.method private getValue(I)Ljava/lang/Object;
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 385
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    sub-int/2addr p1, v0

    :goto_b
    invoke-virtual {p0, p1}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    goto :goto_b
.end method

.method private indexOf(Lcom/google/common/flogger/MetadataKey;[II)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_15

    .line 371
    aget v1, p2, v0

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/flogger/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method private prepareKeyMap([I)I
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 331
    :goto_4
    array-length v4, p1

    if-ge v2, v4, :cond_37

    .line 332
    invoke-direct {p0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v4

    .line 337
    invoke-virtual {v4}, Lcom/google/common/flogger/MetadataKey;->getBloomFilterMask()J

    move-result-wide v5

    or-long/2addr v5, v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_2e

    .line 347
    invoke-direct {p0, v4, p1, v3}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 357
    invoke-virtual {v4}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v1

    if-eqz v1, :cond_2a

    aget v1, p1, v0

    add-int/lit8 v4, v2, 0x4

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v1, v4

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    aput v1, p1, v0

    goto :goto_33

    :cond_2e
    add-int/lit8 v0, v3, 0x1

    .line 362
    aput v2, p1, v3

    move v3, v0

    :goto_33
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_4

    :cond_37
    return v3
.end method


# virtual methods
.method public getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "key must be single valued"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    if-ltz v0, :cond_22

    .line 229
    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public handle(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    if-ltz v0, :cond_11

    .line 220
    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    aget v0, v1, v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public keyCount()I
    .registers 1

    .line 234
    iget p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)V

    return-object v0
.end method

.method public process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    :goto_1
    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    if-ge v0, v1, :cond_15

    .line 211
    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    .line 212
    invoke-direct {p0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method
