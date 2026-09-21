.class Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;
.super Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private imageFormat:Ljava/lang/Integer;

.field private storageType:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/google/mediapipe/framework/image/MPImageProperties;
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imageFormat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_17
    iget-object v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    if-nez v0, :cond_2c

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " storageType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 87
    new-instance v0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;

    iget-object v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;-><init>(II)V

    return-object v0

    .line 85
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    .registers 2

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    .registers 2

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    return-object p0
.end method
