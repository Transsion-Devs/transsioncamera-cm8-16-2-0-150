.class final Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;Landroid/os/Looper;)V
    .registers 3

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;Landroid/os/Looper;Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;-><init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 4

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 256
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 253
    :pswitch_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->release(Landroid/os/Message;)V

    return-void

    .line 250
    :pswitch_26
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->snapShot(Landroid/os/Message;)V

    return-void

    .line 247
    :pswitch_2c
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->storageUnmounted(Landroid/os/Message;)V

    return-void

    .line 244
    :pswitch_32
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->startMediaRecorder(Landroid/os/Message;)V

    return-void

    .line 241
    :pswitch_38
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->stop(Landroid/os/Message;)V

    return-void

    .line 238
    :pswitch_3e
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->pauseResume(Landroid/os/Message;)V

    return-void

    .line 235
    :pswitch_44
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->startStop(Landroid/os/Message;)V

    return-void

    .line 232
    :pswitch_4a
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->operationPrepared(Landroid/os/Message;)V

    return-void

    .line 229
    :pswitch_50
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->configRecorder(Landroid/os/Message;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 219
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->-$$Nest$smgetCommand(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 221
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;->processMessage(Landroid/os/Message;)V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->-$$Nest$smgetCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end process time:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
