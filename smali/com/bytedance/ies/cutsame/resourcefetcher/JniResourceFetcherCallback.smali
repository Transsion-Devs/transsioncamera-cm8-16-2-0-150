.class public Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "cut.FetcherCallback"


# instance fields
.field private input:Ljava/lang/String;

.field private nativeCallback:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    .line 19
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->input:Ljava/lang/String;

    return-void
.end method

.method static native nativeError(JLjava/lang/String;ILjava/lang/String;)V
.end method

.method static native nativeRelease(J)V
.end method

.method static native nativeSuccess(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native notifyProgress(JI)V
.end method

.method private release()V
    .registers 6

    .line 53
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 54
    invoke-static {v0, v1}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeRelease(J)V

    .line 55
    iput-wide v2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    :cond_d
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public notifyError(ILjava/lang/String;)V
    .registers 7

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.FetcherCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    .line 25
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->input:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeError(JLjava/lang/String;ILjava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->release()V

    return-void

    .line 28
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "callback already release"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyProgress(I)V
    .registers 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.FetcherCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_22

    .line 46
    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->notifyProgress(JI)V

    return-void

    .line 48
    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "callback already release"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifySuccess(Ljava/lang/String;)V
    .registers 6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.FetcherCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeCallback:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_27

    .line 35
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->input:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->nativeSuccess(JLjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/JniResourceFetcherCallback;->release()V

    return-void

    .line 38
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "callback already release"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
