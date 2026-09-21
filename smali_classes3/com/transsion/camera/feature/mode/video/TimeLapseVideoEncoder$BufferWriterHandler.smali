.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferWriterHandler"
.end annotation


# static fields
.field public static final MSG_ADD_BUFFER:I = 0x0

.field public static final MSG_FORMAT_CHANGED:I = 0x1


# instance fields
.field private encoder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .registers 3

    .line 475
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;->encoder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;->encoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    if-nez p0, :cond_14

    .line 483
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handleMessage videoEncoder ref is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 486
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_41

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1c

    goto :goto_58

    .line 495
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MSG_FORMAT_CHANGED"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 496
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 497
    :try_start_2a
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fputmIsMediaCodecReady(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Z)V

    .line 498
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$fgetmEncoderParams(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3d

    .line 499
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$minitMuxers(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_3f

    .line 501
    :cond_3d
    :goto_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_3b

    throw p0

    .line 488
    :cond_41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    if-eqz v0, :cond_58

    .line 489
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    check-cast p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mIsEOS:Z

    invoke-static {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->-$$Nest$mwriteBuffer(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    :cond_58
    :goto_58
    return-void
.end method
