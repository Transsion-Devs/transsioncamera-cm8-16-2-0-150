.class public Lcom/transsion/camera/feature/setting/cammode/CamMode;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m360VideoHDRSupport:Z

.field private mAntiVideo:Ljava/lang/String;

.field private mAntiVideoSupport:Z

.field private mAutoVideoFPSSupport:Z

.field private mCurrentModeValue:Ljava/lang/String;

.field private mIsIsp7Type:Z

.field private mIsProfessionalMode:Z

.field private mIsSupperDefinitionMode:Z

.field private mLongExposureSceneSupport:Z

.field private mMagicSkyModeSupport:Z

.field private mMoonDetectResult:Ljava/lang/String;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mSuperAntiVideo:Ljava/lang/String;

.field private mSuperAntiVideoSupport:Z

.field private mVideo360HDR:Ljava/lang/String;

.field private mVideoAsdSupport:Z

.field private mVideoFaceBeauty:Ljava/lang/String;

.field private mVideoFaceBeautySupport:Z

.field private mVideoFilter:Ljava/lang/String;

.field private mVideoFilterSupport:Z

.field private mVideoMakeUp:Ljava/lang/String;

.field private mVideoMakeupSupport:Z

.field private mVideoSuperNight:Ljava/lang/String;

.field private mVideoSuperNightSupport:Z


# direct methods
.method public static synthetic $r8$lambda$VWlBV__6HvO7Mx7pXQ7SuAu9Jwk(Lcom/transsion/camera/feature/setting/cammode/CamMode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsIsp7Type:Z

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/cammode/CamMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private getCurrentVideoScene()Ljava/lang/String;
    .registers 9

    .line 194
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    const-string v1, "on"

    if-eqz v0, :cond_1a

    const-string v0, "key_super_night_stable"

    .line 195
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 196
    const-string/jumbo p0, "val_super_night_stable"

    return-object p0

    .line 198
    :cond_1a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-eqz v0, :cond_3a

    .line 199
    const-string v0, "key_video_super_night_scene_4k"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 200
    const-string/jumbo p0, "val_video_super_night_4k"

    return-object p0

    .line 201
    :cond_2c
    const-string v0, "key_video_super_night_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 202
    const-string/jumbo p0, "val_video_super_night"

    return-object p0

    .line 206
    :cond_3a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "key_video_enhance"

    .line 207
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "key_video_enhance_yuv"

    .line 208
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_62
    const-string v0, "key_video_hdr_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    .line 209
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 210
    :cond_6c
    const-string/jumbo p0, "val_360_video_hdr"

    return-object p0

    .line 213
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "key_anti_video"

    const-string v5, "ai"

    if-nez v0, :cond_9d

    .line 214
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    .line 215
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 216
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    goto :goto_9d

    :cond_9b
    move v0, v3

    goto :goto_9e

    :cond_9d
    :goto_9d
    move v0, v2

    .line 218
    :goto_9e
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "key_super_anti_video"

    if-nez v6, :cond_c6

    .line 219
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    .line 220
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c6

    .line 221
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c5

    goto :goto_c6

    :cond_c5
    move v2, v3

    .line 222
    :cond_c6
    :goto_c6
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    const-string v5, "key_auto_video_fps"

    if-eqz v3, :cond_ce

    if-nez v0, :cond_d4

    :cond_ce
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    if-eqz v0, :cond_104

    if-eqz v2, :cond_104

    .line 224
    :cond_d4
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 225
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableTimelapseVideoAntiOnCamMode:Z

    if-eqz v0, :cond_ea

    .line 226
    const-string/jumbo p0, "val_time_lapse_video_anti_video"

    return-object p0

    .line 229
    :cond_ea
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    if-eqz v0, :cond_100

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsIsp7Type:Z

    if-eqz p0, :cond_100

    .line 230
    const-string/jumbo p0, "val_video_open_anti_with_auto_fps"

    return-object p0

    .line 232
    :cond_100
    const-string/jumbo p0, "val_anti_video"

    return-object p0

    .line 236
    :cond_104
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    if-eqz v0, :cond_124

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_124

    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsIsp7Type:Z

    if-eqz v0, :cond_124

    .line 237
    const-string/jumbo p0, "val_video_close_anti_open_auto_fps"

    return-object p0

    .line 240
    :cond_124
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 241
    const-string/jumbo p0, "val_video_makeup"

    return-object p0

    .line 244
    :cond_134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 245
    const-string/jumbo p0, "val_video_filter"

    return-object p0

    .line 248
    :cond_144
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    const-string v1, "super"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 249
    :cond_15c
    const-string/jumbo p0, "val_super_anti_video"

    return-object p0

    .line 251
    :cond_160
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    if-eqz v0, :cond_173

    const-string/jumbo v0, "video_facebeauty_on"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeauty:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 252
    const-string/jumbo p0, "val_video_facebeauty"

    return-object p0

    .line 255
    :cond_173
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMoonDetectResult:Ljava/lang/String;

    if-eqz v0, :cond_183

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_183

    .line 256
    const-string/jumbo p0, "val_super_moon"

    return-object p0

    .line 258
    :cond_183
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18e

    const-string p0, ""

    return-object p0

    :cond_18e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    return-object p0
.end method

.method private isSupportAntiForDualVideo(Ljava/lang/String;)Z
    .registers 2

    .line 485
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "0"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_super_definition"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_1fa

    goto/16 :goto_f1

    :sswitch_2d
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_f1

    :cond_37
    const/16 v2, 0xf

    goto/16 :goto_f1

    :sswitch_3b
    const-string v0, "key_video_filter_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_f1

    :cond_45
    const/16 v2, 0xe

    goto/16 :goto_f1

    :sswitch_49
    const-string v0, "key_celebrity_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_f1

    :cond_53
    const/16 v2, 0xd

    goto/16 :goto_f1

    :sswitch_57
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_f1

    :cond_61
    const/16 v2, 0xc

    goto/16 :goto_f1

    :sswitch_65
    const-string v0, "key_moon_detection_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto/16 :goto_f1

    :cond_6f
    const/16 v2, 0xb

    goto/16 :goto_f1

    :sswitch_73
    const-string v0, "key_360_video_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto/16 :goto_f1

    :cond_7d
    const/16 v2, 0xa

    goto/16 :goto_f1

    :sswitch_81
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto/16 :goto_f1

    :cond_8b
    const/16 v2, 0x9

    goto/16 :goto_f1

    :sswitch_8f
    const-string v0, "key_video_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    goto/16 :goto_f1

    :cond_99
    const/16 v2, 0x8

    goto :goto_f1

    :sswitch_9c
    const-string v0, "key_transsion_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto :goto_f1

    :cond_a5
    const/4 v2, 0x7

    goto :goto_f1

    :sswitch_a7
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    goto :goto_f1

    :cond_b0
    const/4 v2, 0x6

    goto :goto_f1

    :sswitch_b2
    const-string v0, "key_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_f1

    :cond_bb
    const/4 v2, 0x5

    goto :goto_f1

    :sswitch_bd
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c6

    goto :goto_f1

    :cond_c6
    const/4 v2, 0x4

    goto :goto_f1

    :sswitch_c8
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    goto :goto_f1

    :cond_d1
    const/4 v2, 0x3

    goto :goto_f1

    :sswitch_d3
    const-string v0, "key_video_super_night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dc

    goto :goto_f1

    :cond_dc
    const/4 v2, 0x2

    goto :goto_f1

    :sswitch_de
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e5

    goto :goto_f1

    :cond_e5
    const/4 v2, 0x1

    goto :goto_f1

    :sswitch_e7
    const-string v0, "key_auto_video_fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f0

    goto :goto_f1

    :cond_f0
    const/4 v2, 0x0

    :goto_f1
    const-string/jumbo p1, "val_asd"

    const-string/jumbo v0, "val_flash_snap_lite"

    const-string v3, "off"

    const-string v4, "on"

    packed-switch v2, :pswitch_data_23c

    goto/16 :goto_1f1

    .line 136
    :pswitch_100
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 151
    :pswitch_10a
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    if-eqz p1, :cond_1f1

    .line 152
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_122

    goto :goto_123

    :cond_122
    move-object v3, v4

    .line 153
    :goto_123
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 185
    :pswitch_12d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f1

    .line 186
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 132
    :pswitch_13b
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 172
    :pswitch_145
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMoonDetectResult:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 128
    :pswitch_14f
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 140
    :pswitch_159
    const-string p1, "f0.0"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_168

    .line 141
    const-string/jumbo p1, "val_pmaster_beauty"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_168
    const-string/jumbo p1, "val_pmaster_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 158
    :pswitch_16f
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 147
    :pswitch_179
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 165
    :pswitch_183
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 125
    :pswitch_187
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 168
    :pswitch_18f
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeauty:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 176
    :pswitch_199
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 177
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1af

    .line 178
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_1af
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 121
    :pswitch_1b3
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 112
    :pswitch_1bd
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    if-nez v1, :cond_1f1

    .line 113
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_1e5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    .line 116
    const-string/jumbo p1, "val_super_definition"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    :cond_1f1
    :goto_1f1
    return-void

    .line 162
    :pswitch_1f2
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :sswitch_data_1fa
    .sparse-switch
        -0x7456b58b -> :sswitch_e7
        -0x711a6189 -> :sswitch_de
        -0x6983b150 -> :sswitch_d3
        -0x4c775f79 -> :sswitch_c8
        -0x389e6ec3 -> :sswitch_bd
        -0x3657769a -> :sswitch_b2
        -0x1e1e8269 -> :sswitch_a7
        -0x1c725986 -> :sswitch_9c
        -0xb0858d3 -> :sswitch_8f
        0x2093e60 -> :sswitch_81
        0x4bd2bc0 -> :sswitch_73
        0x51fb2b5 -> :sswitch_65
        0x17b8ff3e -> :sswitch_57
        0x31b41d50 -> :sswitch_49
        0x46cdfd4e -> :sswitch_3b
        0x7ddb1282 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_23c
    .packed-switch 0x0
        :pswitch_1f2
        :pswitch_1bd
        :pswitch_1b3
        :pswitch_199
        :pswitch_18f
        :pswitch_187
        :pswitch_183
        :pswitch_179
        :pswitch_16f
        :pswitch_159
        :pswitch_14f
        :pswitch_145
        :pswitch_13b
        :pswitch_12d
        :pswitch_10a
        :pswitch_100
    .end packed-switch
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 469
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 471
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportAntiVideo:Z

    if-eqz v1, :cond_1a

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    .line 474
    :cond_1a
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAppModeId(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->isProfessionalMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setProfessionMode(Z)V

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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 391
    const-string p0, "key_cam_mode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

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

    .line 386
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

    .line 442
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

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_definition"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_super_night"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_360_video_hdr"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_anti_video"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_anti_video"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_mu_monomer"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_transsion_filter"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_makeup"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_filter_style"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_auto_video_fps"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_long_exposure_scene"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 339
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz p1, :cond_77

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_stable"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 342
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_facebeauty"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_moon_detection_result"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_best_moment_detect"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_celebrity_scene"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
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

    .line 377
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 380
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isProfessionalMode()Z
    .registers 1

    .line 372
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 305
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 311
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    .line 313
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    .line 314
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    .line 315
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    .line 316
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    .line 317
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    .line 318
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 319
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    .line 320
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    .line 321
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    .line 322
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 323
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .registers 7

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    .line 267
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    .line 268
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    .line 269
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    .line 270
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    .line 271
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    .line 272
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 275
    array-length p2, p3

    :goto_15
    if-ge p1, p2, :cond_7f

    aget-object v0, p3, p1

    .line 276
    const-string v1, "key_video_super_night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 277
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    goto :goto_7c

    .line 278
    :cond_25
    const-string v1, "key_360_video_hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 279
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    goto :goto_7c

    .line 280
    :cond_30
    const-string v1, "key_anti_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 281
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    goto :goto_7c

    .line 282
    :cond_3b
    const-string v1, "key_transsion_filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 283
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    goto :goto_7c

    .line 284
    :cond_46
    const-string v1, "key_video_makeup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 285
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    goto :goto_7c

    .line 286
    :cond_51
    const-string v1, "key_video_asd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 287
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    goto :goto_7c

    .line 288
    :cond_5c
    const-string v1, "key_auto_video_fps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 289
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    goto :goto_7c

    .line 290
    :cond_67
    const-string v1, "key_long_exposure_scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 291
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    goto :goto_7c

    .line 292
    :cond_72
    const-string v1, "key_video_facebeauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 293
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    :cond_7c
    :goto_7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 296
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    .line 297
    const-string p1, "key_super_anti_video"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z

    .line 300
    sget-object p1, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 397
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->sendSettingChangeRequest()V

    :cond_26
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 3

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 406
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    .line 412
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "key_best_moment_detect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 415
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_36
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz v0, :cond_4e

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_4e
    if-eqz p2, :cond_68

    .line 423
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    if-eqz v0, :cond_68

    .line 424
    :cond_60
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_68
    if-eqz p2, :cond_7a

    .line 427
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    if-eqz v0, :cond_7a

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_long_exposure_scene"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_7a
    if-eqz p2, :cond_8e

    .line 432
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 433
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 437
    :cond_8e
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_b

    .line 453
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 460
    const-string/jumbo v1, "val_def"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 461
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getIspVersion()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2be

    if-ne p1, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 462
    :goto_20
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsIsp7Type:Z

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
    .registers 4

    .line 350
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_super_night"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_360_video_hdr"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_mu_monomer"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_transsion_filter"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_makeup"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_filter_style"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_auto_video_fps"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_long_exposure_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 362
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz v0, :cond_77

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_stable"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 365
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_facebeauty"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_moon_detection_result"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_best_moment_detect"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_celebrity_scene"

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
