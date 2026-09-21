.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private delegate:Lcom/google/mediapipe/tasks/core/Delegate;

.field private delegateOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetBuffer:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetFileDescriptor:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetPath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    .line 102
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    .line 103
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .registers 10

    .line 139
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 145
    new-instance v2, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    iget-object v7, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/Delegate;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$1;)V

    return-object v2

    .line 143
    :cond_2e
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

.method public setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .registers 2

    if-eqz p1, :cond_5

    .line 128
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    return-object p0

    .line 126
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null delegate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDelegateOptions(Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .registers 2

    .line 133
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetBuffer(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .registers 2

    .line 120
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetFileDescriptor(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .registers 2

    .line 115
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .registers 2

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    return-object p0
.end method
