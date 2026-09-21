.class public Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;
.super Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;
.source "SourceFile"


# instance fields
.field private volatile mIsPostAlgoSurface:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 2

    .line 53
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    return-void
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedReleaseAfterCheckNum: mIsPostAlgoSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isNeedReleaseAfterCheckNum()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

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

.method protected isUnnecessaryChangePictureCount()Z
    .registers 2

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->isUnnecessaryChangePictureCount()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected onBGServiceDiedBefore()V
    .registers 1

    return-void
.end method

.method protected onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 3

    .line 35
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    if-eqz v0, :cond_b

    .line 36
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 38
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 3

    .line 18
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->setCustomEnable(ZZ)V

    .line 19
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldReleaseSurface: mIsPostAlgoSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLHelper;->mIsPostAlgoSurface:Z

    if-nez v0, :cond_24

    invoke-super {p0}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->shouldReleaseSurface()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
