.class public Lcom/transsion/camera/athena/AnalyticsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/analytics/AbstractAnalytics;


# static fields
.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ATHENA_AGE_TID:I = 0xa64669

.field private static final ATHENA_AR2_CAPTURE_TID:J = 0x195e85a815L

.field private static final ATHENA_AR2_DOWNLOAD_TID:J = 0x195e85a817L

.field private static final ATHENA_AR2_RECORDER_TID:J = 0x195e85a816L

.field private static final ATHENA_AR3X_CAPTURE_TID:J = 0x195e85a81cL

.field private static final ATHENA_AR3X_VIDEO_TID:J = 0x195e85a81dL

.field private static final ATHENA_BEAUTY_TID:I = 0xa6466d

.field private static final ATHENA_CAMERA_LAUNCH_TID:J = 0x195e85a81fL

.field private static final ATHENA_CAMERA_TID:I = 0xa6466e

.field private static final ATHENA_CAPTURE_TID:J = 0x195e85a811L

.field private static final ATHENA_DUAL_VIDEO_TID:J = 0x195e85a81eL

.field private static final ATHENA_EVENT_CLICK:J = 0x195e85a80eL

.field private static final ATHENA_EVENT_DURATION:J = 0x195e85a80fL

.field private static final ATHENA_EVENT_FUN_DOWNLOAD:J = 0x195e85a814L

.field private static final ATHENA_EVENT_FUN_RECORD:J = 0x195e85a813L

.field private static final ATHENA_FILTER_SUPERNIGHT_TID:J = 0x195e85a81aL

.field private static final ATHENA_FILTER_TID:I = 0xa6466c

.field private static final ATHENA_MORE_MODE_TID:J = 0x195e85a820L

.field private static final ATHENA_MOVIE_TID:J = 0x195e85a81bL

.field private static final ATHENA_PORTRAITS_ARCH_TID:J = 0x195e85a825L

.field private static final ATHENA_SEX_TID:I = 0xa6466a

.field private static final ATHENA_THERMAL_WARNING_TID:J = 0x195e85a818L

.field private static final ATHENA_TID_CAM_EXCEPTION:J = 0x195e94ea43L

.field private static final ATHENA_TID_ENTER_DV:J = 0x195e85a827L

.field private static final ATHENA_TID_ENTER_GOPRO:J = 0x195e85a828L

.field private static final ATHENA_VERSION_ID:I = 0x2

.field private static final ATHENA_VIDEO_TID:J = 0x195e85a812L

.field private static final CAMERA_LAUNCH_TIME:Ljava/lang/String; = "camera_launch_time"

.field private static final CAMERA_TIME:Ljava/lang/String; = "camera_time"

.field private static final CAPTURE:Ljava/lang/String; = "capture"

.field private static final DUAL_VIDEO:Ljava/lang/String; = "dual_video"

.field private static final EVENT_AR2_CAPTURE:Ljava/lang/String; = "ar2_capture"

.field private static final EVENT_AR2_DOWNLOAD:Ljava/lang/String; = "ar2_download"

.field private static final EVENT_AR2_RECORDER:Ljava/lang/String; = "ar2_recorder"

.field private static final EVENT_AR3X_CAPTURE:Ljava/lang/String; = "ar3x_capture"

.field private static final EVENT_AR3X_RECORDER:Ljava/lang/String; = "ar3x_recorder"

.field private static final EVENT_CAM_EXCEPTION:Ljava/lang/String; = "cam_exception"

.field private static final EVENT_DV_MODE_ENTER:Ljava/lang/String; = "dv_mode_enter"

.field private static final EVENT_FUN_DOWNLOAD:Ljava/lang/String; = "fun_download"

.field private static final EVENT_FUN_RECORD:Ljava/lang/String; = "fun_record"

.field private static final EVENT_GOPRO_MODE_ENTER:Ljava/lang/String; = "gopro_mode_enter"

.field private static final EVENT_MORE_MODE:Ljava/lang/String; = "more_mode"

.field private static final EVENT_MOVIE:Ljava/lang/String; = "movie"

.field private static final EVENT_PORTRAIT_ARCH:Ljava/lang/String; = "serialization_feature"

.field private static final EVENT_THERMAL_WARING:Ljava/lang/String; = "thermal_warning"

.field private static final FACEBEAUTY_TIME:Ljava/lang/String; = "facebeauty_time"

.field private static final FILTER_SUPERTIME_TIME:Ljava/lang/String; = "filter_supernight_time"

.field private static final FILTER_TIME:Ljava/lang/String; = "filter_time"

.field private static final KEY_CLICK:Ljava/lang/String; = "click"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_TEMP_AP:Ljava/lang/String; = "key_temp_ap"

.field private static final KEY_TEMP_BA:Ljava/lang/String; = "key_temp_ba"

.field private static final KEY_TEMP_CPU:Ljava/lang/String; = "key_temp_cpu"

.field private static final KEY_TEMP_MDAP:Ljava/lang/String; = "key_temp_mdap"

.field private static final KEY_TEMP_PMIC:Ljava/lang/String; = "key_temp_pmic"

.field private static final KEY_TEMP_WIFI:Ljava/lang/String; = "key_temp_wifi"

.field private static final SEX:Ljava/lang/String; = "sex"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AthenaAnalytics"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTemperature(I)I
    .registers 5

    const/4 p0, 0x0

    .line 198
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    const-string v1, "cache"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->getEventStatic(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string p1, "thermal"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x64
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p1

    goto :goto_2e

    :cond_2d
    return p0

    .line 207
    :goto_2e
    sget-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTemperature] error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 23

    move-object/from16 v1, p1

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-lt v3, v4, :cond_b

    const-string v3, "ro.tr_thub.core.feature.support"

    goto :goto_d

    :cond_b
    const-string v3, "ro.thub.core.support"

    .line 100
    :goto_d
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "[logEvent] "

    if-nez v3, :cond_37

    .line 101
    sget-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " thub core is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_37
    sget-object v3, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "ar3x_capture"

    const-string/jumbo v5, "video"

    const-string v6, "movie"

    const-string v7, "click"

    const-string v8, "filter_supernight_time"

    const-string v9, "sex"

    const-string v10, "age"

    const-string v11, "ar2_capture"

    const-string v12, "camera_launch_time"

    const-string v13, "ar3x_recorder"

    const-string v15, "filter_time"

    const-string v14, "ar2_recorder"

    move/from16 v16, v3

    const-string v3, "gopro_mode_enter"

    const-string v0, "cam_exception"

    const-string v2, "duration"

    move-object/from16 v17, v2

    const-string v2, "dual_video"

    move-object/from16 v18, v2

    const/16 v19, -0x1

    sparse-switch v16, :sswitch_data_348

    :goto_7e
    move-object/from16 v2, v18

    goto/16 :goto_1c2

    :sswitch_82
    const-string v2, "facebeauty_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    goto :goto_7e

    :cond_8b
    const/16 v1, 0x19

    goto/16 :goto_171

    :sswitch_8f
    const-string v2, "camera_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    goto :goto_7e

    :cond_98
    const/16 v1, 0x18

    goto/16 :goto_171

    :sswitch_9c
    const-string v2, "fun_download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto :goto_7e

    :cond_a5
    const/16 v1, 0x17

    goto/16 :goto_171

    :sswitch_a9
    const-string v2, "more_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    goto :goto_7e

    :cond_b2
    const/16 v1, 0x16

    goto/16 :goto_171

    :sswitch_b6
    const-string v2, "dv_mode_enter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    goto :goto_7e

    :cond_bf
    const/16 v1, 0x15

    goto/16 :goto_171

    :sswitch_c3
    const-string v2, "serialization_feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    goto :goto_7e

    :cond_cc
    const/16 v1, 0x14

    goto/16 :goto_171

    :sswitch_d0
    const-string v2, "thermal_warning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    goto :goto_7e

    :cond_d9
    const/16 v1, 0x13

    goto/16 :goto_171

    :sswitch_dd
    const-string v2, "ar2_download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    goto :goto_7e

    :cond_e6
    const/16 v1, 0x12

    goto/16 :goto_171

    :sswitch_ea
    const-string v2, "fun_record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    goto :goto_7e

    :cond_f3
    const/16 v1, 0x11

    goto/16 :goto_171

    :sswitch_f7
    const-string v2, "capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    goto/16 :goto_7e

    :cond_101
    const/16 v1, 0x10

    goto/16 :goto_171

    :sswitch_105
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    goto/16 :goto_7e

    :cond_10d
    const/16 v1, 0xf

    goto/16 :goto_171

    :sswitch_111
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    goto/16 :goto_7e

    :cond_119
    const/16 v1, 0xe

    goto :goto_171

    :sswitch_11c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    goto/16 :goto_7e

    :cond_124
    const/16 v1, 0xd

    goto :goto_171

    :sswitch_127
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    goto/16 :goto_7e

    :cond_12f
    const/16 v1, 0xc

    goto :goto_171

    :sswitch_132
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    goto/16 :goto_7e

    :cond_13a
    const/16 v1, 0xb

    goto :goto_171

    :sswitch_13d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    goto/16 :goto_7e

    :cond_145
    const/16 v1, 0xa

    goto :goto_171

    :sswitch_148
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    goto/16 :goto_7e

    :cond_150
    const/16 v1, 0x9

    goto :goto_171

    :sswitch_153
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15b

    goto/16 :goto_7e

    :cond_15b
    const/16 v1, 0x8

    goto :goto_171

    :sswitch_15e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_166

    goto/16 :goto_7e

    :cond_166
    const/4 v1, 0x7

    goto :goto_171

    :sswitch_168
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_170

    goto/16 :goto_7e

    :cond_170
    const/4 v1, 0x6

    :goto_171
    move/from16 v19, v1

    goto/16 :goto_7e

    :sswitch_175
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17d

    goto/16 :goto_7e

    :cond_17d
    move-object/from16 v2, v18

    const/16 v19, 0x5

    goto :goto_1c2

    :sswitch_182
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18a

    goto/16 :goto_7e

    :cond_18a
    move-object/from16 v2, v18

    const/16 v19, 0x4

    goto :goto_1c2

    :sswitch_18f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_197

    goto/16 :goto_7e

    :cond_197
    move-object/from16 v2, v18

    const/16 v19, 0x3

    goto :goto_1c2

    :sswitch_19c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a4

    goto/16 :goto_7e

    :cond_1a4
    move-object/from16 v2, v18

    const/16 v19, 0x2

    goto :goto_1c2

    :sswitch_1a9
    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, v18

    if-nez v1, :cond_1b4

    goto :goto_1c2

    :cond_1b4
    const/16 v19, 0x1

    goto :goto_1c2

    :sswitch_1b7
    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c0

    goto :goto_1c2

    :cond_1c0
    const/16 v19, 0x0

    :goto_1c2
    packed-switch v19, :pswitch_data_3b2

    return-void

    :pswitch_1c6
    const v0, 0xa6466d

    .line 125
    const-string v1, "facebeauty_time"

    move-object/from16 v2, p2

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_1d2
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const v0, 0xa6466e

    .line 122
    const-string v1, "camera_time"

    invoke-static {v0, v1, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_1de
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a814L

    .line 137
    const-string v4, "fun_download"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_1ec
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a820L

    .line 176
    const-string v4, "more_mode"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_1fa
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a827L

    .line 182
    const-string v4, "dv_mode_enter"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_208
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a825L

    .line 179
    const-string v4, "serialization_feature"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_216
    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 149
    const-string v0, "key_temp_cpu"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct {v1, v4}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v0, "key_temp_pmic"

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v0, "key_temp_ba"

    invoke-direct {v1, v3}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v0, "key_temp_wifi"

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v0, "key_temp_ap"

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v0, "key_temp_mdap"

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-wide v0, 0x195e85a818L

    .line 155
    const-string v3, "thermal_warning"

    const/4 v5, 0x2

    invoke-static {v0, v1, v3, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_262
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a817L

    .line 146
    const-string v3, "ar2_download"

    invoke-static {v0, v1, v3, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_270
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a813L

    .line 134
    const-string v3, "fun_record"

    invoke-static {v0, v1, v3, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_27e
    move-object/from16 v2, p2

    const-wide v0, 0x195e85a811L

    .line 113
    const-string v3, "capture"

    const/4 v4, 0x3

    invoke-static {v0, v1, v3, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_28c
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a81cL

    .line 164
    invoke-static {v0, v1, v4, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_298
    move-object/from16 v2, p2

    const/4 v4, 0x3

    const-wide v0, 0x195e85a812L

    .line 119
    invoke-static {v0, v1, v5, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2a4
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a81bL

    .line 158
    invoke-static {v0, v1, v6, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2b0
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a80eL

    .line 128
    invoke-static {v0, v1, v7, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2bc
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a81aL

    .line 161
    invoke-static {v0, v1, v8, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2c8
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const v0, 0xa6466a

    .line 107
    invoke-static {v0, v9, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2d2
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const v0, 0xa64669

    .line 110
    invoke-static {v0, v10, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2dc
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a815L

    .line 140
    invoke-static {v0, v1, v11, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2e8
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a81fL

    .line 170
    invoke-static {v0, v1, v12, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2f4
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a81dL

    .line 167
    invoke-static {v0, v1, v13, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_300
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const v0, 0xa6466c

    .line 116
    invoke-static {v0, v15, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_30a
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a816L

    .line 143
    invoke-static {v0, v1, v14, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_316
    move-object/from16 v2, p2

    const/4 v5, 0x2

    const-wide v0, 0x195e85a828L

    .line 185
    invoke-static {v0, v1, v3, v5, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_322
    move-object/from16 v2, p2

    const-wide v3, 0x195e94ea43L

    const/4 v1, 0x3

    .line 188
    invoke-static {v3, v4, v0, v1, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_32e
    move-object/from16 v2, p2

    const/4 v1, 0x3

    const-wide v3, 0x195e85a80fL

    move-object/from16 v0, v17

    .line 131
    invoke-static {v3, v4, v0, v1, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :pswitch_33c
    move-object/from16 v0, p2

    const/4 v5, 0x2

    const-wide v3, 0x195e85a81eL

    .line 173
    invoke-static {v3, v4, v2, v5, v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :sswitch_data_348
    .sparse-switch
        -0x79c99d08 -> :sswitch_1b7
        -0x76bbb26c -> :sswitch_1a9
        -0x7413ec21 -> :sswitch_19c
        -0x424ae70a -> :sswitch_18f
        -0x3bbecae4 -> :sswitch_182
        -0x350b54cc -> :sswitch_175
        -0x318067b9 -> :sswitch_168
        -0x2aed2e41 -> :sswitch_15e
        -0x29c6c8d8 -> :sswitch_153
        0x178ff -> :sswitch_148
        0x1bc66 -> :sswitch_13d
        0x273988 -> :sswitch_132
        0x5a5c588 -> :sswitch_127
        0x6343f30 -> :sswitch_11c
        0x6b0147b -> :sswitch_111
        0x105c429d -> :sswitch_105
        0x20efc746 -> :sswitch_f7
        0x25017f11 -> :sswitch_ea
        0x48ff54e6 -> :sswitch_dd
        0x51fb66f4 -> :sswitch_d0
        0x5b401da7 -> :sswitch_c3
        0x5f8ab709 -> :sswitch_b6
        0x6c13844d -> :sswitch_a9
        0x6f5c2b48 -> :sswitch_9c
        0x7abc77a7 -> :sswitch_8f
        0x7cd36633 -> :sswitch_82
    .end sparse-switch

    :pswitch_data_3b2
    .packed-switch 0x0
        :pswitch_33c
        :pswitch_32e
        :pswitch_322
        :pswitch_316
        :pswitch_30a
        :pswitch_300
        :pswitch_2f4
        :pswitch_2e8
        :pswitch_2dc
        :pswitch_2d2
        :pswitch_2c8
        :pswitch_2bc
        :pswitch_2b0
        :pswitch_2a4
        :pswitch_298
        :pswitch_28c
        :pswitch_27e
        :pswitch_270
        :pswitch_262
        :pswitch_216
        :pswitch_208
        :pswitch_1fa
        :pswitch_1ec
        :pswitch_1de
        :pswitch_1d2
        :pswitch_1c6
    .end packed-switch
.end method

.method public testCrash()V
    .registers 1

    return-void
.end method
