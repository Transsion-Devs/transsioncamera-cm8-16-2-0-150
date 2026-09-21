.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final CLOSE_INTERVAL_TIME:I = 0x1f4

.field private static final NIGHT_HAWK_OPEN_VALUE:I = 0x1

.field private static final SETTING_KEY:Ljava/lang/String; = "key_night_hawk"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDHdrAndRawSuperNightBothSupport:Z

.field private mFlagTime:J

.field private mIgnoreFrame:I

.field private mIsModeFeatureSupport:Z

.field private mIsSettingSupport:Z

.field private mIsVideoType:Z

.field private mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsModeFeatureSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmParameterConfigure(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSettingSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misSettingSupport(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NightHawk"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/feature/setting/nighthawk/NightHawk-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    .line 443
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private is360VideoHDROn(Ljava/lang/String;)Z
    .registers 7

    .line 181
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    .line 182
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_29

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    move p1, v0

    goto :goto_2a

    :cond_29
    :goto_29
    move p1, v1

    .line 183
    :goto_2a
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    move v2, v0

    goto :goto_4a

    :cond_49
    :goto_49
    move v2, v1

    .line 184
    :goto_4a
    const-string v3, "key_360_video_hdr"

    const-string v4, "on"

    if-eqz p1, :cond_64

    .line 185
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportBack360hdr:Z

    if-eqz p1, :cond_63

    .line 186
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    return v1

    :cond_63
    return v0

    :cond_64
    if-eqz v2, :cond_79

    .line 188
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportFront360hdr:Z

    if-eqz p1, :cond_79

    .line 189
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    return v1

    :cond_79
    return v0
.end method

.method private isAntiVideoOn(Ljava/lang/String;)Z
    .registers 3

    .line 274
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 277
    :cond_a
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isComVideoHdrOn(Ljava/lang/String;)Z
    .registers 3

    .line 265
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 268
    :cond_a
    const-string p1, "key_com_video_hdr"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "off"

    .line 270
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v0
.end method

.method private isSettingSupport()Z
    .registers 6

    .line 150
    const-string v0, "key_anti_video"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "ai"

    if-eqz v1, :cond_1a

    .line 151
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    :cond_1a
    const-string v0, "super"

    .line 152
    const-string v1, "key_super_anti_video"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 153
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 154
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "8_60"

    .line 155
    const-string v1, "key_video_quality"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "8"

    .line 156
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "11"

    .line 157
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "6_60"

    .line 158
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    const-string v0, "key_video_enhance_yuv"

    .line 159
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 160
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoHdrOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isTranssionFilterOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 162
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFilterOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 163
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 164
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFrameOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 165
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoMakeUpOff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 166
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoPreIspOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 167
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoAsdOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 168
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoPortraitOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 169
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoSpotOn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_cc

    const/4 p0, 0x1

    return p0

    :cond_cc
    const/4 p0, 0x0

    return p0
.end method

.method private isSuperAntiVideoOn(Ljava/lang/String;)Z
    .registers 3

    .line 318
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 321
    :cond_a
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isTranssionFilterOn(Ljava/lang/String;)Z
    .registers 3

    .line 196
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 200
    :cond_a
    const-string p1, "key_transsion_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 203
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "default"

    .line 204
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private isVideoAsdOn(Ljava/lang/String;)Z
    .registers 3

    .line 253
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 256
    :cond_a
    const-string p1, "key_video_asd"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    .line 258
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isVideoEffectOn(Ljava/lang/String;)Z
    .registers 3

    .line 220
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 224
    :cond_a
    const-string p1, "key_video_effect"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 227
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "effect_default"

    .line 228
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private isVideoFilterOn(Ljava/lang/String;)Z
    .registers 3

    .line 208
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 212
    :cond_a
    const-string p1, "key_video_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 215
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "filter_default"

    .line 216
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private isVideoFrameOn(Ljava/lang/String;)Z
    .registers 3

    .line 232
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 236
    :cond_a
    const-string p1, "key_video_frame"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "off"

    .line 239
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "frame_default"

    .line 240
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method private isVideoHdrOn(Ljava/lang/String;)Z
    .registers 3

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mDHdrAndRawSuperNightBothSupport:Z

    if-eqz v0, :cond_9

    .line 175
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isComVideoHdrOn(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 177
    :cond_9
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->is360VideoHDROn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVideoMakeUpOff(Ljava/lang/String;)Z
    .registers 3

    .line 244
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 247
    :cond_a
    const-string p1, "key_video_makeup"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    .line 249
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isVideoPortraitOn(Ljava/lang/String;)Z
    .registers 3

    .line 285
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 288
    :cond_a
    const-string p1, "key_video_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isVideoPreIspOn(Ljava/lang/String;)Z
    .registers 3

    .line 307
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 310
    :cond_a
    const-string p1, "key_video_preisp"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private isVideoSpotOn(Ljava/lang/String;)Z
    .registers 3

    .line 296
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 299
    :cond_a
    const-string p1, "key_video_spot"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
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

    .line 404
    const-string p0, "key_night_hawk"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-nez v0, :cond_d

    .line 410
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    .line 412
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .registers 1

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

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

    .line 399
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 431
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

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 63
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mDHdrAndRawSuperNightBothSupport:Z

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 65
    const-string p1, "key_video_quality"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
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

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isSupport()Z
    .registers 3

    .line 435
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    if-nez v1, :cond_12

    :cond_c
    if-nez v0, :cond_14

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 388
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    .line 390
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 391
    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    .line 392
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 393
    const-string p1, "key_360_video_hdr"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 394
    const-string p1, "key_video_preisp"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 395
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 143
    sget-object p1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne p2, p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-eqz p0, :cond_23

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->setIsVideoType(Z)V

    :cond_23
    return-void
.end method

.method onNighthawkChanged(I)V
    .registers 7

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_44

    .line 113
    const-string v0, "off"

    if-ne p1, v1, :cond_2a

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 115
    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    .line 117
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    return-void

    .line 119
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-lez p1, :cond_44

    .line 121
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 417
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 418
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 421
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 422
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 424
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    const-string v0, "key_transsion_filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "off"

    const/4 v3, 0x0

    if-nez v0, :cond_100

    const-string v0, "key_video_enhance_yuv"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "key_video_filter"

    .line 334
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string v0, "key_video_makeup"

    .line 335
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_100

    .line 346
    :cond_4c
    const-string v0, "key_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "key_video_portrait"

    const-string v5, "key_360_video_hdr"

    if-nez v0, :cond_a1

    const-string v0, "key_video_effect"

    .line 347
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_video_frame"

    .line 348
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_super_anti_video"

    .line 349
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 350
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_video_facebeauty"

    .line 351
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 352
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_video_spot"

    .line 353
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_video_preisp"

    .line 354
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, "key_video_asd"

    .line 355
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    goto :goto_a1

    .line 382
    :cond_9d
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 356
    :cond_a1
    :goto_a1
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b3

    .line 357
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 360
    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_f2

    .line 364
    :cond_b3
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d2

    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 365
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isTranssionFilterOn(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_114

    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 366
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFilterOn(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_114

    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    .line 367
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFrameOn(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d2

    goto :goto_114

    .line 371
    :cond_d2
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e9

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isAntiVideoOn(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_114

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSuperAntiVideoOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e9

    goto :goto_114

    .line 374
    :cond_e9
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    if-nez p1, :cond_f0

    goto :goto_114

    .line 378
    :cond_f0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 380
    :cond_f2
    :goto_f2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 336
    :cond_100
    :goto_100
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 337
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 338
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_10c
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    if-eqz p1, :cond_114

    .line 340
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    :cond_114
    :goto_114
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

.method public unInit()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_c

    .line 73
    const-string v0, "key_video_quality"

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
