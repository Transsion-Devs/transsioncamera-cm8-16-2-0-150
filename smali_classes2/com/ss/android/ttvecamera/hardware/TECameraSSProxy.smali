.class public Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;
.super Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public sizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->sizeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCamera(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .registers 4

    .line 20
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    .line 21
    iget-object p0, p0, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->sizeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getRightCam()Ljava/lang/String;
    .registers 7

    .line 25
    iget-object v0, p0, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->sizeMap:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    iget-object v4, p0, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->sizeMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v5, v1, v4

    if-gez v5, :cond_11

    move-object v2, v3

    move v1, v4

    goto :goto_11

    :cond_30
    return-object v2
.end method

.method public selectCamera(Landroid/hardware/camera2/CameraManager;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 42
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_2a

    aget-object v4, p3, v2

    .line 43
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 44
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1d

    move v6, v1

    goto :goto_1e

    :cond_1d
    move v6, v7

    :goto_1e
    if-ne v6, p2, :cond_27

    if-ne v6, v7, :cond_27

    .line 48
    invoke-virtual {p0, v5, v4}, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->addCamera(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2a
    const/4 p1, 0x2

    if-lt v3, p1, :cond_32

    .line 56
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraSSProxy;->getRightCam()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method
