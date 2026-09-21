.class public Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mIsDetect:I

.field private mLastDetect:I

.field private mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

.field private final mMainHandler:Landroid/os/Handler;

.field private mResumeTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$3j_j7zoDUYB-7fHFrUPjJQBZKxs(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->lambda$onSettingChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9D-TjyifvVQ9nOKAwIZgGgKv964(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->lambda$onSettingChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$mQ9_L4Utz1QbJCbbXNmQvKuOWu0(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->lambda$new$3(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_eQvBaMPoaHYOcEJBgilymq1fQ(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->lambda$initMagicSkyUI$0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMagicSkyPanelUI(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MagicSkyMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMainHandler:Landroid/os/Handler;

    .line 306
    new-instance p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 318
    new-instance p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private static findBestMatchPanelSize(Ljava/util/List;DIID)Landroid/util/Size;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DIID)",
            "Landroid/util/Size;"
        }
    .end annotation

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_8

    const/16 p4, 0x240

    .line 368
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p3, 0x0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 369
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    .line 371
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p5

    if-gtz v3, :cond_12

    .line 373
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v3, v0

    if-gtz v5, :cond_12

    move-object p3, v2

    move-wide v0, v3

    goto :goto_12

    :cond_43
    return-object p3
.end method

.method private getPreviewSize(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "ZD)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 330
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v0, v4

    mul-double/2addr v0, p2

    double-to-int v3, v0

    if-eqz p5, :cond_3e

    .line 334
    sget-object p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ratio mapping panel size: ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p1

    move-wide v1, p2

    move-wide v5, p6

    .line 335
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->findBestMatchPanelSize(Ljava/util/List;DIID)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_42

    return-object p0

    :cond_3e
    move-object v0, p1

    move-wide v1, p2

    move-wide v5, p6

    const/4 p0, 0x0

    :cond_42
    if-nez p0, :cond_a8

    .line 343
    sget-object p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ", then use standard 4:3 for preview"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_68
    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Size;

    .line 347
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p5

    int-to-double p5, p5

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p7

    int-to-double v0, p7

    div-double/2addr p5, v0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr p5, v0

    .line 348
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    cmpl-double p5, p5, v5

    if-lez p5, :cond_8e

    goto :goto_68

    .line 351
    :cond_8e
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p5

    sub-int/2addr p5, v4

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    int-to-double p5, p5

    cmpg-double p5, p5, p2

    if-gez p5, :cond_68

    .line 353
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double p2, p0

    move-object p0, p4

    goto :goto_68

    :cond_a8
    return-object p0
.end method

.method private initMagicSkyUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 8

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-nez v1, :cond_2c

    .line 221
    new-instance v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v2, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v3, "com.transsion.camera.app.ui.mode.magicsky.MagicSkyPanelUI5"

    .line 222
    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    filled-new-array {p1, v0, v3, v4, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 223
    invoke-virtual {v1, v2, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    .line 226
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method private synthetic lambda$initMagicSkyUI$0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
    .registers 10

    .line 223
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-object v0
.end method

.method private synthetic lambda$new$3(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 319
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMagicSkyDetection(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    .line 320
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    .line 321
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    const-string p3, "key_magic_sky_detection"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    iget p2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    iget p3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    if-eq p2, p3, :cond_44

    .line 323
    sget-object p2, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sky Detection is : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p2, "key_magic_sky_type"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 325
    iget p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    :cond_44
    return-void
.end method

.method private synthetic lambda$onSettingChanged$1()V
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hide()V

    return-void
.end method

.method private synthetic lambda$onSettingChanged$2()V
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->show()V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 110
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 3

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_11
    move p0, v0

    goto :goto_15

    :cond_13
    const/16 p0, 0x8

    .line 129
    :goto_15
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x4

    .line 132
    :cond_20
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatureConfig()Lcom/transsion/camera/app/common/IModeFeatureConfig;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 16

    .line 149
    const-string v12, "key_voice_detection"

    const-string v13, "key_touch_capture"

    const-string v0, "key_mood_light"

    const-string v1, "key_tran_plugin"

    const-string v2, "key_magic_sky_type"

    const-string v3, "key_edit_watermark"

    const-string v4, "key_gold_watermark"

    const-string v5, "key_pro_watermark"

    const-string v6, "key_fingerprint_capture"

    const-string v7, "key_secondary_screen"

    const-string v8, "key_taint_detection"

    const-string v9, "key_shutter_sound_optional"

    const-string v10, "key_setting_smart_denoise"

    const-string v11, "key_activity_orientation"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 4

    .line 97
    invoke-static {}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 100
    iget p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->getMultiFrameModeRelation(I)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    goto :goto_20

    .line 102
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 104
    :goto_20
    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v2

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    const/4 v5, 0x1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    move-object v0, p0

    move-object v1, p1

    .line 139
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 70
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 71
    sget-object p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "init mode"

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->initMagicSkyUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 75
    const-string p1, "key_self_timer_status"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 76
    const-string p1, "key_self_timer"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 187
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 251
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 257
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 263
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_7e

    :cond_10
    if-nez p2, :cond_14

    goto/16 :goto_7e

    .line 271
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_80

    goto :goto_3d

    :sswitch_1d
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v0, 0x2

    goto :goto_3d

    :sswitch_28
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_3d

    :cond_31
    const/4 v0, 0x1

    goto :goto_3d

    :sswitch_33
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    packed-switch v0, :pswitch_data_8e

    goto :goto_7e

    .line 273
    :pswitch_41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz p1, :cond_7e

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hide()V

    return-void

    .line 277
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 283
    :pswitch_60
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz p1, :cond_7e

    .line 284
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->show()V

    return-void

    .line 287
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7e
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0xaded465 -> :sswitch_33
        -0x5096c46 -> :sswitch_28
        0x31566b69 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
        :pswitch_41
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 2

    .line 300
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_c
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 242
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .registers 6

    .line 232
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mResumeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Do not take pictures for 5 seconds after the camera is started in monkey scene."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_1c
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp()Z
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->isSkySelectUIShow()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 209
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 213
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_15

    const/16 v0, 0xd6

    .line 214
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_15
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 3

    .line 201
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateAdapterPosition()V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mResumeTimestamp:J

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 82
    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 83
    const-string v0, "key_self_timer"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_17

    .line 85
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->unInitMagicSkyUI()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    .line 88
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-interface {v0, v1, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 92
    :cond_27
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSkyType(I)V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .registers 2

    .line 169
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updatePreviewSize(Landroid/util/Size;)V

    return-void
.end method
