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

    .line 486
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShutterEvent(I)Z
    .registers 4

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_58

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_58

    const/16 v0, 0x55

    if-eq p1, v0, :cond_58

    const/16 v0, 0x15e

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2d2

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2d7

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2da

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2dc

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2e1

    if-eq p1, v0, :cond_58

    const/16 v0, 0x2e2

    if-eq p1, v0, :cond_58

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_5a

    packed-switch p1, :pswitch_data_64

    return v0

    .line 674
    :pswitch_35
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string p1, "key_volume_key"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 677
    const-string p1, "Shutter"

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    return v0

    :cond_58
    :pswitch_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x17
        :pswitch_58
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x19b
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method private isZoomEvent(I)Z
    .registers 6

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

    .line 714
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmSettingProvide(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    const-string v3, "key_volume_key"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 717
    const-string v3, "Zoom"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v2, v1

    .line 726
    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misFingerprintSlideKey(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)Z

    move-result p0

    if-eqz p0, :cond_40

    return v1

    :cond_40
    return v2
.end method

.method private setPhysicalKeyLongPressState(IZ)V
    .registers 6

    const/16 v0, 0x2e2

    const/16 v1, 0x19c

    const/16 v2, 0x19b

    if-eqz p2, :cond_29

    if-eq p1, v2, :cond_1e

    if-eq p1, v1, :cond_1e

    const/16 p2, 0x2d0

    if-eq p1, p2, :cond_1e

    const/16 p2, 0x2da

    if-eq p1, p2, :cond_1e

    const/16 p2, 0x2d2

    if-eq p1, p2, :cond_1e

    const/16 p2, 0x2dc

    if-eq p1, p2, :cond_1e

    if-ne p1, v0, :cond_38

    .line 633
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->setShoulderKeyLongPressState(Z)V

    return-void

    :cond_29
    if-eq p1, v2, :cond_39

    if-eq p1, v1, :cond_39

    const/16 p2, 0x2d7

    if-eq p1, p2, :cond_39

    const/16 p2, 0x2e1

    if-eq p1, p2, :cond_39

    if-ne p1, v0, :cond_38

    goto :goto_39

    :cond_38
    return-void

    .line 643
    :cond_39
    :goto_39
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->setShoulderKeyLongPressState(Z)V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .registers 7

    .line 489
    invoke-static {}, Lcom/transsion/camera/utils/UnderwaterUtils;->isUnderwater()Z

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isSupportDoubleClickVolumeDown()Z

    move-result v1

    .line 491
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

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 498
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 499
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

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->onDoubleClickVolumeDown()V

    return-void

    .line 503
    :cond_86
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 505
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

    .line 508
    :cond_b8
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->onClickImpl(I)V

    return-void
.end method

.method public onClickImpl(I)V
    .registers 10

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_c5

    .line 517
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

    .line 519
    :cond_20
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string/jumbo v2, "zoom"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 521
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    if-eqz v0, :cond_41

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x167

    if-ne p1, v0, :cond_3d

    move v3, v4

    :cond_3d
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void

    .line 524
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

    .line 526
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

    .line 527
    :cond_6c
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 529
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

    .line 534
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 535
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[singleClick] return, shoulder button click switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a0
    if-eq p1, v5, :cond_a4

    if-ne p1, v2, :cond_ad

    .line 540
    :cond_a4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v2, "shutter"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 542
    :cond_ad
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$mreportPhysicalKeyShutterEvent(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)V

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterClick(II)V

    .line 545
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVolumeShutter(I)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public onLongPress(I)V
    .registers 5

    .line 587
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

    .line 589
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misFingerprintSlideKey(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_48

    .line 593
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_44

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_42

    goto :goto_44

    :cond_42
    const/4 p1, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p1, 0x1

    :goto_45
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaling(Z)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onLongPressCancel(I)V
    .registers 5

    .line 599
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

    .line 601
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misFingerprintSlideKey(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_85

    .line 605
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_36

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_37

    :cond_36
    const/4 v1, 0x1

    :cond_37
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleEnd(Z)V

    return-void

    .line 606
    :cond_3b
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result v0

    if-eqz v0, :cond_85

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_4e

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misNeedAiKeyLongPress(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_85

    :cond_4e
    const/16 v0, 0x19b

    if-eq p1, v0, :cond_56

    const/16 v0, 0x19c

    if-ne p1, v0, :cond_5f

    .line 610
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_85

    :cond_5f
    const/16 v0, 0x2d7

    if-eq p1, v0, :cond_67

    const/16 v0, 0x2e1

    if-ne p1, v0, :cond_79

    .line 613
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 615
    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 616
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onLongPressCancel] return, shoulder button long press switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 619
    :cond_79
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->setPhysicalKeyLongPressState(IZ)V

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickEnd()V

    :cond_85
    :goto_85
    return-void
.end method

.method public onLongPressStart(I)V
    .registers 5

    .line 551
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

    .line 553
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isZoomEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misFingerprintSlideKey(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x167

    if-ne p1, v0, :cond_33

    move v1, v2

    :cond_33
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomClick(Z)V

    return-void

    .line 558
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_45

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_46

    :cond_45
    move v1, v2

    :cond_46
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomScaleStart(Z)V

    return-void

    .line 559
    :cond_4a
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->isShutterEvent(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_5d

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misNeedAiKeyLongPress(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_b9

    :cond_5d
    const/16 v0, 0x19b

    if-eq p1, v0, :cond_65

    const/16 v0, 0x19c

    if-ne p1, v0, :cond_7f

    .line 563
    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonClickSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->showShoulderTips()V

    return-void

    :cond_7f
    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x2da

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x2d2

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x2dc

    if-ne p1, v0, :cond_a1

    .line 573
    :cond_8f
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$misShoulderButtonLongPressSwitchOn(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 574
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onLongPressStart] return, shoulder button long press switch is off"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 578
    :cond_a1
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->setPhysicalKeyLongPressState(IZ)V

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$mreportPhysicalKeyShutterEvent(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;I)V

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickStart(II)V

    .line 581
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVolumeShutter(I)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public onSwipeEnd()V
    .registers 1

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onZoomSwipeEnd()V

    return-void
.end method

.method public onSwiping(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2df

    if-eq p1, v2, :cond_20

    const/16 v3, 0x2e0

    if-eq p1, v3, :cond_20

    const/16 p2, 0x2e3

    const/16 v2, 0x2e4

    if-eq p1, p2, :cond_13

    if-eq p1, v2, :cond_13

    return-void

    .line 656
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    if-ne p1, v2, :cond_1c

    move v0, v1

    :cond_1c
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onCriticalZoomSwitchSwiping(Z)V

    return-void

    .line 652
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->-$$Nest$fgetmPhysicalKeyEventCallback(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    if-ne p1, v2, :cond_29

    move v0, v1

    :cond_29
    invoke-interface {p0, v0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;->onContinuousZoomSwiping(ZI)V

    return-void
.end method
