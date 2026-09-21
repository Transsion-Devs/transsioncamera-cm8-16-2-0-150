.class Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PcmData"
.end annotation


# instance fields
.field public data:[B

.field public flag:I

.field public pts:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$1;)V
    .registers 2

    .line 453
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;-><init>()V

    return-void
.end method
