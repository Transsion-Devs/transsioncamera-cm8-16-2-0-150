.class Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ISPHidlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;Landroid/os/Looper;)V
    .registers 3

    .line 434
    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    .line 435
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private actionToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_2c

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 462
    :pswitch_1a
    const-string p0, "specialStart"

    return-object p0

    .line 460
    :pswitch_1d
    const-string p0, "releaseSurfaces"

    return-object p0

    .line 458
    :pswitch_20
    const-string p0, "captureAllDone"

    return-object p0

    .line 456
    :pswitch_23
    const-string p0, "setTZConfig"

    return-object p0

    .line 454
    :pswitch_26
    const-string p0, "notifyTZService"

    return-object p0

    .line 452
    :pswitch_29
    const-string p0, "notifyServiceDied"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 7

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_96

    goto/16 :goto_95

    .line 497
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 501
    :try_start_15
    const-string v0, "com.android.cts.verifier"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1a} :catch_1b

    move v1, v2

    .line 505
    :catch_1b
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App launched launchedFromUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isCTSVerifierInstalled = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->setSkipFlag(Z)V

    return-void

    .line 494
    :pswitch_43
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$mreleaseSurfaces(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V

    return-void

    .line 489
    :pswitch_49
    iget-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;->onAllHighQualityJpegCompleted()V

    return-void

    .line 485
    :pswitch_5b
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setTZCapConfig(JII)V

    return-void

    .line 477
    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    iget-wide v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setTZCapConfig(JII)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mJpegData:[B

    iget-wide v2, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->this$0:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$fgetmHighQualityMediaSaverListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;->onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void

    .line 471
    :pswitch_8c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_95

    .line 473
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->onPostAlgoServiceDied()V

    :cond_95
    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_63
        :pswitch_5b
        :pswitch_49
        :pswitch_43
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 441
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->actionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " START, obj:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->processMessage(Landroid/os/Message;)V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 445
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " END process time = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
