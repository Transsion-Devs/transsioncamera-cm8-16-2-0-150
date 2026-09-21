.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$1;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 20
    :cond_4
    instance-of p0, p1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 11
    const-string p0, "CpuOptions{}"

    return-object p0
.end method
