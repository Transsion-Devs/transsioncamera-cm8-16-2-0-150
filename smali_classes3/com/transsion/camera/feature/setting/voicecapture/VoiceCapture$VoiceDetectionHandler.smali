.class Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Landroid/os/Looper;)V
    .registers 3

    .line 456
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    .line 457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_120

    goto/16 :goto_ba

    .line 497
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fputmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V

    return-void

    .line 485
    :pswitch_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->access$200(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v0, "voice_capture_state"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mTriggerTakePicture"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 489
    :pswitch_2a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fputmIsTakePicture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "1"

    :goto_5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_67

    :cond_64
    const-string v1, "0"

    goto :goto_5f

    :goto_67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 491
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 494
    :cond_6e
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 481
    :pswitch_8d
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V

    .line 482
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PAUSE_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 474
    :pswitch_b2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result p1

    if-eqz p1, :cond_bb

    :goto_ba
    return-void

    .line 477
    :cond_bb
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fputmResumed(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V

    .line 478
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RESUME_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 470
    :pswitch_df
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fputmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;Z)V

    .line 471
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_CHECK_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 467
    :pswitch_10b
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "MSG_UNINIT_VOICE: recognition deinitialization now handled by pipeline"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 464
    :pswitch_115
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicecapture/VoiceCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "MSG_INIT_VOICE: recognition initialization now handled in recording thread"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_120
    .packed-switch 0x64
        :pswitch_115
        :pswitch_10b
        :pswitch_df
        :pswitch_b2
        :pswitch_8d
        :pswitch_2a
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
