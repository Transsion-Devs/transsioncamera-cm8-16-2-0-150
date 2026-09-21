.class public Lcom/ss/android/medialib/PlanFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlanFrame"


# instance fields
.field frame:Lcom/ss/android/medialib/camera/ImageFrame;


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/camera/ImageFrame;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ss/android/medialib/PlanFrame;->frame:Lcom/ss/android/medialib/camera/ImageFrame;

    return-void
.end method


# virtual methods
.method public convert([[I[Ljava/nio/ByteBuffer;)Z
    .registers 10

    .line 25
    iget-object v0, p0, Lcom/ss/android/medialib/PlanFrame;->frame:Lcom/ss/android/medialib/camera/ImageFrame;

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/ImageFrame;->getPlane()Lcom/ss/android/medialib/camera/Plane;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 29
    :cond_a
    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/Plane;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 33
    :cond_11
    :goto_11
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4c

    .line 34
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, p2, v1

    .line 35
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 39
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 40
    const-string v5, "PlanFrame"

    if-gtz v4, :cond_34

    .line 41
    iget-object v4, p0, Lcom/ss/android/medialib/PlanFrame;->frame:Lcom/ss/android/medialib/camera/ImageFrame;

    iget v4, v4, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 42
    const-string v6, "rowStride <= 0"

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_34
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    if-gtz v6, :cond_42

    .line 47
    const-string v6, "pixelStride <= 0"

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    move v3, v6

    .line 49
    :goto_43
    filled-new-array {v2, v4, v3}, [I

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_4c
    return v3
.end method
