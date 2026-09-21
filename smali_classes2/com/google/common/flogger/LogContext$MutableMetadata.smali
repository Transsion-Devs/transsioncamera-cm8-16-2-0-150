.class final Lcom/google/common/flogger/LogContext$MutableMetadata;
.super Lcom/google/common/flogger/backend/Metadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableMetadata"
.end annotation


# static fields
.field private static final INITIAL_KEY_VALUE_CAPACITY:I = 0x4


# instance fields
.field private keyValueCount:I

.field private keyValuePairs:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Metadata;-><init>()V

    const/16 v0, 0x8

    .line 222
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return-void
.end method

.method private indexOf(Lcom/google/common/flogger/MetadataKey;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    :goto_1
    iget v1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge v0, v1, :cond_15

    .line 249
    iget-object v1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method addValue(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    const-string v1, "metadata value"

    if-nez v0, :cond_1c

    .line 269
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 271
    iget-object p0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    return-void

    .line 276
    :cond_1c
    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    array-length v3, v2

    if-le v0, v3, :cond_30

    .line 280
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    .line 282
    :cond_30
    iget-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, "metadata key"

    invoke-static {p1, v3}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    .line 283
    iget-object p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v0

    .line 284
    iget p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return-void
.end method

.method public findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
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

    .line 258
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 259
    iget-object p0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Lcom/google/common/flogger/MetadataKey;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    .line 233
    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge p1, v0, :cond_d

    .line 236
    iget-object p0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/common/flogger/MetadataKey;

    return-object p0

    .line 234
    :cond_d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 3

    .line 241
    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge p1, v0, :cond_d

    .line 244
    iget-object p0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 242
    :cond_d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method removeAllValues(Lcom/google/common/flogger/MetadataKey;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    if-ltz v0, :cond_3d

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x2

    .line 293
    :goto_a
    iget v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_2b

    .line 294
    iget-object v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 295
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 296
    iget-object v3, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    aput-object v2, v3, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 297
    aget-object v4, v3, v4

    aput-object v4, v3, v2

    add-int/lit8 v0, v0, 0x2

    :cond_28
    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    :cond_2b
    sub-int p1, v1, v0

    shr-int/lit8 p1, p1, 0x1

    sub-int/2addr v2, p1

    .line 303
    iput v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    :goto_32
    if-ge v0, v1, :cond_3d

    .line 305
    iget-object p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    aput-object v3, p1, v0

    move v0, v2

    goto :goto_32

    :cond_3d
    return-void
.end method

.method public size()I
    .registers 1

    .line 228
    iget p0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 314
    :goto_8
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext$MutableMetadata;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 315
    const-string v2, " \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 317
    :cond_29
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
