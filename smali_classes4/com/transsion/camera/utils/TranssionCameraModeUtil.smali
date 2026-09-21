.class public abstract Lcom/transsion/camera/utils/TranssionCameraModeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranssionCameraModeUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/TranssionCameraModeUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static getTranssionCameraMode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 43
    sget-object v2, Lcom/transsion/camera/utils/TranssionCameraModeUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTranssionCameraMode: modeKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", appModeId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v0, :cond_20a

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1b

    sparse-switch v3, :sswitch_data_20c

    :goto_56
    move v0, v2

    goto/16 :goto_1c2

    :sswitch_59
    const-string v3, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_56

    :cond_62
    move/from16 v0, v24

    goto/16 :goto_1c2

    :sswitch_66
    const-string v3, "com.transsion.camera.feature.mode.longexposure.LongExposureModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_56

    :cond_6f
    const/16 v0, 0x1a

    goto/16 :goto_1c2

    :sswitch_73
    const-string v3, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_56

    :cond_7c
    const/16 v0, 0x19

    goto/16 :goto_1c2

    :sswitch_80
    const-string v3, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_56

    :cond_89
    const/16 v0, 0x18

    goto/16 :goto_1c2

    :sswitch_8d
    const-string v3, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_56

    :cond_96
    const/16 v0, 0x17

    goto/16 :goto_1c2

    :sswitch_9a
    const-string v3, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_56

    :cond_a3
    const/16 v0, 0x16

    goto/16 :goto_1c2

    :sswitch_a7
    const-string v3, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto :goto_56

    :cond_b0
    const/16 v0, 0x15

    goto/16 :goto_1c2

    :sswitch_b4
    const-string v3, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto :goto_56

    :cond_bd
    const/16 v0, 0x14

    goto/16 :goto_1c2

    :sswitch_c1
    const-string v3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto :goto_56

    :cond_ca
    move v0, v4

    goto/16 :goto_1c2

    :sswitch_cd
    const-string v3, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_56

    :cond_d6
    move v0, v5

    goto/16 :goto_1c2

    :sswitch_d9
    const-string v3, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto/16 :goto_56

    :cond_e3
    move v0, v6

    goto/16 :goto_1c2

    :sswitch_e6
    const-string v3, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f0

    goto/16 :goto_56

    :cond_f0
    move v0, v7

    goto/16 :goto_1c2

    :sswitch_f3
    const-string v3, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    goto/16 :goto_56

    :cond_fd
    move v0, v8

    goto/16 :goto_1c2

    :sswitch_100
    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    goto/16 :goto_56

    :cond_10a
    move v0, v9

    goto/16 :goto_1c2

    :sswitch_10d
    const-string v3, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    goto/16 :goto_56

    :cond_117
    move v0, v10

    goto/16 :goto_1c2

    :sswitch_11a
    const-string v3, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    goto/16 :goto_56

    :cond_124
    move v0, v11

    goto/16 :goto_1c2

    :sswitch_127
    const-string v3, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto/16 :goto_56

    :cond_131
    move v0, v12

    goto/16 :goto_1c2

    :sswitch_134
    const-string v3, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13e

    goto/16 :goto_56

    :cond_13e
    move v0, v13

    goto/16 :goto_1c2

    :sswitch_141
    const-string v3, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    goto/16 :goto_56

    :cond_14b
    move v0, v14

    goto/16 :goto_1c2

    :sswitch_14e
    const-string v3, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    goto/16 :goto_56

    :cond_158
    move v0, v15

    goto/16 :goto_1c2

    :sswitch_15b
    const-string v3, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_165

    goto/16 :goto_56

    :cond_165
    move/from16 v0, v16

    goto :goto_1c2

    :sswitch_168
    const-string v3, "com.transsion.camera.feature.mode.armode.ARModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_172

    goto/16 :goto_56

    :cond_172
    move/from16 v0, v17

    goto :goto_1c2

    :sswitch_175
    const-string v3, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17f

    goto/16 :goto_56

    :cond_17f
    move/from16 v0, v18

    goto :goto_1c2

    :sswitch_182
    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c

    goto/16 :goto_56

    :cond_18c
    move/from16 v0, v19

    goto :goto_1c2

    :sswitch_18f
    const-string v3, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    goto/16 :goto_56

    :cond_199
    move/from16 v0, v20

    goto :goto_1c2

    :sswitch_19c
    const-string v3, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a6

    goto/16 :goto_56

    :cond_1a6
    move/from16 v0, v21

    goto :goto_1c2

    :sswitch_1a9
    const-string v3, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b3

    goto/16 :goto_56

    :cond_1b3
    move/from16 v0, v22

    goto :goto_1c2

    :sswitch_1b6
    const-string v3, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0

    goto/16 :goto_56

    :cond_1c0
    move/from16 v0, v23

    :goto_1c2
    packed-switch v0, :pswitch_data_27e

    goto :goto_20a

    :pswitch_1c6
    return v18

    :pswitch_1c7
    const/16 v0, 0x1d

    return v0

    .line 67
    :pswitch_1ca
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_20a

    return v24

    :pswitch_1d5
    return v21

    .line 136
    :pswitch_1d6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_20a

    const/16 v0, 0x1f

    return v0

    :pswitch_1e3
    const/16 v0, 0x15

    return v0

    :pswitch_1e6
    return v4

    :pswitch_1e7
    return v7

    :pswitch_1e8
    return v14

    :pswitch_1e9
    const/16 v0, 0x1e

    return v0

    :pswitch_1ec
    const/16 v0, 0x14

    return v0

    :pswitch_1ef
    return v17

    :pswitch_1f0
    return v20

    :pswitch_1f1
    return v9

    :pswitch_1f2
    return v16

    :pswitch_1f3
    return v8

    :pswitch_1f4
    return v11

    :pswitch_1f5
    return v19

    :pswitch_1f6
    return v15

    :pswitch_1f7
    const/16 v0, 0x1c

    return v0

    :pswitch_1fa
    return v5

    :pswitch_1fb
    return v22

    .line 48
    :pswitch_1fc
    const-string v0, "val_super_definition"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_205

    return v13

    :cond_205
    return v23

    :pswitch_206
    return v24

    :pswitch_207
    return v10

    :pswitch_208
    return v12

    :pswitch_209
    return v6

    :cond_20a
    :goto_20a
    return v2

    nop

    :sswitch_data_20c
    .sparse-switch
        -0x701d403b -> :sswitch_1b6
        -0x6d784214 -> :sswitch_1a9
        -0x58e7e377 -> :sswitch_19c
        -0x46fe2a5b -> :sswitch_18f
        -0x42df7e45 -> :sswitch_182
        -0x39acae69 -> :sswitch_175
        -0x2665df54 -> :sswitch_168
        -0x233d1519 -> :sswitch_15b
        -0x19d3bf97 -> :sswitch_14e
        -0x1977f3fc -> :sswitch_141
        -0x18cc9d97 -> :sswitch_134
        -0x16aea039 -> :sswitch_127
        -0x9642627 -> :sswitch_11a
        -0x5111673 -> :sswitch_10d
        0x1d97ec5 -> :sswitch_100
        0x9017c4a -> :sswitch_f3
        0x138d6d09 -> :sswitch_e6
        0x14e65055 -> :sswitch_d9
        0x15dcf92f -> :sswitch_cd
        0x42a61261 -> :sswitch_c1
        0x4be8ef3d -> :sswitch_b4
        0x5182b369 -> :sswitch_a7
        0x60571d7d -> :sswitch_9a
        0x65fe71c9 -> :sswitch_8d
        0x66211c64 -> :sswitch_80
        0x6b8a8059 -> :sswitch_73
        0x75499ac9 -> :sswitch_66
        0x766dd0c4 -> :sswitch_59
    .end sparse-switch

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_209
        :pswitch_208
        :pswitch_207
        :pswitch_206
        :pswitch_1fc
        :pswitch_1fb
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f6
        :pswitch_1f5
        :pswitch_1f4
        :pswitch_1f3
        :pswitch_1f2
        :pswitch_1f1
        :pswitch_1f0
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e9
        :pswitch_1e8
        :pswitch_1e7
        :pswitch_1e6
        :pswitch_1e3
        :pswitch_1d6
        :pswitch_1d5
        :pswitch_1ca
        :pswitch_1ef
        :pswitch_1c7
        :pswitch_1c6
    .end packed-switch
.end method
