.class Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;->this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;-><init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;->this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->-$$Nest$monError(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;->this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->-$$Nest$monInputBufferAvailable(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;->this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->-$$Nest$monOutputBufferAvailable(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder$EncoderCallback;->this$0:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->-$$Nest$monOutputFormatChanged(Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method
