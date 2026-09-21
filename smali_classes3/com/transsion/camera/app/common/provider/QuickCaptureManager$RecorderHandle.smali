.class final Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/provider/QuickCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecorderHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;Lcom/transsion/camera/app/common/provider/QuickCaptureManager-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;-><init>(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 10

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_9e

    .line 221
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 213
    :pswitch_21
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessFinishThisShot(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    return-void

    .line 200
    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    if-nez p1, :cond_37

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error MSG_PROCESS_SAVE_DATA, qcItem is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_37
    const-string v0, "MSG_PROCESS_SAVE_DATA"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    const/16 v0, -0x10

    .line 206
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 207
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurJpeg()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->isCurBGImage()Z

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimeStamp()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessSaveData(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;[BZLcom/transsion/camera/app/common/mode/ICameraMode;J)V

    .line 208
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 209
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 191
    :pswitch_5d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;

    if-nez p1, :cond_6d

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "error MSG_PROCESS_THUMBNAIL, qcItem is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getWhichThumbnail()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->getTimestampInfo()Lcom/transsion/camera/app/common/mode/TimestampInfo;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessThumbnail(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    return-void

    .line 187
    :pswitch_83
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8b

    move v1, v0

    :cond_8b
    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessShutterStart(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;Z)V

    return-void

    .line 183
    :pswitch_8f
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessShutterAction(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;I)V

    return-void

    .line 217
    :pswitch_97
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->this$0:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->-$$Nest$mprocessLeave(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0xc8
        :pswitch_97
        :pswitch_8f
        :pswitch_83
        :pswitch_5d
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager$RecorderHandle;->processMessage(Landroid/os/Message;)V

    return-void
.end method
