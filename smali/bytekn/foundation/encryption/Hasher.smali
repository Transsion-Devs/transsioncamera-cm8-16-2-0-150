.class public abstract Lbytekn/foundation/encryption/Hasher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final chunk:[B

.field private final chunkSize:I

.field private final digestSize:I

.field private totalWritten:J

.field private writtenInChunk:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbytekn/foundation/encryption/Hasher;->chunkSize:I

    iput p2, p0, Lbytekn/foundation/encryption/Hasher;->digestSize:I

    .line 17
    new-array p1, p1, [B

    iput-object p1, p0, Lbytekn/foundation/encryption/Hasher;->chunk:[B

    return-void
.end method


# virtual methods
.method protected abstract coreDigest([B)V
.end method

.method protected abstract corePadding(J)[B
.end method

.method protected abstract coreReset()V
.end method

.method protected abstract coreUpdate([B)V
.end method

.method public final digest()[B
    .registers 2

    .line 68
    iget v0, p0, Lbytekn/foundation/encryption/Hasher;->digestSize:I

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lbytekn/foundation/encryption/Hasher;->digestOut([B)V

    invoke-static {v0}, Lbytekn/foundation/encryption/Hash;->constructor-impl([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final digestOut([B)V
    .registers 8

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lbytekn/foundation/encryption/Hasher;->totalWritten:J

    invoke-virtual {p0, v0, v1}, Lbytekn/foundation/encryption/Hasher;->corePadding(J)[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 50
    :goto_d
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 51
    iget v3, p0, Lbytekn/foundation/encryption/Hasher;->chunkSize:I

    iget v4, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    sub-int/2addr v3, v4

    .line 52
    iget-object v5, p0, Lbytekn/foundation/encryption/Hasher;->chunk:[B

    invoke-static {v0, v2, v5, v4, v3}, Lbytekn/foundation/encryption/EncryptionToolsKt;->arraycopy([BI[BII)[B

    .line 53
    iget-object v4, p0, Lbytekn/foundation/encryption/Hasher;->chunk:[B

    invoke-virtual {p0, v4}, Lbytekn/foundation/encryption/Hasher;->coreUpdate([B)V

    .line 54
    iput v1, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    add-int/2addr v2, v3

    goto :goto_d

    .line 58
    :cond_23
    invoke-virtual {p0, p1}, Lbytekn/foundation/encryption/Hasher;->coreDigest([B)V

    .line 59
    invoke-virtual {p0}, Lbytekn/foundation/encryption/Hasher;->coreReset()V

    return-void
.end method

.method public final getChunkSize()I
    .registers 1

    .line 16
    iget p0, p0, Lbytekn/foundation/encryption/Hasher;->chunkSize:I

    return p0
.end method

.method public final update([BII)Lbytekn/foundation/encryption/Hasher;
    .registers 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p3

    :cond_6
    :goto_6
    if-lez v0, :cond_2c

    .line 32
    iget v1, p0, Lbytekn/foundation/encryption/Hasher;->chunkSize:I

    iget v2, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    sub-int/2addr v1, v2

    .line 33
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34
    iget-object v2, p0, Lbytekn/foundation/encryption/Hasher;->chunk:[B

    iget v3, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    invoke-static {p1, p2, v2, v3, v1}, Lbytekn/foundation/encryption/EncryptionToolsKt;->arraycopy([BI[BII)[B

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    .line 37
    iget v2, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    add-int/2addr v2, v1

    iput v2, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    .line 38
    iget v1, p0, Lbytekn/foundation/encryption/Hasher;->chunkSize:I

    if-lt v2, v1, :cond_6

    sub-int/2addr v2, v1

    .line 39
    iput v2, p0, Lbytekn/foundation/encryption/Hasher;->writtenInChunk:I

    .line 40
    iget-object v1, p0, Lbytekn/foundation/encryption/Hasher;->chunk:[B

    invoke-virtual {p0, v1}, Lbytekn/foundation/encryption/Hasher;->coreUpdate([B)V

    goto :goto_6

    .line 43
    :cond_2c
    iget-wide p1, p0, Lbytekn/foundation/encryption/Hasher;->totalWritten:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lbytekn/foundation/encryption/Hasher;->totalWritten:J

    return-object p0
.end method
