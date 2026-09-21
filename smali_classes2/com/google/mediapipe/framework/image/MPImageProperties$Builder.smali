.class abstract Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/MPImageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract build()Lcom/google/mediapipe/framework/image/MPImageProperties;
.end method

.method abstract setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
.end method

.method abstract setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
.end method
