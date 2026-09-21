.class Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
        "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;",
        "Lcom/google/mediapipe/framework/image/MPImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$stylizerOptions:Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$1;->val$stylizerOptions:Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/framework/image/MPImage;"
        }
    .end annotation

    .line 154
    new-instance p0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    const/4 v0, 0x0

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convertToTaskInput(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$1;->convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskResult;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$1;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;

    move-result-object p0

    return-object p0
.end method

.method public convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    .line 112
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 114
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 115
    invoke-static {v1, p1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->generateResultTimestampMs(Lcom/google/mediapipe/tasks/vision/core/RunningMode;Lcom/google/mediapipe/framework/Packet;)J

    move-result-wide v0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;->create(Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;

    move-result-object p0

    return-object p0

    .line 118
    :cond_22
    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v2

    .line 119
    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v3

    .line 120
    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getImageNumChannels(Lcom/google/mediapipe/framework/Packet;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_33

    const/4 v5, 0x2

    goto :goto_34

    :cond_33
    const/4 v5, 0x1

    .line 128
    :goto_34
    iget-object p0, p0, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$1;->val$stylizerOptions:Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizer$FaceStylizerOptions;->resultListener()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_4f

    mul-int p0, v2, v3

    mul-int/2addr p0, v4

    .line 129
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 130
    invoke-static {v1, p0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageData(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 p0, 0x0

    goto :goto_53

    .line 134
    :cond_4f
    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getImageDataDirectly(Lcom/google/mediapipe/framework/Packet;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_53
    :goto_53
    if-eqz p0, :cond_73

    .line 143
    new-instance v1, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 147
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 148
    invoke-static {v1, p1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->generateResultTimestampMs(Lcom/google/mediapipe/tasks/vision/core/RunningMode;Lcom/google/mediapipe/framework/Packet;)J

    move-result-wide v0

    .line 146
    invoke-static {p0, v0, v1}, Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;->create(Ljava/util/Optional;J)Lcom/google/mediapipe/tasks/vision/facestylizer/FaceStylizerResult;

    move-result-object p0

    return-object p0

    .line 138
    :cond_73
    new-instance p0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object p1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "There is an error getting the stylized face. It usually results from incorrect options of unsupported OutputType of given model."

    invoke-direct {p0, p1, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
