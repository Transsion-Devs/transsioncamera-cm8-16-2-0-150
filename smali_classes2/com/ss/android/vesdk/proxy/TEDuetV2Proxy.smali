.class public Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;
.super Lcom/ss/android/vesdk/proxy/TEDuetProxy;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEDuetV2Proxy"


# instance fields
.field private mCamEffSizeFilter:I

.field private mCountOfUpdateSize:I

.field private mTmpSize:Lcom/ss/android/vesdk/VESize;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEDuetSettings;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/VESize;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    .line 20
    new-instance p1, Lcom/ss/android/vesdk/VESize;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mTmpSize:Lcom/ss/android/vesdk/VESize;

    .line 21
    iput p2, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)V
    .registers 7

    .line 32
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;-><init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    .line 20
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mTmpSize:Lcom/ss/android/vesdk/VESize;

    .line 21
    iput v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    .line 33
    iget-object v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    .line 34
    iget-object v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->settings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 35
    iget-object v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->resManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    .line 36
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    iget-object v3, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v4, v3, Lcom/ss/android/vesdk/VESize;->width:I

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v1, v4, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    .line 37
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->aTrack:I

    .line 38
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    .line 39
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 40
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamCanvasFilterIndex:I

    .line 41
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    .line 42
    iget v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    iput v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    .line 43
    iget-object v1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/TERecorder;->removeRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 44
    iget-object p1, p1, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/TERecorder;->addRecorderStateListener(Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;)V

    .line 45
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iput v2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 46
    iput v2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 49
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->setFilterForVideoTrack(I)V

    .line 50
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    const-string v1, "TEDuetV2Proxy"

    if-ltz p1, :cond_69

    .line 51
    iget-object v3, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcom/ss/android/vesdk/TERecorder;->removeTrack(IIZ)I

    .line 52
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    .line 53
    const-string p1, "Remove background track."

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_69
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->setFilterForCameraTrack(I)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Track bg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", left="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", src size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dst size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static moveFrom(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;
    .registers 2

    .line 155
    new-instance v0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;-><init>(Lcom/ss/android/vesdk/proxy/TEDuetProxy;)V

    return-object v0
.end method

.method private declared-synchronized update(II)V
    .registers 9

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    if-nez v0, :cond_11

    .line 94
    const-string p1, "TEDuetV2Proxy"

    const-string p2, "TERecorder is null."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 95
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .line 97
    :cond_11
    :try_start_11
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/vesdk/TERecorder;->changeVideoOutputSize(II)V

    .line 99
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;-><init>()V

    .line 100
    iput p1, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;->width:I

    .line 101
    iput p2, v3, Lcom/ss/android/vesdk/filterparam/VEVideoEffectOutSizeFilterParam;->height:I

    .line 102
    iget p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    if-ltz p1, :cond_2d

    .line 103
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    invoke-virtual {p1, p2, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    goto :goto_3d

    .line 105
    :cond_2d
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_e

    .line 107
    :goto_3d
    monitor-exit p0

    return-void

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_e

    throw p1
.end method


# virtual methods
.method protected enableBackgroundTrack()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 67
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    .line 69
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 70
    sget v1, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_DUET_DST_SIZE:I

    if-ne v0, v1, :cond_b0

    shr-int/lit8 v0, p1, 0xf

    const v1, 0xffff

    and-int v5, v0, v1

    and-int v6, p1, v1

    if-lez v5, :cond_b0

    if-gtz v6, :cond_1a

    goto/16 :goto_b0

    .line 76
    :cond_1a
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v3, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iget v4, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iget-object v7, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mTmpSize:Lcom/ss/android/vesdk/VESize;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->calBestDuetSize(IIIILcom/ss/android/vesdk/VESize;)V

    .line 77
    iget-object p0, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget-object p1, v2, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mTmpSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_35

    iget p0, v2, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    if-ge p0, p1, :cond_b0

    .line 78
    :cond_35
    iget p0, v2, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    add-int/2addr p0, p1

    iput p0, v2, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    .line 79
    iget-object p0, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget-object p1, v2, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mTmpSize:Lcom/ss/android/vesdk/VESize;

    iget v0, p1, Lcom/ss/android/vesdk/VESize;->width:I

    iput v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 80
    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 81
    invoke-direct {v2, v0, p1}, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->update(II)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update Track bg="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->bTrack:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", left="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", right="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->vTrack:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mSrcSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mDstSize:Lcom/ss/android/vesdk/VESize;

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    const-string p1, "TEDuetV2Proxy"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 3

    monitor-enter p0

    .line 146
    :try_start_1
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    if-ltz v0, :cond_16

    .line 147
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCamEffSizeFilter:I

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1e

    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetV2Proxy;->mCountOfUpdateSize:I

    .line 151
    invoke-super {p0}, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->onDestroy()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_14

    .line 152
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_14

    throw v0
.end method

.method protected setFilterForCameraTrack(I)V
    .registers 8

    .line 123
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v3}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    .line 124
    const-string v0, "canvas blend"

    iput-object v0, v3, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->scaleFactor:F

    const/4 v1, 0x0

    .line 126
    iput v1, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->transX:F

    .line 127
    iput v0, v3, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;->alpha:F

    .line 128
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    if-ltz v0, :cond_22

    .line 129
    iget-object p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    invoke-virtual {p1, p0, v3}, Lcom/ss/android/vesdk/VEEffect;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    return-void

    .line 131
    :cond_22
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mCamTransFilterIndex:I

    return-void
.end method

.method protected setFilterForVideoTrack(I)V
    .registers 9

    .line 111
    iget v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    if-ltz v0, :cond_12

    .line 112
    iget-object v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEEffect;->removeTrackFilter(I)I

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->mVTransFilterIndex:I

    .line 115
    :cond_12
    new-instance v4, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput v0, v4, Lcom/ss/android/vesdk/filterparam/VEVideoEffectStreamFilterParam;->streamFlags:I

    .line 118
    iget-object p0, p0, Lcom/ss/android/vesdk/proxy/TEDuetProxy;->recorder:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder;->getEffect()Lcom/ss/android/vesdk/VEEffect;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/vesdk/VEEffect;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    return-void
.end method
