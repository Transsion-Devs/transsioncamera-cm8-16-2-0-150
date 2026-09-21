.class public Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$TEMediaCodecType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TEMediaCodecType"
.end annotation


# static fields
.field public static final TECODEC_BYTEVC1:I = 0xae

.field public static final TECODEC_H264:I = 0x1c

.field public static final TECODEC_MPEG2:I = 0x2

.field public static final TECODEC_MPEG4:I = 0xd

.field public static final TECODEC_VP8:I = 0x8c

.field public static final TECODEC_VP9:I = 0xa8


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$TEMediaCodecType;->this$0:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
