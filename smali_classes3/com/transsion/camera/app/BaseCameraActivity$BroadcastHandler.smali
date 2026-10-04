.class Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHandler"
.end annotation


# instance fields
.field private mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V
    .registers 3

    .line 429
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    .line 430
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 435
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_11e

    goto/16 :goto_92

    .line 488
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_f

    .line 489
    const-string p1, "com.android.nfc.CAMERA_ENTER"

    goto :goto_11

    .line 490
    :cond_f
    const-string p1, "com.android.nfc.CAMERA_EXIT"

    .line 491
    :goto_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    const-string p1, "com.android.nfc"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 481
    :pswitch_25
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 482
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipPauseTranSched(I)V

    return-void

    .line 484
    :cond_39
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelVipPauseTranSched(I)V

    return-void

    .line 437
    :pswitch_43
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->start()V

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->start()V

    return-void

    .line 468
    :pswitch_56
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "BroadcastReceivers clean"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-object v1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 470
    invoke-static {p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmBatteryMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->stop()V

    .line 473
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmRecentKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V

    .line 475
    :cond_7c
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->stop()V

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmHomeKeyMonitor(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;)V

    :cond_92
    :goto_92
    return-void

    .line 457
    :pswitch_93
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo v0, "unRegister BroadcastReceivers start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->stop()V

    .line 459
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmBatteryMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->stop()V

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_be

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 465
    :cond_be
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string/jumbo p1, "unRegister BroadcastReceivers end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 441
    :pswitch_c9
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "register BroadcastReceivers start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->start()V

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmBatteryMonitor(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->start()V

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_114

    .line 446
    new-instance p1, Lcom/transsion/camera/app/BaseCameraActivity$HeadSetBroadcastReceiver;

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$HeadSetBroadcastReceiver;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHeadsetCaptureSupport()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 450
    const-string v0, "com.transsion.nfbd.smartcapture"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    :cond_108
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$BroadcastHandler;->mHeadsetCaptureReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 454
    :cond_114
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "register BroadcastReceivers end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_11e
    .packed-switch 0xf
        :pswitch_c9
        :pswitch_93
        :pswitch_56
        :pswitch_43
        :pswitch_25
        :pswitch_8
    .end packed-switch
.end method
