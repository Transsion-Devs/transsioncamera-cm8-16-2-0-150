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

.field private mUnderwaterVideoModeSupport:Z

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

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsIsp7Type:Z

    .line 109
    new-instance v0, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/cammode/CamMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private getCurrentVideoScene()Ljava/lang/String;
    .registers 9

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    const-string v1, "on"

    if-eqz v0, :cond_1a

    const-string v0, "key_super_night_stable"

    .line 198
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 199
    const-string/jumbo p0, "val_super_night_stable"

    return-object p0

    .line 201
    :cond_1a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-eqz v0, :cond_3a

    .line 202
    const-string v0, "key_video_super_night_scene_4k"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 203
    const-string/jumbo p0, "val_video_super_night_4k"

    return-object p0

    .line 204
    :cond_2c
    const-string v0, "key_video_super_night_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 205
    const-string/jumbo p0, "val_video_super_night"

    return-object p0

    .line 209
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

    .line 210
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "key_video_enhance_yuv"

    .line 211
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_62
    const-string v0, "key_video_hdr_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    .line 212
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 213
    :cond_6c
    const-string/jumbo p0, "val_360_video_hdr"

    return-object p0

    .line 216
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "key_anti_video"

    const-string v5, "ai"

    if-nez v0, :cond_9d

    .line 217
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    .line 218
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 219
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

    .line 221
    :goto_9e
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "key_super_anti_video"

    if-nez v6, :cond_c6

    .line 222
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c6

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    .line 223
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c6

    .line 224
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c5

    goto :goto_c6

    :cond_c5
    move v2, v3

    .line 225
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

    .line 227
    :cond_d4
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 228
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableTimelapseVideoAntiOnCamMode:Z

    if-eqz v0, :cond_ea

    .line 229
    const-string/jumbo p0, "val_time_lapse_video_anti_video"

    return-object p0

    .line 232
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

    .line 233
    const-string/jumbo p0, "val_video_open_anti_with_auto_fps"

    return-object p0

    .line 235
    :cond_100
    const-string/jumbo p0, "val_anti_video"

    return-object p0

    .line 239
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

    .line 240
    const-string/jumbo p0, "val_video_close_anti_open_auto_fps"

    return-object p0

    .line 243
    :cond_124
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 244
    const-string/jumbo p0, "val_video_makeup"

    return-object p0

    .line 247
    :cond_134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 248
    const-string/jumbo p0, "val_video_filter"

    return-object p0

    .line 251
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

    .line 252
    :cond_15c
    const-string/jumbo p0, "val_super_anti_video"

    return-object p0

    .line 254
    :cond_160
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    if-eqz v0, :cond_173

    const-string/jumbo v0, "video_facebeauty_on"

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeauty:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 255
    const-string/jumbo p0, "val_video_facebeauty"

    return-object p0

    .line 258
    :cond_173
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMoonDetectResult:Ljava/lang/String;

    if-eqz v0, :cond_183

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_183

    .line 259
    const-string/jumbo p0, "val_super_moon"

    return-object p0

    .line 261
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

    .line 497
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p0

    .line 498
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

    .line 110
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

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_super_definition"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_208

    goto/16 :goto_ff

    :sswitch_2d
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_ff

    :cond_37
    const/16 v2, 0x10

    goto/16 :goto_ff

    :sswitch_3b
    const-string v0, "key_video_filter_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_ff

    :cond_45
    const/16 v2, 0xf

    goto/16 :goto_ff

    :sswitch_49
    const-string v0, "key_celebrity_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_ff

    :cond_53
    const/16 v2, 0xe

    goto/16 :goto_ff

    :sswitch_57
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_ff

    :cond_61
    const/16 v2, 0xd

    goto/16 :goto_ff

    :sswitch_65
    const-string v0, "key_moon_detection_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto/16 :goto_ff

    :cond_6f
    const/16 v2, 0xc

    goto/16 :goto_ff

    :sswitch_73
    const-string v0, "key_360_video_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto/16 :goto_ff

    :cond_7d
    const/16 v2, 0xb

    goto/16 :goto_ff

    :sswitch_81
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto/16 :goto_ff

    :cond_8b
    const/16 v2, 0xa

    goto/16 :goto_ff

    :sswitch_8f
    const-string v0, "key_video_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    goto/16 :goto_ff

    :cond_99
    const/16 v2, 0x9

    goto/16 :goto_ff

    :sswitch_9d
    const-string v0, "key_video_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto/16 :goto_ff

    :cond_a7
    const/16 v2, 0x8

    goto :goto_ff

    :sswitch_aa
    const-string v0, "key_transsion_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto :goto_ff

    :cond_b3
    const/4 v2, 0x7

    goto :goto_ff

    :sswitch_b5
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    goto :goto_ff

    :cond_be
    const/4 v2, 0x6

    goto :goto_ff

    :sswitch_c0
    const-string v0, "key_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    goto :goto_ff

    :cond_c9
    const/4 v2, 0x5

    goto :goto_ff

    :sswitch_cb
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d4

    goto :goto_ff

    :cond_d4
    const/4 v2, 0x4

    goto :goto_ff

    :sswitch_d6
    const-string v0, "key_best_moment_detect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_df

    goto :goto_ff

    :cond_df
    const/4 v2, 0x3

    goto :goto_ff

    :sswitch_e1
    const-string v0, "key_video_super_night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ea

    goto :goto_ff

    :cond_ea
    const/4 v2, 0x2

    goto :goto_ff

    :sswitch_ec
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f3

    goto :goto_ff

    :cond_f3
    const/4 v2, 0x1

    goto :goto_ff

    :sswitch_f5
    const-string v0, "key_auto_video_fps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fe

    goto :goto_ff

    :cond_fe
    const/4 v2, 0x0

    :goto_ff
    const-string/jumbo p1, "val_asd"

    const-string/jumbo v0, "val_flash_snap_lite"

    const-string v3, "off"

    const-string v4, "on"

    packed-switch v2, :pswitch_data_24e

    goto/16 :goto_1ff

    .line 138
    :pswitch_10e
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideo:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 154
    :pswitch_118
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    if-eqz p1, :cond_1ff

    .line 155
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_130

    goto :goto_131

    :cond_130
    move-object v3, v4

    .line 156
    :goto_131
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 188
    :pswitch_13b
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ff

    .line 189
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 134
    :pswitch_149
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 175
    :pswitch_153
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMoonDetectResult:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 130
    :pswitch_15d
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 142
    :pswitch_167
    const-string p1, "f0.0"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_176

    .line 143
    const-string/jumbo p1, "val_pmaster_beauty"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_176
    const-string/jumbo p1, "val_pmaster_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 161
    :pswitch_17d
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 150
    :pswitch_187
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 168
    :pswitch_191
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 127
    :pswitch_195
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 171
    :pswitch_19d
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeauty:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 179
    :pswitch_1a7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 180
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1bd

    .line 181
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_1bd
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 123
    :pswitch_1c1
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 114
    :pswitch_1cb
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ff

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    if-nez v1, :cond_1ff

    .line 115
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1f3
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ff

    .line 118
    const-string/jumbo p1, "val_super_definition"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    :cond_1ff
    :goto_1ff
    return-void

    .line 165
    :pswitch_200
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :sswitch_data_208
    .sparse-switch
        -0x7456b58b -> :sswitch_f5
        -0x711a6189 -> :sswitch_ec
        -0x6983b150 -> :sswitch_e1
        -0x4c775f79 -> :sswitch_d6
        -0x389e6ec3 -> :sswitch_cb
        -0x3657769a -> :sswitch_c0
        -0x1e1e8269 -> :sswitch_b5
        -0x1c725986 -> :sswitch_aa
        -0x1688de64 -> :sswitch_9d
        -0xb0858d3 -> :sswitch_8f
        0x2093e60 -> :sswitch_81
        0x4bd2bc0 -> :sswitch_73
        0x51fb2b5 -> :sswitch_65
        0x17b8ff3e -> :sswitch_57
        0x31b41d50 -> :sswitch_49
        0x46cdfd4e -> :sswitch_3b
        0x7ddb1282 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_200
        :pswitch_1cb
        :pswitch_1c1
        :pswitch_1a7
        :pswitch_19d
        :pswitch_195
        :pswitch_191
        :pswitch_187
        :pswitch_187
        :pswitch_17d
        :pswitch_167
        :pswitch_15d
        :pswitch_153
        :pswitch_149
        :pswitch_13b
        :pswitch_118
        :pswitch_10e
    .end packed-switch
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 5

    .line 481
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 483
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportAntiVideo:Z

    if-eqz v1, :cond_1a

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    .line 486
    :cond_1a
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAppModeId(Ljava/lang/String;)V

    .line 487
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

    .line 398
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

    .line 393
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

    .line 454
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

    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_definition"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_super_night"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_360_video_hdr"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_anti_video"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_anti_video"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_mu_monomer"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_transsion_filter"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_filter"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_makeup"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_filter_style"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_auto_video_fps"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_long_exposure_scene"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 345
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz p1, :cond_80

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_super_night_stable"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 348
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_video_facebeauty"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_moon_detection_result"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_best_moment_detect"

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 351
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

    .line 384
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isProfessionalMode()Z
    .registers 1

    .line 379
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 309
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 310
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

    .line 315
    :try_start_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    .line 317
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    .line 318
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    .line 319
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    .line 320
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    .line 321
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    .line 322
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 323
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    .line 324
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    .line 325
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    .line 326
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z

    .line 327
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mUnderwaterVideoModeSupport:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 328
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
    .registers 7

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    .line 270
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    .line 271
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    .line 272
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    .line 274
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    .line 275
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    .line 276
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 278
    array-length p2, p3

    :goto_15
    if-ge p1, p2, :cond_7f

    aget-object v0, p3, p1

    .line 279
    const-string v1, "key_video_super_night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    .line 280
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    goto :goto_7c

    .line 281
    :cond_25
    const-string v1, "key_360_video_hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 282
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    goto :goto_7c

    .line 283
    :cond_30
    const-string v1, "key_anti_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 284
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    goto :goto_7c

    .line 285
    :cond_3b
    const-string v1, "key_transsion_filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 286
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    goto :goto_7c

    .line 287
    :cond_46
    const-string v1, "key_video_makeup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 288
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    goto :goto_7c

    .line 289
    :cond_51
    const-string v1, "key_video_asd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 290
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoAsdSupport:Z

    goto :goto_7c

    .line 291
    :cond_5c
    const-string v1, "key_auto_video_fps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 292
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAutoVideoFPSSupport:Z

    goto :goto_7c

    .line 293
    :cond_67
    const-string v1, "key_long_exposure_scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 294
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    goto :goto_7c

    .line 295
    :cond_72
    const-string v1, "key_video_facebeauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 296
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFaceBeautySupport:Z

    :cond_7c
    :goto_7c
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 299
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    .line 300
    const-string p1, "key_super_anti_video"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsProfessionalMode:Z

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mUnderwaterVideoModeSupport:Z

    .line 304
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

    .line 403
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 404
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->sendSettingChangeRequest()V

    :cond_26
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 3

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 413
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

    .line 419
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

    .line 420
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    .line 421
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "key_best_moment_detect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 422
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 425
    :cond_36
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz v0, :cond_4e

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_4e
    if-eqz p2, :cond_68

    .line 430
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSuperAntiVideoSupport:Z

    if-eqz v0, :cond_68

    .line 431
    :cond_60
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_68
    if-eqz p2, :cond_7a

    .line 434
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mLongExposureSceneSupport:Z

    if-eqz v0, :cond_7a

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_long_exposure_scene"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_7a
    if-eqz p2, :cond_8e

    .line 439
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mMagicSkyModeSupport:Z

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportMagicSkyMultiFrame()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 440
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_8e
    if-eqz p2, :cond_9c

    .line 444
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mUnderwaterVideoModeSupport:Z

    if-eqz v0, :cond_9c

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 449
    :cond_9c
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_b

    .line 465
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 4

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 472
    const-string/jumbo v1, "val_def"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 473
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

    .line 474
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

    .line 356
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_super_night"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_360_video_hdr"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_mu_monomer"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_transsion_filter"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_filter"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_makeup"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_filter_style"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_auto_video_fps"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_long_exposure_scene"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 369
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    if-eqz v0, :cond_80

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_stable"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 372
    :cond_80
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_video_facebeauty"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_moon_detection_result"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_best_moment_detect"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 375
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
