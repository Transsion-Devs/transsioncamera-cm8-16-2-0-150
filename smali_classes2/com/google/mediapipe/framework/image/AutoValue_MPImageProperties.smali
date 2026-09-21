.class final Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;
.super Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;
.source "SourceFile"


# instance fields
.field private volatile transient hashCode:I

.field private volatile transient hashCode$Memoized:Z


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 33
    :cond_4
    instance-of v1, p1, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_19

    invoke-super {p0, p1}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    return v0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    if-nez v0, :cond_19

    .line 18
    monitor-enter p0

    .line 19
    :try_start_5
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    if-nez v0, :cond_15

    .line 20
    invoke-super {p0}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode$Memoized:Z

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 23
    :cond_15
    :goto_15
    monitor-exit p0

    goto :goto_19

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_13

    throw v0

    .line 25
    :cond_19
    :goto_19
    iget p0, p0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;->hashCode:I

    return p0
.end method
