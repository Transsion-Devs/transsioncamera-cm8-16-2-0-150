.class public Lcom/transsion/camera/utils/tuning/TuningFeatureApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/tuning/TuningFeatureApi$Holder;
    }
.end annotation


# instance fields
.field private final mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

.field private final mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

.field private final mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-direct {v0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-direct {v0}, Lcom/transsion/camera/utils/tuning/SkinHinter;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-direct {v0}, Lcom/transsion/camera/utils/tuning/ScreenShot;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/tuning/TuningFeatureApi-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;
    .registers 1

    .line 13
    sget-object v0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi$Holder;->sInstance:Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    return-object v0
.end method


# virtual methods
.method public appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFileNameStyleTitle()Ljava/lang/String;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentFileNameStyleTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFileNameStyleValue()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentFileNameStyleValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSkinTitle()Ljava/lang/String;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/SkinHinter;->getCurrentSkinTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSkinValue()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/SkinHinter;->getCurrentSkinValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenShotTitle()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->getScreenShotTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenShotValue()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->getScreenShotValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ITuningFeature;->init()V

    .line 19
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->init()V

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->init()V

    return-void
.end method

.method public initFilterInfo(Ljava/util/Map;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->initFilterInfo(Ljava/util/Map;)V

    return-void
.end method

.method public initModeInfo(Ljava/util/Map;)V
    .registers 2

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->initModeInfo(Ljava/util/Map;)V

    return-void
.end method

.method public isEnable()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->isEnable()Z

    move-result p0

    return p0
.end method

.method public isPreview()Z
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->isPreview()Z

    move-result p0

    return p0
.end method

.method public isScreen()Z
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->isScreen()Z

    move-result p0

    return p0
.end method

.method public printCurrentSkin()Ljava/lang/CharSequence;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/SkinHinter;->printCurrentSkin()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public restoreDefault()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ITuningFeature;->restoreDefault()V

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->restoreDefault()V

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/ScreenShot;->restoreDefault()V

    return-void
.end method

.method public setCurrentFileNameStyle(Ljava/lang/String;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setCurrentFileNameStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentFilterName(Ljava/lang/String;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setCurrentFilterName(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentModeName(Ljava/lang/String;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setCurrentModeName(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentSkin(Ljava/lang/String;)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mSkinHinter:Lcom/transsion/camera/utils/tuning/SkinHinter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/SkinHinter;->setCurrentSkin(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentVideoFilterName(Ljava/lang/String;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setCurrentVideoFilterName(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentZoom(I)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setCurrentZoom(I)V

    return-void
.end method

.method public setFaceBeautyOpen(Z)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setFaceBeautyOpen(Z)V

    return-void
.end method

.method public setMakeUpOpen(Z)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setMakeUpOpen(Z)V

    return-void
.end method

.method public setPortraitOpen(Z)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setPortraitOpen(Z)V

    return-void
.end method

.method public setScreenShotState(Ljava/lang/String;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mScreenShot:Lcom/transsion/camera/utils/tuning/ScreenShot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/ScreenShot;->setScreenShotState(Ljava/lang/String;)V

    return-void
.end method

.method public setSlimBodyOpen(Z)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setSlimBodyOpen(Z)V

    return-void
.end method

.method public setVideoFilterNameAvailable(Z)V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->mCamInfoTracker:Lcom/transsion/camera/utils/tuning/CamInfoTracker;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->setVideoFilterNameAvailable(Z)V

    return-void
.end method
