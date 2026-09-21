.class public Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mExifModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

.field private final mProWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$IZRfy8q59ckToA4b7ThQYstzzeA(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 133
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N32Fcpm-t_4GjTDvQm8WGxhFfkU(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 129
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ljmixbCsefkhSWAQSS18Vran4w4([Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 137
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    .line 53
    const-string p2, "key_iso"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 54
    const-string p2, "key_cam_mode"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 55
    const-string p2, "key_exposure_time"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 56
    const-string p2, "key_pro_watermark"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mProWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 57
    const-string p2, "key_gold_watermark"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 58
    const-string p2, "key_long_exposure_scene"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 59
    const-string p2, "key_long_exposure_tripod"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 60
    const-string p2, "key_long_exposure_capture_state"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 61
    const-string p2, "key_exif_mode_info"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExifModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateOriginalValue()V

    return-void
.end method

.method private varargs requestChangeSettings([Ljava/lang/String;)V
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda7;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private updateSettingValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSettingValueIfChanged(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 146
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 147
    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getOriginalSceneAttribute()Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;
    .registers 1

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateOriginalValue()V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    return-object p0
.end method

.method public updateOriginalValue()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V

    const-string v1, "key_cam_mode"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mProWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V

    const-string v1, "key_pro_watermark"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V

    const-string v1, "key_gold_watermark"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V

    const-string v1, "key_long_exposure_scene"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;)V

    const-string v1, "key_long_exposure_tripod"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSceneAttribute(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LongExposureSetting] updateOriginalValue OriginalSceneAttribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSettingForCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->picTraceMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    .line 80
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getProWaterMarkValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mProWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "continue"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 82
    const-string v1, "0"

    .line 81
    :cond_2f
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    .line 84
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getGoldWaterMarkValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 85
    const-string v2, "off"

    .line 83
    :cond_4a
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    :cond_4d
    if-eqz p5, :cond_87

    .line 88
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 89
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExifModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 90
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 91
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p5

    .line 88
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->requestChangeSettings([Ljava/lang/String;)V

    goto :goto_a6

    .line 93
    :cond_87
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 94
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mGoldWaterMarkSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p5, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p5

    .line 93
    invoke-direct {p0, p5}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->requestChangeSettings([Ljava/lang/String;)V

    .line 96
    :goto_a6
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[LongExposureSetting] updateSettingForCapture param scene: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", iso: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exposureTime\uff1a"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", captureState: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSettingForCaptureReady()V
    .registers 8

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "idle"

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getTripod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_long_exposure_tripod"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueIfChanged(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getCaptureScene()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_long_exposure_scene"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueIfChanged(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExposureTimeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCaptureStateSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 108
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 109
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->requestChangeSettings([Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LongExposureSetting] updateSettingForCaptureReady param appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Tripod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    .line 111
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getTripod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mOriginalSceneAttribute:Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getCaptureScene()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSettingForFirstCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mCamModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureSceneSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mLongExposureTripodSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p3}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->mExifModeSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingValueOnly(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LongExposureSetting] updateSettingForFirstCapture param scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", appName: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tripod: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", waterMarkInfo: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
