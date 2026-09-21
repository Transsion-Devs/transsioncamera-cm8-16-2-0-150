.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetPath()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetFileDescriptor()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    .line 72
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8d

    .line 79
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 80
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_50

    .line 81
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_48

    goto :goto_50

    .line 82
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The model buffer should be either a direct ByteBuffer or a MappedByteBuffer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_50
    :goto_50
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 87
    sget-object v0, Lcom/google/mediapipe/tasks/core/BaseOptions$1;->$SwitchMap$com$google$mediapipe$tasks$core$Delegate:[I

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegate()Lcom/google/mediapipe/tasks/core/Delegate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_77

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6c

    goto :goto_81

    .line 94
    :cond_6c
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;

    goto :goto_81

    .line 90
    :cond_77
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;

    :goto_81
    if-eqz v1, :cond_84

    goto :goto_8c

    .line 98
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified Delegate type does not match the provided delegate options."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    :goto_8c
    return-object p0

    .line 75
    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please specify only one of the model asset path, the model asset file descriptor, and the model asset buffer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.end method

.method public abstract setDelegateOptions(Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.end method

.method public abstract setModelAssetBuffer(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.end method

.method public abstract setModelAssetFileDescriptor(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.end method

.method public abstract setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.end method
