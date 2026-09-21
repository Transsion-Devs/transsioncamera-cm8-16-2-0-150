.class public Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;
.super Lcom/meicam/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;
    }
.end annotation


# instance fields
.field public faceCount:I

.field public faces:[Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/meicam/sdk/NvsArbitraryData;-><init>()V

    return-void
.end method

.method public static createFaceFeaturePoint(I)Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;
    .registers 5

    .line 44
    new-instance v0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;

    invoke-direct {v0}, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;-><init>()V

    .line 45
    iput p0, v0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;->faceCount:I

    .line 46
    new-array v1, p0, [Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;

    iput-object v1, v0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;->faces:[Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p0, :cond_1a

    .line 48
    iget-object v2, v0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;->faces:[Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;

    new-instance v3, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;

    invoke-direct {v3}, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method


# virtual methods
.method getFaceFeatureFromIndex(I)Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;
    .registers 3

    if-ltz p1, :cond_c

    .line 37
    iget v0, p0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;->faceCount:I

    if-le p1, v0, :cond_7

    goto :goto_c

    .line 39
    :cond_7
    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsFaceFeaturePoint;->faces:[Lcom/meicam/effect/sdk/NvsFaceFeaturePoint$FaceInfo;

    aget-object p0, p0, p1

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method
