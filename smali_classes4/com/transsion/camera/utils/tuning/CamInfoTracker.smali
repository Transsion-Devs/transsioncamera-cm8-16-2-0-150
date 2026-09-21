.class public Lcom/transsion/camera/utils/tuning/CamInfoTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;


# static fields
.field public static final FILE_NAME_STYLE_TITLES:[Ljava/lang/String;

.field public static final FILE_NAME_STYLE_VALUES:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentFileNameStyle:Ljava/lang/String;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentZoom:I

.field private mFaceBeautyOpen:Z

.field private mFilterList:Ljava/util/Map;

.field private mFilterName:Ljava/lang/String;

.field private mMakeUpOpen:Z

.field private mModeList:Ljava/util/Map;

.field private mPortraitOpen:Z

.field private mSlimBodyOpen:Z

.field private mVideoFilterName:Ljava/lang/String;

.field private mVideoFilterNameAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamInfoTracker"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    const-string v0, "Simple"

    const-string v1, "Full"

    const-string v2, "Normal"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_TITLES:[Ljava/lang/String;

    .line 19
    const-string v0, "SIMPLE"

    const-string v1, "FULL"

    const-string v2, "NORMAL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initSettingOpen()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFaceBeautyOpen:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mSlimBodyOpen:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mPortraitOpen:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mMakeUpOpen:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mVideoFilterNameAvailable:Z

    return-void
.end method

.method private isFullTitleSuffix()Z
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    const-string v0, "FULL"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isSimpleTitleSuffix()Z
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    const-string v0, "SIMPLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public appendTitleSuffixIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isTrackerEnable()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isSimpleTitleSuffix()Z

    move-result v0

    const-string v1, "_"

    if-eqz v0, :cond_26

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentModeTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isFullTitleSuffix()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentModeTitle()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isVideoFilterNameAvailable()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentVideoFilterName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 106
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentFilterName()Ljava/lang/String;

    move-result-object v2

    .line 108
    :goto_3f
    sget-object v3, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_69

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_69
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isPortraitOpen()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_\u865b\u5316"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_80
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isSlimBodyOpen()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_\u7f8e\u4f53"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_97
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isMakeUpOpen()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_\u7f8e\u5986"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_ae
    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isFaceBeautyOpen()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_\u7f8e\u989c"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c5
    if-eqz v2, :cond_d9

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d9
    if-eqz p2, :cond_f7

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentZoom()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_f7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_1.0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_109
    return-object p1
.end method

.method public getCurrentFileNameStyleTitle()Ljava/lang/String;
    .registers 2

    .line 251
    sget-object v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_VALUES:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->getCurrentFileNameStyleValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_11

    .line 254
    sget-object v0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_TITLES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 256
    :cond_11
    const-string p0, "Normal"

    return-object p0
.end method

.method public getCurrentFileNameStyleValue()Ljava/lang/String;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentFilterName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterList:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentModeTitle()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mModeList:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentVideoFilterName()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterList:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mVideoFilterName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentZoom()Ljava/lang/String;
    .registers 2

    .line 235
    iget v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentZoom:I

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentZoom:I

    rem-int/lit8 p0, p0, 0x64

    div-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d.%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 3

    .line 52
    const-string v0, "camera_save_title_suffix"

    const-string v1, "NORMAL"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    return-void
.end method

.method public initFilterInfo(Ljava/util/Map;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterList:Ljava/util/Map;

    return-void
.end method

.method public initModeInfo(Ljava/util/Map;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mModeList:Ljava/util/Map;

    return-void
.end method

.method public isFaceBeautyOpen()Z
    .registers 1

    .line 172
    iget-boolean p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFaceBeautyOpen:Z

    return p0
.end method

.method public isMakeUpOpen()Z
    .registers 1

    .line 188
    iget-boolean p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mMakeUpOpen:Z

    return p0
.end method

.method public isPortraitOpen()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mPortraitOpen:Z

    return p0
.end method

.method public isSlimBodyOpen()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mSlimBodyOpen:Z

    return p0
.end method

.method public isTrackerEnable()Z
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isSimpleTitleSuffix()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->isFullTitleSuffix()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isVideoFilterNameAvailable()Z
    .registers 1

    .line 206
    iget-boolean p0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mVideoFilterNameAvailable:Z

    return p0
.end method

.method public restoreDefault()V
    .registers 2

    .line 57
    const-string v0, "NORMAL"

    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    .line 58
    const-string p0, "camera_save_title_suffix"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentFileNameStyle(Ljava/lang/String;)V
    .registers 3

    .line 240
    const-string v0, "camera_save_title_suffix"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/tuning/TuningFeatureStateHelper;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentFileNameStyle:Ljava/lang/String;

    return-void
.end method

.method public setCurrentFilterName(Ljava/lang/String;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentModeName(Ljava/lang/String;)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFilterName:Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->initSettingOpen()V

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentModeName:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public setCurrentVideoFilterName(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mVideoFilterName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentZoom(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mCurrentZoom:I

    return-void
.end method

.method public setFaceBeautyOpen(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mFaceBeautyOpen:Z

    return-void
.end method

.method public setMakeUpOpen(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mMakeUpOpen:Z

    return-void
.end method

.method public setPortraitOpen(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mPortraitOpen:Z

    return-void
.end method

.method public setSlimBodyOpen(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mSlimBodyOpen:Z

    return-void
.end method

.method public setVideoFilterNameAvailable(Z)V
    .registers 2

    .line 203
    iput-boolean p1, p0, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->mVideoFilterNameAvailable:Z

    return-void
.end method
