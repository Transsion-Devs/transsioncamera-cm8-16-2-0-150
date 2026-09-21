.class public Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLiteRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModeRelationInAI(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;
    .registers 22

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_best_moment_detect"

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "key_live_photo"

    const-string v2, "key_animal_eye_detection"

    const-string v3, "key_eye_detection"

    const-string v4, "key_human_detection"

    const-string v5, "key_setting_qrcode"

    const-string v6, "key_portraitmode_enhance"

    const-string v7, "key_hdr"

    const-string v8, "key_voice_detection"

    const-string v9, "key_gesture_detection"

    const-string v10, "key_smile_detection"

    const-string v11, "0,1"

    const-string v12, "key_image_style"

    const-string v13, "key_super_definition"

    const-string v14, "key_asd"

    const-string v15, "key_cam_mode"

    move-object/from16 v16, v1

    const-string v1, "on"

    move-object/from16 v17, v2

    const-string v2, "off,on"

    if-eqz p0, :cond_7e

    move-object/from16 v18, v3

    .line 31
    const-string/jumbo v3, "val_flash_snap_lite"

    invoke-virtual {v0, v15, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 32
    const-string v15, "0"

    invoke-virtual {v3, v14, v15, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 33
    const-string v14, "off"

    invoke-virtual {v3, v13, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v13, "key_setting_smart_denoise"

    .line 34
    invoke-virtual {v3, v13, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v12, v15, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v10, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v9, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v8, v14, v14}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "off,auto"

    .line 39
    invoke-virtual {v1, v7, v15, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v6, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v5, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v4, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v18

    .line 43
    invoke-virtual {v1, v3, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v17

    .line 44
    invoke-virtual {v1, v3, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v16

    .line 45
    invoke-virtual {v1, v3, v14, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    return-object v0

    :cond_7e
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    .line 47
    const-string/jumbo v3, "val_asd"

    move-object/from16 v16, v4

    const-string/jumbo v4, "val_asd"

    invoke-virtual {v0, v15, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v4, "auto"

    const-string v15, "auto"

    .line 48
    invoke-virtual {v3, v14, v4, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v3, v13, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v13, "1"

    .line 50
    invoke-virtual {v3, v12, v13, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v10, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v9, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v8, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v7, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v6, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v5, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v5, v16

    .line 57
    invoke-virtual {v3, v5, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v5, v18

    .line 58
    invoke-virtual {v3, v5, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v5, v20

    .line 59
    invoke-virtual {v3, v5, v1, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v19

    .line 60
    invoke-virtual {v1, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    return-object v0
.end method

.method public static getRelationWhenVisibleChange(Z)Lcom/transsion/camera/app/common/relation/Relation$Builder;
    .registers 14

    .line 66
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_best_moment_detect"

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "key_animal_eye_detection"

    const-string v2, "key_eye_detection"

    const-string v3, "key_human_detection"

    const-string v4, "key_setting_qrcode"

    const-string v5, "key_portraitmode_enhance"

    const-string v6, "key_hdr"

    const-string v7, "key_voice_detection"

    const-string v8, "key_gesture_detection"

    const-string v9, "key_smile_detection"

    const-string v10, "key_asd"

    const-string v11, "key_cam_mode"

    const-string v12, "off,on"

    if-eqz p0, :cond_56

    .line 68
    const-string/jumbo p0, "val_flash_snap_lite"

    invoke-virtual {v0, v11, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 69
    const-string v11, "0"

    invoke-virtual {p0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 70
    const-string v10, "off"

    invoke-virtual {p0, v9, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v8, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v7, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    const-string v7, "off,auto"

    .line 73
    invoke-virtual {p0, v6, v11, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v5, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v4, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0, v3, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v2, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0, v1, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    return-object v0

    .line 80
    :cond_56
    const-string/jumbo p0, "val_asd"

    invoke-virtual {v0, v11, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 81
    const-string v11, "auto"

    invoke-virtual {p0, v10, v11, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    const/4 v10, 0x0

    .line 82
    invoke-virtual {p0, v9, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, v8, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0, v7, v10, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0, v6, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 86
    const-string v6, "on"

    invoke-virtual {p0, v5, v6, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0, v4, v6, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0, v3, v6, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 89
    invoke-virtual {p0, v2, v6, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, v1, v6, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    return-object v0
.end method
