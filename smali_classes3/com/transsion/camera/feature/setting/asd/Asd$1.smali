.class Lcom/transsion/camera/feature/setting/asd/Asd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/Asd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/Asd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 413
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 417
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isNightShotSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$misNightShotSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$misAsdSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_29a

    .line 422
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_29c

    goto/16 :goto_e2

    :sswitch_52
    const-string v0, "key_celebrity_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_e2

    :cond_5c
    const/16 v6, 0xb

    goto/16 :goto_e2

    :sswitch_60
    const-string v0, "key_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_e2

    :cond_6a
    const/16 v6, 0xa

    goto/16 :goto_e2

    :sswitch_6e
    const-string v0, "key_quick_video_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto/16 :goto_e2

    :cond_78
    const/16 v6, 0x9

    goto/16 :goto_e2

    :sswitch_7c
    const-string v0, "key_live_photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto/16 :goto_e2

    :cond_86
    const/16 v6, 0x8

    goto/16 :goto_e2

    :sswitch_8a
    const-string/jumbo v0, "wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_e2

    :cond_94
    const/4 v6, 0x7

    goto :goto_e2

    :sswitch_96
    const-string v0, "key_flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto :goto_e2

    :cond_9f
    const/4 v6, 0x6

    goto :goto_e2

    :sswitch_a1
    const-string v0, "key_flash_facade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    goto :goto_e2

    :cond_aa
    const/4 v6, 0x5

    goto :goto_e2

    :sswitch_ac
    const-string v0, "key_setting_qrcode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    goto :goto_e2

    :cond_b5
    move v6, v1

    goto :goto_e2

    :sswitch_b7
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c0

    goto :goto_e2

    :cond_c0
    move v6, v2

    goto :goto_e2

    :sswitch_c2
    const-string v0, "key_setting_barcode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    goto :goto_e2

    :cond_cb
    move v6, v3

    goto :goto_e2

    :sswitch_cd
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    goto :goto_e2

    :cond_d6
    move v6, v5

    goto :goto_e2

    :sswitch_d8
    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e1

    goto :goto_e2

    :cond_e1
    move v6, v4

    :goto_e2
    packed-switch v6, :pswitch_data_2ce

    goto/16 :goto_29a

    .line 493
    :pswitch_e7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setCelebrityScene(Ljava/lang/String;)V

    return-void

    .line 435
    :pswitch_f1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmFilterValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$misAsdSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_111

    .line 439
    :cond_108
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 441
    :goto_111
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void

    .line 466
    :pswitch_11b
    const-string p1, "key_quick_video_stop"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, v4}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmIsQuickVideoStart(Lcom/transsion/camera/feature/setting/asd/Asd;Z)V

    .line 468
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_140

    .line 470
    :cond_132
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, v5}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmIsQuickVideoStart(Lcom/transsion/camera/feature/setting/asd/Asd;Z)V

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 473
    :goto_140
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void

    .line 496
    :pswitch_14a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmLivePhotoValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$misAsdSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_161

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_16a

    .line 500
    :cond_161
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 502
    :goto_16a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void

    .line 444
    :pswitch_174
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmWideCameraValue(Lcom/transsion/camera/feature/setting/asd/Asd;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29a

    .line 445
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29a

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmWideCameraValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    return-void

    .line 425
    :pswitch_19f
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fputmFlashValue(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$misNightShotSupport(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_1bf

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdSettingFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightShotOpenState(Z)V

    return-void

    .line 430
    :cond_1bf
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdSettingFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightShotOpenState(Z)V

    return-void

    .line 451
    :pswitch_1d2
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged, KEY_SUPER_DEFINITION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdModeFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportSuperResolution()Z

    move-result p1

    if-eqz p1, :cond_29a

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdGlobalFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;->isHighDefinitionModeSupport()Z

    move-result p1

    if-nez p1, :cond_29a

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    const-string p1, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setSuperResolutionOpened(Z)V

    return-void

    .line 477
    :pswitch_213
    const-string p1, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void

    .line 457
    :pswitch_225
    const-string/jumbo p1, "value_super_night_lite_switch_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_237

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdSettingFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightLiteOpened(Z)V

    .line 460
    :cond_237
    const-string/jumbo p1, "value_super_night_lite_switch_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_249

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdSettingFeatures(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->setNightLiteOpened(Z)V

    .line 463
    :cond_249
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void

    .line 482
    :pswitch_253
    const-string p1, "capture_started"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_265

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onCaptureStarted()V

    return-void

    .line 484
    :cond_265
    const-string p1, "capture_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_277

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onAllCaptureEnd()V

    return-void

    .line 486
    :cond_277
    const-string p1, "shot2shot_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_289

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onShot2ShotEnd()V

    return-void

    .line 488
    :cond_289
    const-string p1, "capture_jpeg_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29a

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->-$$Nest$fgetmAsdParameterConfig(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onCaptureJpegEnd()V

    :cond_29a
    :goto_29a
    return-void

    nop

    :sswitch_data_29c
    .sparse-switch
        -0x76a61da8 -> :sswitch_d8
        -0x746c5766 -> :sswitch_cd
        -0x734e5c4f -> :sswitch_c2
        -0x711a6189 -> :sswitch_b7
        -0x6d57a1c3 -> :sswitch_ac
        -0x6bb0b257 -> :sswitch_a1
        -0x62d091f0 -> :sswitch_96
        -0x6115b1ef -> :sswitch_8a
        -0x52a0b901 -> :sswitch_7c
        -0x4e600694 -> :sswitch_6e
        0x8991158 -> :sswitch_60
        0x31b41d50 -> :sswitch_52
    .end sparse-switch

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_253
        :pswitch_225
        :pswitch_213
        :pswitch_1d2
        :pswitch_213
        :pswitch_19f
        :pswitch_19f
        :pswitch_174
        :pswitch_14a
        :pswitch_11b
        :pswitch_f1
        :pswitch_e7
    .end packed-switch
.end method
