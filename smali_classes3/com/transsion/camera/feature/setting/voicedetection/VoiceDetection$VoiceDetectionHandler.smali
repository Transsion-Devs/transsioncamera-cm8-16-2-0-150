.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;)V
    .registers 3

    .line 455
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    .line 456
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 461
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1ce

    goto/16 :goto_1cd

    .line 520
    :pswitch_9
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    return-void

    .line 508
    :pswitch_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "voice_capture_state"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mTriggerTakePicture"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 512
    :pswitch_29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "1"

    :goto_5e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_66

    :cond_63
    const-string v1, "0"

    goto :goto_5e

    :goto_66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 514
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 517
    :cond_6d
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 504
    :pswitch_8a
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 505
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PAUSE_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 497
    :pswitch_ac
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p1

    if-eqz p1, :cond_b6

    goto/16 :goto_1cd

    .line 500
    :cond_b6
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 501
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RESUME_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 493
    :pswitch_d8
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)V

    .line 494
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_CHECK_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 481
    :pswitch_102
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfgetmInit()Z

    move-result p0

    if-nez p0, :cond_110

    .line 482
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already uninit, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 485
    :cond_110
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "uninit start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->deInit()I

    move-result p1

    .line 487
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfputmInit(Z)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uninit result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    return-void

    .line 463
    :pswitch_138
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInit: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfgetmInit()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPaused: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfgetmInit()Z

    move-result v0

    if-nez v0, :cond_1cd

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v0

    if-eqz v0, :cond_16f

    goto :goto_1cd

    .line 467
    :cond_16f
    const-string v0, "init start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/TransVCConfig;-><init>()V

    .line 469
    invoke-virtual {v0, v2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setResultPublishSwitch(Z)V

    .line 470
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmTvcResultListener(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/voicecamera/sdk/TVCResultListener;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/transsion/voicecamera/sdk/TransVCamera;->init(Landroid/content/Context;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I

    move-result v0

    if-nez v0, :cond_18f

    move v1, v2

    .line 471
    :cond_18f
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfputmInit(Z)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$sfgetmInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_dump_voice"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 475
    const-string p1, "on"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1cd

    .line 477
    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    :cond_1cd
    :goto_1cd
    return-void

    :pswitch_data_1ce
    .packed-switch 0x64
        :pswitch_138
        :pswitch_102
        :pswitch_d8
        :pswitch_ac
        :pswitch_8a
        :pswitch_29
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
