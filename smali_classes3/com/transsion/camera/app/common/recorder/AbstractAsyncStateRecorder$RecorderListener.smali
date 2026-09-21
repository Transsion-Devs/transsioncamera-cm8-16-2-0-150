.class public Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/IRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecorderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onError(II)V
    .registers 3

    .line 538
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->errorHappened(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    :cond_c
    return-void
.end method

.method public onInfo(II)V
    .registers 4

    .line 549
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->reachedMax(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    :cond_c
    const/16 p1, -0x3f3

    if-ne p2, p1, :cond_1f

    .line 553
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onInfo ERROR_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;->this$0:Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    :cond_1f
    return-void
.end method
