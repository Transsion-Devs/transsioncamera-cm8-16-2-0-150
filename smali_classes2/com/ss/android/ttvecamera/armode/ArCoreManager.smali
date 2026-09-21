.class public Lcom/ss/android/ttvecamera/armode/ArCoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/ttvecamera/armode/ArCoreManager;
    .registers 1

    .line 19
    # getter for: Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;->INSTANCE:Lcom/ss/android/ttvecamera/armode/ArCoreManager;
    invoke-static {}, Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;->access$000()Lcom/ss/android/ttvecamera/armode/ArCoreManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDevicesStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraSettings;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public registerEventHandler(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method
