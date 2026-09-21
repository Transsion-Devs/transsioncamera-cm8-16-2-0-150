.class final Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecorderHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p0, 0x0

    .line 153
    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)V

    .line 154
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmRecordState(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 4

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 191
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 183
    :pswitch_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmLeave(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)V

    return-void

    .line 187
    :pswitch_27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$mprocessFinishRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    return-void

    .line 178
    :pswitch_2d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$fputmLeave(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$mprocessLeaveRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    return-void

    .line 174
    :pswitch_39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$mprocessPauseAndResumeRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    return-void

    .line 170
    :pswitch_3f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$mprocessStartAndStopRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0xc9
        :pswitch_3f
        :pswitch_39
        :pswitch_2d
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 159
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v3, -0x13

    .line 161
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;->processMessage(Landroid/os/Message;)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 164
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " end process time:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
