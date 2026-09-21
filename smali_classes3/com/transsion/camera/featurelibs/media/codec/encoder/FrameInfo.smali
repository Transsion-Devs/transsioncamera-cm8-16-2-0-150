.class public Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mPresentationTime:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getPresentationTime()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->mPresentationTime:J

    return-wide v0
.end method

.method public setPresentationTime(J)V
    .registers 3

    .line 37
    iput-wide p1, p0, Lcom/transsion/camera/featurelibs/media/codec/encoder/FrameInfo;->mPresentationTime:J

    return-void
.end method
