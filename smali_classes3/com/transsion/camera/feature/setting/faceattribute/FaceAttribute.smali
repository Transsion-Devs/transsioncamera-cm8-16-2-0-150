.class public Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_INT_VALUE:Ljava/lang/String;

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "1"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_gender_attribute_value"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mFaceAttributeSupport:Z

.field private mIsFaceAttributeStarted:Z

.field private mIsModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method public static synthetic $r8$lambda$va3q8I18VMe67mffwNjq8VA1eP8(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->lambda$new$0([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFaceAttributeStarted(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsFaceAttributeStarted:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceAttribute"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 39
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 39
    const-string v0, "0"

    goto :goto_18

    :cond_16
    const-string v0, "1"

    :goto_18
    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->DEFAULT_INT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 14

    if-eqz p1, :cond_cc

    .line 42
    array-length v0, p1

    if-lez v0, :cond_cc

    const/4 v0, 0x0

    .line 43
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    .line 46
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;->parseAttribute([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->gender()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->age()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->multiGender()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->multiSkinColor()Z

    move-result p1

    if-eqz p1, :cond_40

    :cond_3f
    move v0, v4

    .line 49
    :cond_40
    invoke-virtual {v3, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setIsMultiGenderOrMultiSkin(I)V

    goto :goto_93

    .line 52
    :cond_44
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v3

    .line 53
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v5

    .line 54
    array-length v6, p1

    move v7, v0

    :goto_52
    if-ge v7, v6, :cond_93

    aget-object v8, p1, v7

    .line 55
    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v9

    if-ne v3, v9, :cond_6b

    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v9

    if-eq v5, v9, :cond_63

    goto :goto_6b

    .line 60
    :cond_63
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setIsMultiGenderOrMultiSkin(I)V

    goto :goto_7a

    .line 56
    :cond_6b
    :goto_6b
    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v3

    .line 57
    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getSkinColor()I

    move-result v5

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setIsMultiGenderOrMultiSkin(I)V

    .line 62
    :goto_7a
    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v9

    const-string v10, "1"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v9, v11, :cond_90

    .line 64
    invoke-virtual {v8}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v10

    goto :goto_93

    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 70
    :cond_93
    :goto_93
    const-string p1, "0"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cc

    .line 71
    sget-object p1, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onGenderAttributeCallback] gender = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->onValueChanged(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGenderValue(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAgeValue(Ljava/lang/String;)V

    :cond_cc
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand,FaceAttributeCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsFaceAttributeStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsFaceAttributeStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsFaceAttributeStarted:Z

    if-eqz v0, :cond_2c

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void

    .line 199
    :cond_2c
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->clearGenderAttributeCallback()V

    .line 200
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopGenderAttributeDetection()V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 3

    .line 183
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeSupport:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    if-nez v0, :cond_9

    goto :goto_12

    .line 187
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setGenderAttributeValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_12
    :goto_12
    sget-object p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face attribute  is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 136
    const-string p0, "key_gender_attribute_value"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 131
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 86
    :try_start_1
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .registers 1

    .line 163
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 113
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 115
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 1

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 3

    .line 171
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isGenderAttributeValueSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeSupport:Z

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    const-string v0, "1"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeSupport:Z

    if-eqz v0, :cond_1e

    .line 175
    const-string v0, "2"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1e
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->DEFAULT_INT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
