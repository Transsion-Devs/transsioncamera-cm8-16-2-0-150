.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/mediapipe/tasks/core/Delegate;

.field private final delegateOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final modelAssetBuffer:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final modelAssetFileDescriptor:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final modelAssetPath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/Delegate;Ljava/util/Optional;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/google/mediapipe/tasks/core/Delegate;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetPath:Ljava/util/Optional;

    .line 26
    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetFileDescriptor:Ljava/util/Optional;

    .line 27
    iput-object p3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetBuffer:Ljava/util/Optional;

    .line 28
    iput-object p4, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    .line 29
    iput-object p5, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegateOptions:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/Delegate;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$1;)V
    .registers 7

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/Delegate;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method delegate()Lcom/google/mediapipe/tasks/core/Delegate;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    return-object p0
.end method

.method delegateOptions()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegateOptions:Ljava/util/Optional;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/tasks/core/BaseOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 74
    check-cast p1, Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 75
    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetPath:Ljava/util/Optional;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetPath()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetFileDescriptor:Ljava/util/Optional;

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetFileDescriptor()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetBuffer:Ljava/util/Optional;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    .line 78
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegate()Lcom/google/mediapipe/tasks/core/Delegate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegateOptions:Ljava/util/Optional;

    .line 79
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    return v0

    :cond_48
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetPath:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 90
    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetFileDescriptor:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 92
    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetBuffer:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 94
    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 96
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegateOptions:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method modelAssetBuffer()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetBuffer:Ljava/util/Optional;

    return-object p0
.end method

.method modelAssetFileDescriptor()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetFileDescriptor:Ljava/util/Optional;

    return-object p0
.end method

.method modelAssetPath()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetPath:Ljava/util/Optional;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseOptions{modelAssetPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetPath:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modelAssetFileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetFileDescriptor:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modelAssetBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->modelAssetBuffer:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delegateOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;->delegateOptions:Ljava/util/Optional;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
