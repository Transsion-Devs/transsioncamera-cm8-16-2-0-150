.class public Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;
.super Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mBGOfflineEnable:Z

.field private volatile mIsDirty:Z

.field private volatile mOfflineState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BgOfflineHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mOfflineState:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mIsDirty:Z

    return-void
.end method


# virtual methods
.method protected disableBGEnable()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    return-void
.end method

.method protected isEnable()Z
    .registers 4

    .line 29
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBGEnable: mBGOfflineEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    return p0
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedReleaseAfterCheckNum: mBGOfflineEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isNeedReleaseAfterCheckNum()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method protected isPictureCountRemaining()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isPictureCountRemaining()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method protected isSurfaceDirty()Z
    .registers 1

    .line 108
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mIsDirty:Z

    return p0
.end method

.method protected isUnnecessaryChangeCaptureCount()Z
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isUnnecessaryChangeCaptureCount()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isUnnecessaryChangePictureCount()Z
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isUnnecessaryChangePictureCount()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onImageAvailable mBGOfflineEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->onImageAvailable(Landroid/media/ImageReader;)V

    return-void
.end method

.method protected releaseAfterCheckNum()V
    .registers 5

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAfterCheckNum, mOfflineState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mOfflineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_1b
    iget v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mOfflineState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 99
    const-string p0, "releaseAfterCheckNum return, has to wait offlineSession be closed!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    monitor-exit v1

    return-void

    :catchall_27
    move-exception p0

    goto :goto_2e

    .line 102
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_27

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->releaseAfterCheckNum()V

    return-void

    .line 102
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_27

    throw p0
.end method

.method protected resetBGEnable(ZZ)V
    .registers 3

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->setCustomEnable(ZZ)V

    .line 24
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldReleaseSurface: mBGOfflineEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mBGOfflineEnable:Z

    if-eqz v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_1e
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->shouldReleaseSurface()Z

    move-result p0

    return p0
.end method

.method protected updateBGOfflineState(I)V
    .registers 5

    .line 45
    sget-object v0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBGOfflineState: offlineState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    iput p1, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mOfflineState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/bgservice/BgOfflineHelper;->mIsDirty:Z

    .line 49
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->setCanReleaseCaptureSurface(Z)V

    :cond_21
    return-void
.end method
