.class public Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;
.super Lcom/transsion/camera/ui/setting/asd/AsdUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsCelebritySceneSupport:Z

.field private mIsDocumentGuideSupport:Z

.field private mIsFlareCaptureGuideSupport:Z

.field private mIsMagicSkyGuideSupport:Z

.field private mIsPmasterGuideSupport:Z

.field private mIsSuperNightGuideSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsdUIWithGuide"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;-><init>(Landroid/content/res/Resources;)V

    .line 61
    sget v0, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    .line 62
    sget v0, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method

.method private isNeedBlueSkyGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 3

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 98
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v0
.end method

.method private isNeedCelebritySceneFoodGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 6

    .line 135
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 138
    :cond_6
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 139
    const-string p0, "0"

    .line 140
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "key_twinkle_guild_celebrity_food_max"

    invoke-virtual {v0, v3, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 141
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guideCelebritySceneFoodCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3f

    const/4 p1, 0x3

    if-ge p0, p1, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    return v1
.end method

.method private isNeedCelebritySceneSunsetGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 6

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 150
    :cond_6
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 151
    const-string p0, "0"

    .line 152
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "key_twinkle_guild_celebrity_sunset_max"

    invoke-virtual {v0, v3, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 153
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guideCelebritySceneSunsetCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_40

    const/4 p1, 0x3

    if-ge p0, p1, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    return v1
.end method

.method private isNeedDocumentGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 5

    .line 113
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsDocumentGuideSupport:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 116
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getVersion()I

    move-result p0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p0, v1, :cond_18

    .line 117
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p0

    const/16 p1, 0x1f

    if-ne p0, p1, :cond_17

    return v2

    :cond_17
    return v0

    .line 119
    :cond_18
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method private isNeedFlareGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 6

    .line 124
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 125
    const-string v1, "0"

    .line 126
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "key_twinkle_flare_capture_guide_max"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    sget-object v1, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guideFlareCaptureCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_3d

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p1

    const/16 v1, 0x33

    if-ne p1, v1, :cond_52

    :cond_3d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "key_flare_capture"

    .line 130
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    const/4 p0, 0x3

    if-ge v0, p0, :cond_52

    const/4 p0, 0x1

    return p0

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedNightGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 4

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 90
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getAlgorithmResult()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_17

    .line 91
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p0

    const/16 p1, 0xe

    if-ne p0, p1, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    return v1
.end method

.method private isNeedPortraitGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 5

    .line 102
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsPmasterGuideSupport:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 105
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getVersion()I

    move-result p0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p0, v1, :cond_16

    .line 106
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getHumanResult()I

    move-result p0

    if-lez p0, :cond_15

    return v2

    :cond_15
    return v0

    .line 108
    :cond_16
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result p0

    if-ne p0, v2, :cond_1d

    return v2

    :cond_1d
    return v0
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperNightGuideSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMagicSkyGuideSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPmasterGuideSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsPmasterGuideSupport:Z

    .line 70
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDocumentGuideSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsDocumentGuideSupport:Z

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsFlareCaptureGuideSupport:Z

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsCelebritySceneSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isGuideUISupport()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsPmasterGuideSupport:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsDocumentGuideSupport:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsFlareCaptureGuideSupport:Z

    if-nez v0, :cond_1b

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method protected isNeedGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedFlareGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedNightGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 79
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedBlueSkyGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedPortraitGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedDocumentGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedCelebritySceneFoodGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedCelebritySceneSunsetGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateGuideUIState(Lcom/transsion/camera/feature/setting/asd/AsdResult;)V
    .registers 11

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_20c

    .line 173
    :cond_a
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateGuideUIState], algorithmResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getAlgorithmResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", effectResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getEffectResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", humanResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdResult;->getHumanResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isGuideUISupport()Z

    move-result v1

    if-eqz v1, :cond_20c

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateGuideUIState], mIsSuperNightGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsMagicSkyGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsPmasterGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsPmasterGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsDocumentGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsDocumentGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsFlareCaptureGuideSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsFlareCaptureGuideSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsCelebritySceneSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " \n mBackCameraModeNames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    .line 182
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n mFrontCameraModeNames:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    .line 183
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsMagicSkyGuideSupport:Z

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsSuperNightGuideSupport:Z

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsPmasterGuideSupport:Z

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsDocumentGuideSupport:Z

    iget-boolean v7, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsFlareCaptureGuideSupport:Z

    iget-boolean v8, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mIsCelebritySceneSupport:Z

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnableType(ZZZZZZ)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1fa

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    const-string v3, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    const-string v4, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v6, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    const/4 v7, 0x1

    if-eqz v0, :cond_185

    .line 194
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedFlareGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 197
    :cond_ee
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedNightGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_107

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 201
    :cond_107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20c

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 205
    :cond_11a
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedPortraitGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    .line 206
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 209
    :cond_133
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedDocumentGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mBackCameraModeNames:[Ljava/lang/String;

    .line 210
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 213
    :cond_14c
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedBlueSkyGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 216
    :cond_15f
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedCelebritySceneFoodGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v0, "val_celebrity_scene_food"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 219
    :cond_172
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedCelebritySceneSunsetGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result p1

    if-eqz p1, :cond_20c

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v0, "val_celebrity_scene_sunset"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 224
    :cond_185
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedFlareGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 227
    :cond_196
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedNightGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1af

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 231
    :cond_1af
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20c

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 235
    :cond_1c2
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedPortraitGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result v0

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    .line 236
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 239
    :cond_1db
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->isNeedDocumentGuideUI(Lcom/transsion/camera/feature/setting/asd/AsdResult;)Z

    move-result p1

    if-eqz p1, :cond_1f4

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUIWithGuide;->mFrontCameraModeNames:[Ljava/lang/String;

    .line 240
    invoke-static {p1, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f4

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleGuideMode(Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 244
    :cond_1f4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    return-void

    .line 248
    :cond_1fa
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_207

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    .line 251
    :cond_207
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->resetTwinkleGuide()V

    :cond_20c
    :goto_20c
    return-void
.end method
