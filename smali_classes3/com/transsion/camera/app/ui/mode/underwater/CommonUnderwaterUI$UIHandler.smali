.class Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$fgetmRelease(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage discard the message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after unInit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 545
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    goto :goto_79

    .line 550
    :pswitch_2e
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    .line 551
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    aget-object p1, v1, p1

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$monUIStateChanged(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void

    .line 547
    :pswitch_44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$mupdateRecordingTime(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V

    return-void

    .line 558
    :pswitch_4a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->-$$Nest$fgetmDrainageSoundSampleId(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 560
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    if-eqz p1, :cond_73

    const/4 v0, 0x1

    .line 562
    invoke-interface {p1, v0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    .line 564
    :cond_73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageAnimation(Z)V

    :cond_79
    :goto_79
    return-void

    .line 555
    :pswitch_7a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageAnimationPrepare()V

    return-void

    :pswitch_data_80
    .packed-switch 0x62
        :pswitch_7a
        :pswitch_4a
        :pswitch_44
        :pswitch_2e
    .end packed-switch
.end method
