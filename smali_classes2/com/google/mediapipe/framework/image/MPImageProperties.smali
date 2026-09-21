.class public abstract Lcom/google/mediapipe/framework/image/MPImageProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    .registers 1

    .line 53
    new-instance v0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getImageFormat()I
.end method

.method public abstract getStorageType()I
.end method

.method public abstract hashCode()I
    .annotation build Lcom/google/auto/value/extension/memoized/Memoized;
    .end annotation
.end method
