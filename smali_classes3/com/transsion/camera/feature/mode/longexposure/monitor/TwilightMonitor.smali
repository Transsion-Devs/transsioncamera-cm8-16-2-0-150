.class public Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;,
        Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;,
        Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBrightnessDetector:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mTwilightListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 62
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;

    return-void
.end method


# virtual methods
.method public isDay()Z
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->highLight()Z

    move-result p0

    return p0
.end method

.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 86
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_12

    .line 87
    array-length p2, p1

    const/4 p3, 0x1

    if-lt p2, p3, :cond_12

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$BrightnessDetector;->detect(I)V

    :cond_12
    return-void
.end method

.method public setTwilightListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->mTwilightListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;

    return-void
.end method

.method public startMonitor()V
    .registers 2

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startMonitor"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopMonitor()V
    .registers 2

    .line 75
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopMonitor"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
