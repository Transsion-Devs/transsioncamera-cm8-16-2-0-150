.class public Lcom/google/mediapipe/framework/SurfaceOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

.field private surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;


# direct methods
.method constructor <init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/framework/Packet;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 30
    iput-object p2, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    return-void
.end method

.method private native nativeSetEglSurface(JJJ)V
.end method

.method private native nativeSetFlipY(JZ)V
.end method

.method private native nativeSetSurface(JJLjava/lang/Object;)V
.end method

.method private native nativeSetUpdatePresentationTime(JZ)V
.end method


# virtual methods
.method public setEglSurface(J)V
    .registers 11

    .line 93
    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 94
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p1

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetEglSurface(JJJ)V

    return-void
.end method

.method public setFlipY(Z)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetFlipY(JZ)V

    return-void
.end method

.method public setSurface(Ljava/lang/Object;)V
    .registers 9

    .line 78
    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 79
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetSurface(JJLjava/lang/Object;)V

    return-void
.end method

.method public setUpdatePresentationTime(Z)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/google/mediapipe/framework/SurfaceOutput;->surfaceHolderPacket:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;->nativeSetUpdatePresentationTime(JZ)V

    return-void
.end method
