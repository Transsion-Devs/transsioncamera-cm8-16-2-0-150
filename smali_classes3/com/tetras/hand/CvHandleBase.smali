.class public abstract Lcom/tetras/hand/CvHandleBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mBuffer:[B

.field mCvHandTrackHandle:J

.field protected mResultCode:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tetras/hand/CvHandleBase;->mResultCode:[I

    return-void
.end method


# virtual methods
.method protected checkResultCode()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/tetras/hand/CvHandleBase;->mResultCode:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/tetras/hand/CvHandleBase;->checkResultCode(I)V

    return-void
.end method

.method protected checkResultCode(I)V
    .registers 4

    .line 38
    sget-object p0, Lcom/tetras/hand/model/ResultCode;->OK:Lcom/tetras/hand/model/ResultCode;

    invoke-virtual {p0}, Lcom/tetras/hand/model/ResultCode;->getResultCode()I

    move-result p0

    if-ne p1, p0, :cond_9

    return-void

    .line 39
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling native method failed! ResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected creatBufferIfNeed(II)[B
    .registers 4

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    .line 49
    iget-object p2, p0, Lcom/tetras/hand/CvHandleBase;->mBuffer:[B

    if-eqz p2, :cond_b

    array-length v0, p2

    if-ne v0, p1, :cond_b

    return-object p2

    .line 52
    :cond_b
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tetras/hand/CvHandleBase;->mBuffer:[B

    return-object p1
.end method

.method protected finalize()V
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->release()V

    .line 15
    const-string p0, "StMobileHand"

    const-string v0, "==>finalize..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isHandleInitialized()Z
    .registers 5

    .line 32
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 5

    .line 23
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/tetras/hand/CvHandleBase;->mBuffer:[B

    .line 27
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->releaseHandle()V

    .line 28
    iput-wide v2, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    return-void
.end method

.method protected abstract releaseHandle()V
.end method
