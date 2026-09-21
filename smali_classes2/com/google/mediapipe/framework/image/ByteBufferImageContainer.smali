.class Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/framework/image/MPImageContainer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final properties:Lcom/google/mediapipe/framework/image/MPImageProperties;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->buffer:Ljava/nio/ByteBuffer;

    .line 29
    invoke-static {}, Lcom/google/mediapipe/framework/image/MPImageProperties;->builder()Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->build()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getImageFormat()I
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/MPImageProperties;->getImageFormat()I

    move-result p0

    return p0
.end method

.method public getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-object p0
.end method
