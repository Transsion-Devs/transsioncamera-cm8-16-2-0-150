.class public Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;
.super Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static isYale()Z
    .registers 2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const-string v1, "YAL-AL00"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "YAL-AL10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "YAL-TL00"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "YAL-TL10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "YAL-L21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "YAL-L41"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "YAL-AL50"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "YAL-TL50"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "YAL-L51"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "SEA-AL00"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "SEA-TL00"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "SEA-AL10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "SEA-TL10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V
    .registers 4

    .line 38
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;->isYale()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    const-string p0, "3"

    sput-object p0, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->mWideCameraID:Ljava/lang/String;

    return-void

    .line 41
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method public getWideAngleID()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;->isYale()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    const-string p0, "3"

    return-object p0

    .line 68
    :cond_9
    invoke-super {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->getWideAngleID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSupportWideAngle()Z
    .registers 2

    .line 33
    const-string v0, "0"

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;->getWideAngleID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, Lcom/ss/android/ttvecamera/hardware/TECameraHWProxy;->isYale()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportWideAngle(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 3

    .line 21
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_12

    return v0

    .line 27
    :cond_12
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    aget p0, p0, v0

    return v0
.end method
