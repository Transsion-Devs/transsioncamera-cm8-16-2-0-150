.class Lcom/cdv/io/NvMediaEncodecCallback$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvMediaEncodecCallback;->setCallbackToCodec(Landroid/media/MediaCodec;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvMediaEncodecCallback;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvMediaEncodecCallback;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 7

    .line 101
    iget-object p1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {p1}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_d

    return-void

    :cond_d
    if-eqz p2, :cond_14

    .line 105
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    .line 107
    :goto_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onErrorCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NvMediaEncodecCallback"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    # invokes: Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnError(JI)V
    invoke-static {v0, v1, p1}, Lcom/cdv/io/NvMediaEncodecCallback;->access$200(JI)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    .line 78
    const-string p0, "NvMediaEncodecCallback"

    const-string p1, "onInputBufferAvailable"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 8

    .line 83
    iget-object v0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {v0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    goto :goto_f

    :cond_d
    if-nez p3, :cond_10

    :goto_f
    return-void

    .line 89
    :cond_10
    :try_start_10
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v1

    # invokes: Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnOutputBufferAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    invoke-static {v1, v2, v0, p3}, Lcom/cdv/io/NvMediaEncodecCallback;->access$100(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 p0, 0x0

    .line 91
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 93
    const-string p1, "NvMediaEncodecCallback"

    const-string p2, "MediaCodec.releaseOutputBuffer failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 7

    .line 113
    iget-object p1, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {p1}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_d

    return-void

    .line 115
    :cond_d
    const-string p1, "NvMediaEncodecCallback"

    const-string v0, "onOutputFormatChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/cdv/io/NvMediaEncodecCallback$1;->this$0:Lcom/cdv/io/NvMediaEncodecCallback;

    # getter for: Lcom/cdv/io/NvMediaEncodecCallback;->m_contextInterface:J
    invoke-static {p0}, Lcom/cdv/io/NvMediaEncodecCallback;->access$000(Lcom/cdv/io/NvMediaEncodecCallback;)J

    move-result-wide p0

    # invokes: Lcom/cdv/io/NvMediaEncodecCallback;->nativeOnOutputFormatChanged(JLandroid/media/MediaFormat;)V
    invoke-static {p0, p1, p2}, Lcom/cdv/io/NvMediaEncodecCallback;->access$300(JLandroid/media/MediaFormat;)V

    return-void
.end method
