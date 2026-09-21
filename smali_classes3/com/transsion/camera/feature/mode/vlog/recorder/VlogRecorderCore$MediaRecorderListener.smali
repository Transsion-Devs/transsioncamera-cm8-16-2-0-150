.class Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRecorderListener"
.end annotation


# static fields
.field private static final ERROR_END_OF_STREAM:I = -0x3f3


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;)V

    return-void
.end method

.method private errorHappened(I)Z
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private reachedMax(I)Z
    .registers 2

    const/16 p0, 0x320

    if-eq p1, p0, :cond_b

    const/16 p0, 0x321

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 4

    .line 534
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->errorHappened(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->-$$Nest$mstopMediaRecording(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;I)V

    :cond_c
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 5

    const/16 p1, 0x321

    if-ne p2, p1, :cond_a

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->-$$Nest$mstopMediaRecording(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;I)V

    :cond_a
    const/16 p1, 0x320

    if-ne p2, p1, :cond_14

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->-$$Nest$mstopMediaRecording(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;I)V

    :cond_14
    const/16 p1, -0x3f3

    if-ne p3, p1, :cond_27

    .line 548
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onInfo ERROR_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->-$$Nest$mstopMediaRecording(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;I)V

    :cond_27
    return-void
.end method
