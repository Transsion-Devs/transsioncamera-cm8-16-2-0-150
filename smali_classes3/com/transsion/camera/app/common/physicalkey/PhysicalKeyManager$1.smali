.class Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShutterEvent(I)Z
    .registers 4

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_54

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_54

    const/16 v0, 0x55

    if-eq p1, v0, :cond_54

    const/16 v0, 0x15e

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2d2

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2d7

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2da

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2dc

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2e1

    if-eq p1, v0, :cond_54

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_56

    packed-switch p1, :pswitch_data_60

    return v0

    .line 616
    :pswitch_31
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string p1, "key_volume_key"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 619
    const-string p1, "Shutter"

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    return v0

    :cond_54
    :pswitch_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x17
        :pswitch_54
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x19b
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method private isZoomEvent(I)Z
    .registers 5

    const/16 v0, 0x18

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const/16 v0, 0x19

    if-eq p1, v0, :cond_14

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_13

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_13

    goto :goto_37

    :cond_13
    move v2, v1

    .line 655
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 656
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_volume_key"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 658
    const-string v0, "Zoom"

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    move v2, v1

    .line 667
    :cond_37
    :goto_37
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz p0, :cond_48

    const/16 p0, 0x166

    if-eq p1, p0, :cond_47

    const/16 p0, 0x167

    if-ne p1, p0, :cond_48

    :cond_47
    return v1

    :cond_48
    return v2
.end method


# virtual methods
.method public onClick(I)V
    .registers 7

    .line 463
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v1

    .line 465
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[singleClick] ->  keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isZoomEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isUnderwater = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSupportDoubleClickVolumeDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v2, 0x19

    if-ne p1, v2, :cond_b8

    if-eqz v0, :cond_b8

    if-eqz v1, :cond_b8

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 472
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 473
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptKeyEvent KEYCODE_VOLUME_DOWN hasMessages eventTime = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->onDoubleClickVolumeDown()V

    return-void

    .line 477
    :cond_86
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptKeyEvent KEYCODE_VOLUME_DOWN eventTime = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_b8
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->onClickImpl(I)V

    return-void
.end method

.method public onClickImpl(I)V
    .registers 10

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c5

    .line 491
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/16 v1, 0x1c

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x18

    if-eqz v0, :cond_52

    if-eq p1, v5, :cond_20

    if-ne p1, v2, :cond_2a

    .line 493
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string/jumbo v2, "zoom"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 495
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz v0, :cond_41

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x166

    if-ne p1, v0, :cond_3d

    move v3, v4

    :cond_3d
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void

    .line 498
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    if-eq p1, v5, :cond_4d

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_4e

    :cond_4d
    move v3, v4

    :cond_4e
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void

    .line 500
    :cond_52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-wide/16 v6, 0x1f4

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getPhysicalLastClickTime()[J

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result v0

    if-nez v0, :cond_c5

    const/16 v0, 0x19b

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x19c

    if-ne p1, v0, :cond_86

    .line 501
    :cond_6c
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->showShoulderTips()V

    return-void

    :cond_86
    const/16 v0, 0x2d7

    if-eq p1, v0, :cond_8e

    const/16 v0, 0x2e1

    if-ne p1, v0, :cond_a0

    .line 508
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 509
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[singleClick] return, shoulder button click switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a0
    if-eq p1, v5, :cond_a4

    if-ne p1, v2, :cond_ad

    .line 514
    :cond_a4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v2, "shutter"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 516
    :cond_ad
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$mreportPhysicalKeyShutterEvent(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)V

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterClick(II)V

    .line 519
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVolumeShutter(I)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public onLongPress(I)V
    .registers 5

    .line 564
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLongPress] longPress ongoing... isZoomEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3b

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p1, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p1, 0x1

    :goto_3c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    :cond_3f
    return-void
.end method

.method public onLongPressCancel(I)V
    .registers 8

    .line 573
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLongPressCancel] -> keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2d

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    return-void

    .line 577
    :cond_32
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_45

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misNeedAiKeyLongPress(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_8a

    :cond_45
    const/16 v0, 0x19c

    const/16 v2, 0x19b

    if-eq p1, v2, :cond_4d

    if-ne p1, v0, :cond_56

    .line 581
    :cond_4d
    iget-object v3, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v3}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_8a

    :cond_56
    const/16 v3, 0x2e1

    const/16 v4, 0x2d7

    if-eq p1, v4, :cond_5e

    if-ne p1, v3, :cond_70

    .line 584
    :cond_5e
    iget-object v5, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 586
    invoke-static {v5}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v5

    if-nez v5, :cond_70

    .line 587
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onLongPressCancel] return, shoulder button long press switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_70
    if-eq p1, v2, :cond_78

    if-eq p1, v0, :cond_78

    if-eq p1, v4, :cond_78

    if-ne p1, v3, :cond_81

    .line 594
    :cond_78
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->setShoulderKeyLongPressState(Z)V

    .line 596
    :cond_81
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickEnd()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public onLongPressStart(I)V
    .registers 11

    .line 525
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLongPressStart] -> keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2e

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_2f

    :cond_2e
    move v1, v2

    :cond_2f
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    return-void

    .line 529
    :cond_33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_47

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misNeedAiKeyLongPress(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_b5

    :cond_47
    const/16 v0, 0x19c

    const/16 v3, 0x19b

    if-eq p1, v3, :cond_4f

    if-ne p1, v0, :cond_69

    .line 533
    :cond_4f
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result p1

    if-nez p1, :cond_b5

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->showShoulderTips()V

    return-void

    :cond_69
    const/16 v4, 0x2dc

    const/16 v5, 0x2d2

    const/16 v6, 0x2da

    const/16 v7, 0x2d0

    if-eq p1, v7, :cond_79

    if-eq p1, v6, :cond_79

    if-eq p1, v5, :cond_79

    if-ne p1, v4, :cond_8b

    .line 543
    :cond_79
    iget-object v8, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v8}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v8

    if-nez v8, :cond_8b

    .line 544
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onLongPressStart] return, shoulder button long press switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_8b
    if-eq p1, v3, :cond_97

    if-eq p1, v0, :cond_97

    if-eq p1, v7, :cond_97

    if-eq p1, v6, :cond_97

    if-eq p1, v5, :cond_97

    if-ne p1, v4, :cond_a0

    .line 554
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->setShoulderKeyLongPressState(Z)V

    .line 556
    :cond_a0
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$mreportPhysicalKeyShutterEvent(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)V

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickStart(II)V

    .line 558
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVolumeShutter(I)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public onShoulderButtonSwipeEnd()V
    .registers 1

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onShoulderButtonZoomSwipeEnd()V

    return-void
.end method

.method public onShoulderButtonSwiping(ZI)V
    .registers 3

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onShoulderButtonZoomSwiping(ZI)V

    return-void
.end method
