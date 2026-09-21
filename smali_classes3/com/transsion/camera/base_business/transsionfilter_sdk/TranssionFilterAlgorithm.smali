.class public Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentCameraStatus:I

.field private mCurrentModeName:Ljava/lang/String;

.field private mDisableRenderFrame:Z

.field private final mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

.field private volatile mInitialized:Z

.field private mOldCameraStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranssionFilterAlgorithm"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    .line 44
    new-instance p2, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-direct {p2, p1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 252
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized initAlgo()V
    .registers 3

    monitor-enter p0

    .line 76
    :try_start_1
    sget-object v0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initAlgo ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    if-nez v0, :cond_22

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->initFilterEngine()V

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->initFilterValue()V

    .line 80
    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v0

    goto :goto_24

    .line 84
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw v0
.end method

.method private initFilterEngine()V
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    if-nez v0, :cond_c

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    :cond_c
    return-void
.end method

.method private initFilterValue()V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_a

    goto/16 :goto_a1

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_a2

    goto :goto_38

    :sswitch_18
    const-string v1, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v2, 0x2

    goto :goto_38

    :sswitch_23
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v1, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    packed-switch v2, :pswitch_data_b0

    goto :goto_a1

    .line 123
    :pswitch_3c
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_street_photo_style"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STREET_PHOTO_MAP"

    invoke-static {v1, v2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->postInvalidate()V

    return-void

    .line 108
    :pswitch_55
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    const-string v2, "AI_CAM_MAP"

    invoke-static {v0, v2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 112
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_image_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    iget-object v2, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->getSkinColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getImageStyleId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setImageStyleId(I)V

    .line 116
    :cond_83
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->postInvalidate()V

    return-void

    .line 119
    :pswitch_89
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_supernight_filter"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUPER_NIGHT_MAP"

    invoke-static {v1, v2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->postInvalidate()V

    :cond_a1
    :goto_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        -0x701d403b -> :sswitch_2e
        -0x42df7e45 -> :sswitch_23
        -0x233d1519 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_89
        :pswitch_55
        :pswitch_3c
    .end packed-switch
.end method

.method private isCurrentCameraFacingBack()Z
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private pauseToResume()Z
    .registers 3

    .line 299
    iget v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mOldCameraStatus:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraStatus:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 301
    :goto_f
    iget v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraStatus:I

    iput v1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mOldCameraStatus:I

    return v0
.end method

.method private renderFrame(I)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mDisableRenderFrame:Z

    return v1

    .line 295
    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mDisableRenderFrame:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method private shouldExecuteAlgoProcess()Z
    .registers 8

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_image_style"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_supernight_filter"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_street_photo_style"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    if-nez v5, :cond_34

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_34
    const-string v0, "supernight_filter_off"

    .line 264
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    if-eqz v2, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 265
    :cond_48
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 266
    :cond_58
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    if-eqz v3, :cond_6c

    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6c

    :cond_6a
    const/4 p0, 0x1

    return p0

    :cond_6c
    const/4 p0, 0x0

    return p0
.end method

.method private unInitAlgo()V
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    if-eqz v0, :cond_e

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->unInitFilterRender()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 90
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceWidth:I

    .line 91
    iput v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSurfaceHeight:I

    :cond_e
    return-void
.end method

.method private unInitFilterRender()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    if-eqz v0, :cond_a

    .line 242
    invoke-virtual {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->unInit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mInitialized:Z

    :cond_a
    return-void
.end method

.method private updateRenderDrawerOrientation()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setOrientation(I)V

    return-void
.end method

.method private updateTexTransformMatrix(Ljava/lang/String;)V
    .registers 4

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->isCurrentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 213
    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    const/16 p1, 0x5a

    const/4 v0, 0x1

    if-eq p0, p1, :cond_22

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_1b

    goto :goto_22

    .line 217
    :cond_1b
    invoke-static {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 218
    invoke-static {v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 214
    :cond_22
    :goto_22
    invoke-static {v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 215
    invoke-static {v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void

    .line 221
    :cond_29
    invoke-static {v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixHorizontalMirror(Z)V

    .line 222
    invoke-static {v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterConfig;->setTransformMatrixVerticalMirror(Z)V

    return-void
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z
    .registers 21

    move/from16 v0, p9

    .line 188
    invoke-direct {p0, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->renderFrame(I)Z

    move-result v0

    .line 189
    sget-object v1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algoProcess process algo mFilterRender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " renderFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v1, :cond_40

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->initAlgo()V

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    if-eqz v2, :cond_40

    if-eqz v0, :cond_40

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p4

    move v10, p3

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v5, p4

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->transsionFilterTextureProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;IIIIZI)Z

    move-result p0

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 248
    const-string p0, "key_transsion_filter_sdk"

    return-object p0
.end method

.method public onCameraOperateAction(I)V
    .registers 3

    .line 271
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onCameraOperateAction(I)V

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_15

    const/16 v0, 0x20

    if-eq p1, v0, :cond_c

    goto :goto_17

    .line 277
    :cond_c
    iput v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraStatus:I

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->shouldExecuteAlgoProcess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    goto :goto_17

    .line 274
    :cond_15
    iput v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraStatus:I

    .line 283
    :goto_17
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->pauseToResume()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mDisableRenderFrame:Z

    return-void
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 6

    .line 49
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    .line 50
    const-string p1, "key_mirror"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 51
    const-string p1, "key_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 52
    const-string p1, "key_image_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 53
    const-string p1, "key_supernight_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 54
    const-string p1, "key_street_photo_style"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 55
    iput-object p5, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentModeName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraId:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p1, p4}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setPreviewOperator(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setCurrentModeName(Ljava/lang/String;)V

    return-void
.end method

.method public onModeUnInit()V
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    .line 66
    const-string v0, "key_mirror"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 67
    const-string v0, "key_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 68
    const-string v0, "key_image_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 69
    const-string v0, "key_supernight_filter"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 70
    const-string v0, "key_street_photo_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->unInitAlgo()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 201
    iput p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    .line 202
    sget-object p1, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "... [onOrientationChanged] mOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_27

    .line 204
    const-string v0, "key_mirror"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->updateTexTransformMatrix(Ljava/lang/String;)V

    .line 208
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->updateRenderDrawerOrientation()V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 133
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->shouldExecuteAlgoProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_94

    goto :goto_4b

    :sswitch_15
    const-string v0, "key_street_photo_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_4b

    :cond_1e
    const/4 v1, 0x4

    goto :goto_4b

    :sswitch_20
    const-string v0, "key_mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_4b

    :cond_29
    const/4 v1, 0x3

    goto :goto_4b

    :sswitch_2b
    const-string v0, "key_supernight_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_4b

    :cond_34
    const/4 v1, 0x2

    goto :goto_4b

    :sswitch_36
    const-string v0, "key_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_4b

    :cond_3f
    const/4 v1, 0x1

    goto :goto_4b

    :sswitch_41
    const-string v0, "key_image_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    packed-switch v1, :pswitch_data_aa

    return-void

    .line 152
    :pswitch_4f
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    const-string v0, "STREET_PHOTO_MAP"

    invoke-static {p2, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->postInvalidate()V

    return-void

    .line 137
    :pswitch_5e
    invoke-direct {p0, p2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->updateTexTransformMatrix(Ljava/lang/String;)V

    return-void

    .line 144
    :pswitch_62
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    const-string v0, "SUPER_NIGHT_MAP"

    invoke-static {p2, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 145
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->postInvalidate()V

    return-void

    .line 140
    :pswitch_71
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    const-string v0, "AI_CAM_MAP"

    invoke-static {p2, v0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getFilterIdForAlgo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setFilterId(I)V

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->postInvalidate()V

    return-void

    .line 148
    :pswitch_80
    iget-object p1, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    iget-object v0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mCurrentCameraId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterMap/FilterValueMap;->getImageStyleId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setImageStyleId(I)V

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->postInvalidate()V

    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        -0x27d92013 -> :sswitch_41
        0x8991158 -> :sswitch_36
        0x1241769a -> :sswitch_2b
        0x148db19f -> :sswitch_20
        0x21dd0908 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_80
        :pswitch_71
        :pswitch_62
        :pswitch_5e
        :pswitch_4f
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->shouldExecuteAlgoProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->initFilterValue()V

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 1

    return-void
.end method

.method public onSurfaceDestoryed()V
    .registers 1

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->unInitAlgo()V

    return-void
.end method

.method public postInvalidate()V
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    invoke-virtual {p0}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->postInvalidate()V

    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .registers 2

    .line 173
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->setParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilterAlgorithm;->mFilterRender:Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;

    if-eqz p0, :cond_7

    .line 167
    invoke-virtual {p0, p1}, Lcom/transsion/camera/base_business/transsionfilter_sdk/TranssionFilteRender;->setRecordCallback(Lcom/transsion/camera/app/common/mode/IRecordCallback;)V

    :cond_7
    return-void
.end method
