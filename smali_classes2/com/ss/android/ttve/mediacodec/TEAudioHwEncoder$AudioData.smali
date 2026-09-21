.class Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioData"
.end annotation


# instance fields
.field public data:[B

.field public flag:I

.field public pts:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$1;)V
    .registers 2

    .line 557
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;-><init>()V

    return-void
.end method
