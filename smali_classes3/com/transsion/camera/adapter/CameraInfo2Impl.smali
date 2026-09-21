.class Lcom/transsion/camera/adapter/CameraInfo2Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraInfo;


# instance fields
.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method


# virtual methods
.method public getFacing()I
    .registers 4

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, -0x1

    if-eqz p0, :cond_1f

    .line 25
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1f

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public getSensorOrientation()I
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 42
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_14

    .line 43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_14
    return v0
.end method
