.class public Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final imageFormat:I

.field private timestamp:J

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    iput p2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->width:I

    .line 55
    iput p3, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->height:I

    .line 56
    iput p4, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->imageFormat:I

    const-wide/16 p1, 0x0

    .line 58
    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/framework/image/MPImage;
    .registers 7

    .line 69
    new-instance v0, Lcom/google/mediapipe/framework/image/MPImage;

    new-instance v1, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    iget-object v2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->imageFormat:I

    invoke-direct {v1, v2, v3}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;-><init>(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    iget v4, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->width:I

    iget v5, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->height:I

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/image/MPImage;-><init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V

    return-object v0
.end method

.method setTimestamp(J)Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    return-object p0
.end method
