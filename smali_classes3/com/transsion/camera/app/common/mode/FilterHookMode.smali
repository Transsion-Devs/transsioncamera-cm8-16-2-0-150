.class public abstract Lcom/transsion/camera/app/common/mode/FilterHookMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# instance fields
.field private mAsdEnhanceFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

.field private mImageStyleFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 9

    .line 50
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 51
    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    if-eqz p7, :cond_15

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p7

    iget-boolean p7, p7, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    if-eqz p7, :cond_15

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V

    return-void

    .line 55
    :cond_15
    const-string p7, "com.transsion.camera.feature.arcfilter.preview.ArcFilterPreview"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    const/4 p7, 0x0

    .line 56
    new-array p7, p7, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.imagestyle.ImageStyle"

    invoke-static {v0, p7}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mImageStyleFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    .line 58
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p7

    const-string v0, "key_asd_enhance"

    invoke-interface {p7, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p7

    .line 59
    instance-of v0, p7, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_42

    .line 60
    check-cast p7, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mAsdEnhanceFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    .line 62
    :cond_42
    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p7, :cond_5f

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mAsdEnhanceFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_4e

    .line 64
    invoke-interface {p7, v0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    goto :goto_55

    .line 65
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mImageStyleFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    if-eqz v0, :cond_55

    .line 66
    invoke-interface {p7, v0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    .line 68
    :cond_55
    :goto_55
    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    invoke-interface {p7, p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    invoke-interface/range {p0 .. p6}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    :cond_5f
    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 2

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 77
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->onFirstSteadyFrame(Z)V

    :cond_b
    return-void
.end method

.method public onPostViewData([BIIIIJ)V
    .registers 11

    .line 39
    const-string v0, "1"

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, v1

    .line 40
    :goto_14
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-interface {v2, p3, p4, v1, v0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->onPostViewData(IIIZ)Z

    move-result v1

    :cond_20
    if-nez v1, :cond_25

    .line 42
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onPostViewData([BIIIIJ)V

    :cond_25
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 30
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_d

    .line 32
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->onShutterClick()Z

    :cond_d
    return p1
.end method

.method public pause()V
    .registers 1

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_a

    .line 93
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->pause()V

    :cond_a
    return-void
.end method

.method public resume()V
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_a

    .line 85
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->resume()V

    :cond_a
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 99
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_a

    .line 101
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->unInit()V

    :cond_a
    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .registers 2

    .line 107
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_a

    .line 109
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->updateFilterSupportIds(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
