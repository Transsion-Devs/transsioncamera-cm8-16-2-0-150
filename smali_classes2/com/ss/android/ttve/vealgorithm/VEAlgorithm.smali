.class public Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEAlgorithm"


# instance fields
.field private mErrorListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;

.field protected mHandle:J

.field private mListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;

    .line 17
    iput-object v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mErrorListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    return-void
.end method


# virtual methods
.method public cancel()I
    .registers 5

    .line 64
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 68
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmCancel(J)I

    move-result p0

    return p0
.end method

.method public destroy()I
    .registers 6

    .line 80
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/16 p0, -0x70

    return p0

    .line 84
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmDestroy(J)I

    move-result v0

    .line 85
    iput-wide v2, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    return v0
.end method

.method protected finalize()V
    .registers 5

    .line 27
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not destroy algorithm object:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEAlgorithm"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public getResult()Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmResult;
    .registers 5

    .line 72
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmGetResult(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmResult;

    return-object p0
.end method

.method public init(Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;)I
    .registers 5

    .line 33
    iget v0, p1, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;->type:I

    .line 34
    sget v1, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmType;->VE_ALGORITHM_TYPE_INVALID:I

    const-string v2, "VEAlgorithm"

    if-ne v0, v1, :cond_1f

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid algorithm type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 39
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmCreate(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_32

    .line 41
    const-string p0, "nativeAlgorithmCreate failed!"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public native nativeAlgorithmCancel(J)I
.end method

.method public native nativeAlgorithmCreate(Ljava/lang/Object;)J
.end method

.method public native nativeAlgorithmDestroy(J)I
.end method

.method public native nativeAlgorithmGetRandomResult(J)Ljava/lang/Object;
.end method

.method public native nativeAlgorithmGetResult(J)Ljava/lang/Object;
.end method

.method public native nativeAlgorithmStart(J)I
.end method

.method public nativeCallback_onError(ILjava/lang/String;)V
    .registers 3

    .line 98
    iget-object p0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mErrorListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;

    if-eqz p0, :cond_7

    .line 99
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;->onError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onProcess(FZ)V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;

    if-eqz p0, :cond_7

    .line 92
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;->onProcess(FZ)V

    :cond_7
    return-void
.end method

.method public setErrorListener(Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mErrorListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmErrorListener;

    return-void
.end method

.method public setProcessListener(Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mListener:Lcom/ss/android/vesdk/VEListener$VEAlgorithmProcessListener;

    return-void
.end method

.method public start()I
    .registers 5

    .line 56
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 60
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmStart(J)I

    move-result p0

    return p0
.end method
