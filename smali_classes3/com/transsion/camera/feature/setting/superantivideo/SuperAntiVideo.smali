.class public Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;,
        Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_super_anti_video"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TELE_CAMERA_RATE:I


# instance fields
.field private mAntiVideoRestrict4K30FPS:Z

.field private mAntiVideoSupportDolVideoHDR:Z

.field private mIsBackCameraSuperAntiVideo:Z

.field private mIsModeSupport:Z

.field private mIsOnValueChanging:Z

.field private mIsSuperAntiVideoDefaultOn:Z

.field private mIsSuperAntiVideoSupport:Z

.field private mIsTeleCamera:Z

.field private mIsValueInitiated:Z

.field private mManualValue:Ljava/lang/String;

.field private mRestoreDefault:Z

.field private mSatStreamId:Ljava/lang/String;

.field private mSlowMotionModeKey:Ljava/lang/String;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

.field private mSuperAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

.field private mSuperAntiVideoRestrictionType:I

.field private mSuperAntiVideoSupportWide:Z

.field private mSupportAiAntiVideo:Z

.field private mSupportAntiVideoQuality:[Ljava/lang/String;

.field private mSupportSuperAntiVideoQuality:[Ljava/lang/String;

.field private mSupportSuperAntiVideoV2:Z

.field private mSupportType:I

.field private mVideoModeKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ShSAYXmVskkAS0PpUNLo3rgBOBo(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7W4LVJ_mtvdaWv5Avz8Rikanc8(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .registers 3

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    .line 393
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_c
    return-void
.end method

.method public static synthetic $r8$lambda$ryOR3lbLl-iCIk_ARdhil1wXBB4(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;[Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->lambda$overrideValues$1([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperAntiVideoMonitor(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportAntiVideoQuality(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAntiVideoQuality:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperAntiVideo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x2710

    goto :goto_16

    :cond_14
    const/16 v0, 0x64

    :goto_16
    sput v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TELE_CAMERA_RATE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsModeSupport:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsTeleCamera:Z

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoSupport:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoDefaultOn:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoRestrict4K30FPS:Z

    .line 90
    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mVideoModeKey:Ljava/lang/String;

    .line 91
    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSlowMotionModeKey:Ljava/lang/String;

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsBackCameraSuperAntiVideo:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsValueInitiated:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mRestoreDefault:Z

    .line 534
    new-instance v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private addEntryList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
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

    .line 604
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 605
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private addVideoQualityRestriction(Ljava/lang/String;Lcom/transsion/camera/app/common/relation/Relation;)V
    .registers 14

    .line 269
    const-string v0, "key_video_quality"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, "on"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "ai"

    if-nez v3, :cond_1a

    .line 271
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_1a

    .line 272
    :cond_17
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    :goto_1a
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAntiVideoQuality:[Ljava/lang/String;

    .line 273
    :goto_1c
    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    const-string v6, "off"

    const/4 v7, 0x6

    const-string v8, "null"

    if-eqz v5, :cond_c0

    .line 274
    iget v5, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    const/4 v9, 0x3

    const-string v10, "6_60"

    if-ne v5, v9, :cond_66

    .line 275
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_52

    .line 279
    :cond_39
    const-string v1, "super"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 281
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_4e

    .line 282
    :cond_4c
    const-string v10, "6"

    .line 280
    :goto_4e
    invoke-virtual {p2, v0, v10, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    :goto_52
    if-eqz v3, :cond_d9

    .line 276
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    .line 277
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_66
    if-nez v5, :cond_a6

    .line 285
    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 286
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 287
    :cond_7a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 288
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_8c
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d9

    if-eqz v3, :cond_d9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    .line 291
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_a6
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d9

    if-eqz v3, :cond_d9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    .line 296
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_c0
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d9

    if-eqz v3, :cond_d9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    .line 301
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v8}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    return-void
.end method

.method private checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 164
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 165
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ai"

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result v0

    if-eqz v0, :cond_17

    return-object v1

    .line 169
    :cond_17
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p0

    if-nez p0, :cond_24

    return-object p1

    :cond_24
    return-object p2
.end method

.method private deleteEntryList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
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

    .line 610
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private isValidValue(Ljava/lang/String;)Z
    .registers 2

    .line 598
    const-string p0, "override_values_off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_on"

    .line 599
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "value_change_off"

    .line 600
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_160

    goto :goto_45

    :sswitch_f
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_45

    :cond_18
    const/4 v4, 0x4

    goto :goto_45

    :sswitch_1a
    const-string v0, "key_auto_focus_value_change_notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_45

    :cond_23
    const/4 v4, 0x3

    goto :goto_45

    :sswitch_25
    const-string v0, "key_sat_stream_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_45

    :cond_2e
    move v4, v2

    goto :goto_45

    :sswitch_30
    const-string v0, "key_on_super_anti_video_change_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_45

    :cond_39
    move v4, v1

    goto :goto_45

    :sswitch_3b
    const-string v0, "key_super_anti_video_recover_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    move v4, v3

    :goto_45
    const-string p1, "ai"

    const-string v0, "super"

    const-string v5, "on"

    packed-switch v4, :pswitch_data_176

    goto/16 :goto_159

    .line 537
    :pswitch_50
    const-string p1, "begin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 538
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mRestoreDefault:Z

    .line 539
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsBackCameraSuperAntiVideo:Z

    return-void

    .line 543
    :pswitch_5d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_159

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_159

    .line 544
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p2

    if-eqz p2, :cond_74

    goto :goto_75

    :cond_74
    move-object p1, v5

    :goto_75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 592
    :pswitch_79
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSatStreamId:Ljava/lang/String;

    return-void

    .line 589
    :pswitch_7c
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    return-void

    .line 548
    :pswitch_7f
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    const-string v4, "key_video_quality"

    if-eqz v1, :cond_a1

    iget v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    if-nez v1, :cond_a1

    .line 549
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 550
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "6_60"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto/16 :goto_159

    .line 553
    :cond_a1
    const-string v1, "null"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 554
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_c6

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 555
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p2

    if-eqz p2, :cond_c3

    move-object p2, p1

    goto :goto_c4

    :cond_c3
    move-object p2, v5

    :goto_c4
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 557
    :cond_c6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v2, :cond_d6

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsBackCameraSuperAntiVideo:Z

    if-eqz p2, :cond_d6

    .line 558
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 560
    :cond_d6
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 561
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f9

    .line 563
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p2

    if-eqz p2, :cond_f6

    move-object p2, p1

    goto :goto_f7

    :cond_f6
    move-object p2, v5

    :goto_f7
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 566
    :cond_f9
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mRestoreDefault:Z

    if-eqz p2, :cond_114

    .line 567
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAiAntiVideo:Z

    if-eqz p2, :cond_103

    move-object p2, p1

    goto :goto_104

    :cond_103
    move-object p2, v5

    :goto_104
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 568
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoSupport:Z

    if-nez p2, :cond_112

    iget p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    if-eq p2, v2, :cond_112

    .line 569
    const-string p2, "off"

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 571
    :cond_112
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mRestoreDefault:Z

    .line 573
    :cond_114
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->-$$Nest$msize(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;)I

    move-result p2

    if-nez p2, :cond_159

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    if-nez p2, :cond_159

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsValueInitiated:Z

    if-eqz p2, :cond_159

    .line 574
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_132

    .line 575
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 577
    :cond_132
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isVssOpen()Z

    move-result p2

    if-eqz p2, :cond_14c

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14c

    .line 578
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    if-eqz p2, :cond_149

    goto :goto_14a

    :cond_149
    move-object p1, v5

    .line 579
    :goto_14a
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 581
    :cond_14c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getSupport()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    :cond_159
    :goto_159
    return-void

    .line 585
    :cond_15a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->-$$Nest$maddAvoidKey(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;Ljava/lang/String;)V

    return-void

    :sswitch_data_160
    .sparse-switch
        -0x56bbd557 -> :sswitch_3b
        -0x267ab8f7 -> :sswitch_30
        0x1accdf41 -> :sswitch_25
        0x4aec19d3 -> :sswitch_1a
        0x60ee855f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_5d
        :pswitch_50
    .end packed-switch
.end method

.method private synthetic lambda$overrideValues$1([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 433
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "key_video_quality"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private storeBackCameraValue(Ljava/lang/String;)V
    .registers 3

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 308
    const-string v0, "super"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsBackCameraSuperAntiVideo:Z

    .line 310
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsBackCameraSuperAntiVideo:Z

    :cond_27
    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .registers 6

    .line 472
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 473
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeBackCameraValue(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "key_super_anti_video_manual_value"

    if-eqz p1, :cond_34

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 479
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3f
    return-void
.end method

.method private storeValueByZoomValue(Ljava/lang/String;)V
    .registers 5

    .line 485
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    if-nez v0, :cond_5

    goto :goto_5b

    .line 488
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAiAntiVideo:Z

    if-eqz v0, :cond_c

    const-string v0, "ai"

    goto :goto_e

    :cond_c
    const-string v0, "on"

    .line 489
    :goto_e
    const-string/jumbo v1, "value_zoom_normal"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "super"

    if-eqz v1, :cond_2b

    .line 490
    iget p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    if-nez p1, :cond_5b

    .line 491
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 492
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 495
    :cond_2b
    const-string/jumbo v1, "value_zoom_tele"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 496
    iget p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    if-nez p1, :cond_48

    .line 497
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 498
    const-string p1, "off"

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    :cond_48
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4e

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5b

    .line 502
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 503
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private superSupposeExistCase()Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsTeleCamera:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mVideoModeKey:Ljava/lang/String;

    .line 180
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSlowMotionModeKey:Ljava/lang/String;

    .line 181
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 182
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 183
    :cond_31
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoSupportWide:Z

    if-eqz p0, :cond_45

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public aiEisExistCase()Z
    .registers 3

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAiAntiVideo:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mVideoModeKey:Ljava/lang/String;

    .line 189
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

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

.method public getAvoidStrings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 629
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    const-string v0, "mode"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v0, "key_time_lapse"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v0, "key_anti_video"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 221
    const-string p0, "key_super_anti_video"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

    if-nez v0, :cond_d

    .line 227
    new-instance v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

    .line 230
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

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

    .line 216
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 317
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

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAntiVideoQuality:[Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoDefaultOn:Z

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoRestrict4K30FPS:Z

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    .line 117
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    .line 118
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoSupportWide:Z

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAiAntiVideo:Z

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportDolVideoHDR:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    .line 122
    iget p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_87

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_87

    .line 123
    const-string p2, "key_restore_settings_notify_ui"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_auto_focus_value_change_notify"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_anti_video_recover_default"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_on_super_anti_video_change_end"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_87
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_super_anti_video"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportSat:Z

    .line 137
    const-string v3, "0"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    if-eqz v2, :cond_35

    :cond_24
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    const-string v2, "key_camera_zoom"

    .line 138
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsTeleCamera:Z

    .line 141
    :cond_35
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->superSupposeExistCase()Z

    move-result v1

    .line 142
    const-string v2, "super"

    const/4 v3, 0x2

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_47

    .line 143
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_47
    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_5e

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "ai"

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    :cond_5e
    iget v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    if-ne v1, v3, :cond_64

    .line 149
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoSupport:Z

    .line 151
    :cond_64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7f

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 160
    :cond_7f
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_super_anti_video_manual_value"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public initializedRestrictionDone()V
    .registers 2

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsValueInitiated:Z

    return-void
.end method

.method public isDefaultSuperAntiVideoOn()Z
    .registers 1

    .line 618
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoDefaultOn:Z

    return p0
.end method

.method public isModeSupport()Z
    .registers 1

    .line 367
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsModeSupport:Z

    return p0
.end method

.method public isVssOpen()Z
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_frame"

    .line 528
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_effect"

    .line 530
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    return p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0
.end method

.method public isWideCamera()Z
    .registers 3

    .line 622
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 623
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 624
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 625
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSatStreamId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 356
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 357
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "ai"

    goto :goto_1a

    :catchall_16
    move-exception p1

    goto :goto_27

    :cond_18
    const-string v0, "on"

    .line 358
    :goto_1a
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    .line 359
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 361
    :cond_1f
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsModeSupport:Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_16

    .line 363
    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_16

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 4

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 7

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 241
    sget-object v0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAntiVideoValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->checkValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    .line 245
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeBackCameraValue(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mManualValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_super_anti_video_manual_value"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoRestriction;->getSuperAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :cond_6f
    :goto_6f
    if-eqz v0, :cond_80

    .line 253
    const-string v2, "key_video_filter"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 254
    const-string v2, "key_video_effect"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 255
    const-string v2, "key_video_frame"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 257
    :cond_80
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    if-eqz v2, :cond_8b

    if-eqz v0, :cond_8b

    .line 258
    const-string v0, "key_com_video_hdr"

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 260
    :cond_8b
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->addVideoQualityRestriction(Ljava/lang/String;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;

    if-eqz p0, :cond_9a

    .line 263
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoParameterConfigure;->sendSettingChangeRequest()V

    :cond_9a
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
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

    .line 372
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoSupport:Z

    if-nez v0, :cond_6

    goto/16 :goto_201

    .line 375
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_video_quality"

    if-nez v2, :cond_32

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 377
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_super_anti_video"

    invoke-direct {v4, v5, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "override_values_off"

    const-string v6, "null"

    .line 378
    invoke-virtual {v4, v3, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v4

    .line 377
    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 380
    :cond_32
    sget-object v2, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[overrideValues] headerKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,currentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", lastValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supportValues: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    new-instance v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V

    .line 383
    const-string v5, "key_dol_video_hdr"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "key_com_video_hdr"

    if-nez v5, :cond_77

    const-string v5, "key_360_video_hdr"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_78

    :cond_77
    move-object p1, v6

    .line 386
    :cond_78
    iput-object p1, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 387
    iput-object p2, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->currentValue:Ljava/lang/String;

    .line 388
    iput-object p3, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->supportValues:Ljava/util/List;

    .line 390
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->getAvoidStrings()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v5}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v7, v8}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 397
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a8

    const-string/jumbo v7, "value_off_front_g99"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 398
    const-string p1, "overrideValues: VALUE_OFF_FRONT_G99"

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_a8
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v5, "key_video_effect"

    .line 404
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v5, "key_video_filter"

    .line 405
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    const-string v5, "key_video_frame"

    .line 406
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    iget-object v5, v4, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;->headerKey:Ljava/lang/String;

    .line 407
    invoke-static {v2, v5}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->-$$Nest$misContainAvoidKey(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 408
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->add(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SettingValue;)V

    .line 409
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoMonitor:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$SuperAntiVideoMonitor;->print()V

    .line 412
    :cond_e0
    const-string v2, "key_video_portrait"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "key_camera_zoom"

    const-string v5, "key_video_hdr_10_plus"

    if-nez v2, :cond_14f

    const-string v2, "key_video_spot"

    .line 413
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_video_facebeauty"

    .line 414
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 415
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 416
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_transsion_filter"

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_video_enhance"

    .line 418
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_video_enhance_yuv"

    .line 419
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_video_makeup"

    .line 420
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_eye_detection"

    .line 421
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "key_video_asd"

    .line 422
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 423
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    .line 424
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    goto :goto_14f

    .line 465
    :cond_145
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isValidValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 466
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_14f
    :goto_14f
    if-eqz p2, :cond_201

    .line 425
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_201

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isValidValue(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_201

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_165

    goto/16 :goto_201

    .line 429
    :cond_165
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, "on"

    const-string v6, "ai"

    const/4 v7, 0x1

    const-string v8, "super"

    if-eqz p3, :cond_1b2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b2

    .line 430
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    if-eqz p1, :cond_184

    iget p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoRestrictionType:I

    if-nez p1, :cond_184

    .line 431
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAntiVideoQuality:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V

    .line 433
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 434
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1a7

    .line 435
    iput-boolean v7, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    .line 436
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 438
    :cond_1a7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->aiEisExistCase()Z

    move-result p1

    if-eqz p1, :cond_1ae

    move-object v2, v6

    :cond_1ae
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    return-void

    .line 443
    :cond_1b2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1bf

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1bf

    goto :goto_201

    .line 447
    :cond_1bf
    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoRestrict4K30FPS:Z

    if-eqz p3, :cond_1ee

    .line 448
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1ee

    .line 449
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1dd

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1ee

    .line 450
    :cond_1dd
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "8"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1ee

    .line 451
    iput-boolean v7, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsOnValueChanging:Z

    .line 452
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    .line 456
    :cond_1ee
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f8

    .line 457
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValueByZoomValue(Ljava/lang/String;)V

    return-void

    .line 460
    :cond_1f8
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->isValidValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_201

    .line 461
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->storeValue(Ljava/lang/String;)V

    :cond_201
    :goto_201
    return-void
.end method

.method public pause()V
    .registers 3

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportSuperAntiVideoV2:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportAiAntiVideo:Z

    if-eqz v0, :cond_17

    const-string v0, "ai"

    goto :goto_19

    :cond_17
    const-string v0, "on"

    :goto_19
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->onValueChanged(Ljava/lang/String;)V

    .line 198
    :cond_1c
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .registers 5

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsSuperAntiVideoSupport:Z

    if-nez v0, :cond_5

    goto :goto_56

    .line 326
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideoRestriction;->getSuperAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ai"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :cond_2c
    :goto_2c
    if-eqz v2, :cond_3d

    .line 330
    const-string v1, "key_video_filter"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 331
    const-string v1, "key_video_effect"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 332
    const-string v1, "key_video_frame"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 334
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->addVideoQualityRestriction(Ljava/lang/String;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 335
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mAntiVideoSupportDolVideoHDR:Z

    if-eqz v1, :cond_4f

    if-eqz v2, :cond_4f

    .line 336
    const-string v1, "key_com_video_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_4f
    if-eqz v0, :cond_56

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_56
    :goto_56
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

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 2

    .line 235
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public superAntiVideoSupportTye()I
    .registers 1

    .line 614
    iget p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 203
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 204
    iget v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSupportType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_37

    .line 205
    const-string v1, "key_restore_settings_notify_ui"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_auto_focus_value_change_notify"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video_recover_default"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_on_super_anti_video_change_end"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_37
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsValueInitiated:Z

    return-void
.end method

.method public updateEntryValueList(Z)V
    .registers 5

    .line 510
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "key_camera_zoom"

    .line 512
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->TELE_CAMERA_RATE:I

    if-ge v1, v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    .line 513
    :goto_24
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mIsTeleCamera:Z

    .line 514
    const-string v2, "super"

    if-nez p1, :cond_57

    if-eqz v1, :cond_30

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->mSuperAntiVideoSupportWide:Z

    if-eqz p1, :cond_57

    .line 515
    :cond_30
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 516
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 517
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->superSupposeExistCase()Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_57

    .line 520
    :cond_53
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->addEntryList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5a

    .line 518
    :cond_57
    :goto_57
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->deleteEntryList(Ljava/util/List;Ljava/lang/String;)V

    .line 522
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    return-void
.end method
