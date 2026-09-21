.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CpuOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;
    .registers 1

    .line 124
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;-><init>()V

    return-object v0
.end method
