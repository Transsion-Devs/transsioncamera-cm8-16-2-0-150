.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioInfo"
.end annotation


# instance fields
.field final mBuffer:Ljava/nio/ByteBuffer;

.field final mReadBytes:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;I)V
    .registers 3

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mBuffer:Ljava/nio/ByteBuffer;

    .line 448
    iput p2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioInfo;->mReadBytes:I

    return-void
.end method
