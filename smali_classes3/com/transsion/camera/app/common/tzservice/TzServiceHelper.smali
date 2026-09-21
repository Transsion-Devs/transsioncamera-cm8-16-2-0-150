.class public Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;
.super Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mBGEnable:Z

.field private final mFinishPictures:Ljava/util/Set;

.field private volatile mIsBGSurface:Z

.field private final mStartPictures:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TzServiceHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    .line 18
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    return-void
.end method

.method private notifyEventCallback(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 6

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    if-nez v0, :cond_5

    goto :goto_36

    .line 118
    :cond_5
    iget v0, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getImageCallback()Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 121
    iget-wide v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail(J)V

    goto :goto_2e

    .line 123
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyEventCallback low failed but imageCallback is null, timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    :goto_2e
    iget-wide v0, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->decreasePicCount(J)V

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreaseCaptureCount()V

    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method protected addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 2

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    if-eqz p0, :cond_b

    .line 102
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    :cond_b
    return-void
.end method

.method protected decreasePicCount(J)V
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->decreasePicCount(J)V

    goto :goto_25

    .line 149
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->isUnnecessaryChangePictureCount()Z

    move-result v1

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_25

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<decreasePicCount> timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mStartPictures = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    .line 154
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mFinishPictures = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected disableBGEnable()V
    .registers 4

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableBGEnable: mBGEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .registers 1

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected increasePicCount(J)V
    .registers 7

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 134
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->increasePicCount(J)V

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->isUnnecessaryChangePictureCount()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<increasePicCount> timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mStartPictures = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mFinishPictures = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isEnable()Z
    .registers 4

    .line 39
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBGEnable: mBGEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    return p0
.end method

.method protected isNeedReleaseAfterCheckNum()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    return p0
.end method

.method protected isUnnecessaryChangePictureCount()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 108
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    const-class v0, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 110
    check-cast p2, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->notifyEventCallback(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    :cond_10
    return-void
.end method

.method protected onBGServiceDied()V
    .registers 1

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->onBGServiceDiedBefore()V

    .line 58
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onBGServiceDied()V

    return-void
.end method

.method protected onBGServiceDiedBefore()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    .line 63
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    return-void
.end method

.method protected onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    if-eqz v0, :cond_b

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 71
    :cond_b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->onRelease(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mStartPictures:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mFinishPictures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected resetBGEnable(ZZ)V
    .registers 4

    .line 45
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetBGEnable: mBGEnable = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected setCustomEnable(ZZ)V
    .registers 4

    .line 28
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isTZServiceSupport()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    goto :goto_10

    .line 31
    :cond_e
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    .line 33
    :goto_10
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    .line 34
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setEnable(Z)V

    return-void
.end method

.method protected shouldReleaseSurface()Z
    .registers 3

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Helper;->getPictureCount()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_8

    return v1

    .line 96
    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/tzservice/TzServiceHelper;->mBGEnable:Z

    xor-int/2addr p0, v1

    return p0
.end method
