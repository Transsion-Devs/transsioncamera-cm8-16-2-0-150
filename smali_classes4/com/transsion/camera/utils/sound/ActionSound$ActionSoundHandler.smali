.class Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/sound/ActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionSoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/sound/ActionSound;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/os/Looper;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/os/Looper;Lcom/transsion/camera/utils/sound/ActionSound-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;-><init>(Lcom/transsion/camera/utils/sound/ActionSound;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[processMessage] the message has not been defined"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 126
    :pswitch_f
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandlePlayCallback(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    .line 119
    :pswitch_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "[processMessage] MSG_RELEASE_SOUND START."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-static {p0}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandleReleaseSound(Lcom/transsion/camera/utils/sound/ActionSound;)V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 123
    invoke-static {}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[processMessage] MSG_RELEASE_SOUND END, process time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 116
    :pswitch_4e
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandleStopSound(Lcom/transsion/camera/utils/sound/ActionSound;I)V

    return-void

    .line 113
    :pswitch_56
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;

    invoke-static {p0, v0, v2, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandlePlaySound(Lcom/transsion/camera/utils/sound/ActionSound;IZLcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    .line 110
    :pswitch_69
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandleUnloadSound(Lcom/transsion/camera/utils/sound/ActionSound;I)V

    return-void

    .line 107
    :pswitch_71
    iget-object p0, p0, Lcom/transsion/camera/utils/sound/ActionSound$ActionSoundHandler;->this$0:Lcom/transsion/camera/utils/sound/ActionSound;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/utils/sound/ActionSound$Sound;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/sound/ActionSound;->-$$Nest$mhandleLoadSound(Lcom/transsion/camera/utils/sound/ActionSound;Lcom/transsion/camera/utils/sound/ActionSound$Sound;)V

    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x3e9
        :pswitch_71
        :pswitch_69
        :pswitch_56
        :pswitch_4e
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method
