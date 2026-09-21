.class public Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;
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
.field private isSupportRingScreen:Z

.field private mCurrentEnable:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mLimitBV:I

.field private mSuperNightSwitch:Z


# direct methods
.method public static synthetic $r8$lambda$naRTBDivgWU_qg6ncUDVMdvLdsA(Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HighDefinitionMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    const/16 p1, -0x14

    .line 61
    iput p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mLimitBV:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mCurrentEnable:Z

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->isSupportRingScreen:Z

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mSuperNightSwitch:Z

    return-void
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 6

    .line 67
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 68
    array-length p2, p1

    if-lez p2, :cond_3e

    .line 69
    sget-object p2, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " doOnFrameResultCallback = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    aget p1, p1, v0

    iget p2, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mLimitBV:I

    if-le p1, p2, :cond_29

    const/4 v0, 0x1

    .line 71
    :cond_29
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mCurrentEnable:Z

    if-eq p1, v0, :cond_3e

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mCurrentEnable:Z

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->queryFlashValue()Ljava/lang/String;

    move-result-object p2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->isSupportRingScreen:Z

    invoke-static {v0, p2, p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionModeRestriction;->getHighDefinitionRestriction(ZLjava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 73
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_3e
    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 84
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 222
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

    .line 227
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 200
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 p0, 0x4

    goto :goto_e

    :cond_d
    move p0, v0

    .line 203
    :goto_e
    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getFpsRange()Landroid/util/Range;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    if-eqz v1, :cond_2a

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgo()Z

    move-result p0

    if-nez p0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz p0, :cond_17

    goto :goto_1a

    :cond_17
    const/16 p0, 0x1a

    goto :goto_1c

    :cond_1a
    :goto_1a
    const/16 p0, 0x1c

    .line 158
    :goto_1c
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_2a
    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    .line 170
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    const-string p1, "key_shutter_sound_optional"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string p1, "key_super_definition"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string p1, "key_high_resolution"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string p1, "key_ai_remosaic"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string p1, "key_edit_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string p1, "key_gold_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string p1, "key_pro_watermark"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string p1, "key_fingerprint_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string p1, "key_night_3dnr"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string p1, "key_taint_detection"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string p1, "key_portraitmode_enhance"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string p1, "key_asd"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string p1, "key_hdr"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string p1, "key_touch_capture"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-string p1, "key_camera_click_zoom"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz p1, :cond_67

    .line 188
    const-string p1, "ai_raw_lite"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const-string p1, "key_super_night_light"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string p1, "key_super_night_lite"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_67
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 193
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->isSupportRingScreen:Z

    invoke-static {v1, v0, p0}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionModeRestriction;->getHighDefinitionRestriction(ZLjava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 132
    invoke-static {}, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method protected getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .registers 1

    .line 117
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->ULTRAHD:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 165
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 95
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitBV:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mLimitBV:I

    .line 98
    sget-object p2, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mLimitBV = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mLimitBV:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "high_definition_is_support_ring_screen"

    invoke-static {p1, p4, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->isSupportRingScreen:Z

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isSupportRingScreen = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->isSupportRingScreen:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_night_lite"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 210
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mSuperNightSwitch:Z

    if-nez p0, :cond_16

    const-string p0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    :cond_16
    const-string p0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0

    .line 212
    :cond_22
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportHighDefinition()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "key_super_night_lite_switch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 107
    const-string/jumbo p1, "value_super_night_lite_switch_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mSuperNightSwitch:Z

    return-void

    :cond_18
    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mSuperNightSwitch:Z

    :cond_1b
    return-void
.end method

.method public onSettingReady()V
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_c
    return-void
.end method

.method public pause()V
    .registers 3

    .line 143
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_c

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_c
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/highdefinition/HighDefinitionMode;->mCurrentEnable:Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method
