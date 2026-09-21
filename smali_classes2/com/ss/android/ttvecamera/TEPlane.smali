.class public Lcom/ss/android/ttvecamera/TEPlane;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field planes:[Landroid/media/Image$Plane;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Landroid/media/Image$Plane;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TEPlane;->planes:[Landroid/media/Image$Plane;

    return-void
.end method


# virtual methods
.method public getPlaneBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEPlane;->planes:[Landroid/media/Image$Plane;

    if-eqz p0, :cond_e

    array-length v0, p0

    if-le v0, p1, :cond_e

    .line 43
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TEPlane;->planes:[Landroid/media/Image$Plane;

    return-object p0
.end method
