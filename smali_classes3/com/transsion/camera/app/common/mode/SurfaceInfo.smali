.class public final Lcom/transsion/camera/app/common/mode/SurfaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private final mFormat:I

.field private final mHeight:I

.field private mSensorId:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method constructor <init>(IIILandroid/view/Surface;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;I)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/Surface;I)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;I)V

    return-void
.end method

.method private constructor <init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;I)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    .line 43
    iput p2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    .line 44
    iput p3, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    .line 45
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    .line 46
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 47
    iput p6, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSensorId:I

    return-void
.end method

.method constructor <init>(IIILcom/transsion/camera/adapter/IBGSurface;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 84
    :cond_8
    instance-of v2, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-eqz v2, :cond_33

    .line 85
    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 86
    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    iget-object v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    iget-object v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-ne v2, v3, :cond_33

    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSensorId:I

    iget p1, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSensorId:I

    if-ne p0, p1, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method getSensorId()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSensorId:I

    return p0
.end method

.method getSurface()Landroid/view/Surface;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method hasSurface()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 68
    iget v0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_24
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceInfo | mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBGSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSensorId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
