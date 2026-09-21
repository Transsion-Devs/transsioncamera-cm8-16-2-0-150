.class public Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;,
        Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeDrvBty:I

.field private mAeDrvDty:I

.field private mCurrentBv:I

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mExposureTime:J

.field private mIso:I

.field private mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

.field private mStarSearchStatus:I

.field private mTuningScene:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public getAeDrvBty()I
    .registers 1

    .line 117
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvBty:I

    return p0
.end method

.method public getAeDrvDty()I
    .registers 1

    .line 124
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvDty:I

    return p0
.end method

.method public getCurrentBv()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mCurrentBv:I

    return p0
.end method

.method public getExposureTime()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mExposureTime:J

    return-wide v0
.end method

.method public getIso()I
    .registers 1

    .line 105
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mIso:I

    return p0
.end method

.method public getStarSearchStatus()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchStatus:I

    return p0
.end method

.method public getTuningScene()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mTuningScene:I

    return p0
.end method

.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 7

    .line 67
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 68
    array-length v2, p2

    if-lt v2, v1, :cond_f

    .line 69
    aget p2, p2, v0

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mCurrentBv:I

    .line 72
    :cond_f
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAeDrvBtyResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 73
    array-length v2, p2

    if-lt v2, v1, :cond_1c

    .line 74
    aget p2, p2, v0

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvBty:I

    .line 77
    :cond_1c
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAeDrvDtyResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    if-eqz p2, :cond_29

    .line 78
    array-length v2, p2

    if-lt v2, v1, :cond_29

    .line 79
    aget p2, p2, v0

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvDty:I

    .line 82
    :cond_29
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkLongExposureResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_46

    .line 83
    array-length p2, p1

    const/4 p3, 0x3

    if-lt p2, p3, :cond_46

    .line 84
    aget p2, p1, v1

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mIso:I

    const/4 p2, 0x2

    .line 85
    aget p2, p1, p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mTuningScene:I

    .line 86
    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mExposureTime:J

    .line 89
    :cond_46
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFrameResult mIso: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mIso:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mExposureTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mExposureTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", mTuningScene: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mTuningScene:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCurrentBv: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mCurrentBv:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mAeDrvBty: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvBty:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mAeDrvDty: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mAeDrvDty:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

    return-void

    .line 52
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

    return-void
.end method

.method public startMonitor()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public stopMonitor()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public updateCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 94
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStarSearchStatus(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_16

    .line 95
    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_16

    const/4 p2, 0x0

    .line 96
    aget p1, p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchStatus:I

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchListener:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

    if-eqz p2, :cond_16

    .line 98
    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;->onStarSearched(I)V

    .line 101
    :cond_16
    sget-object p1, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCaptureResult StarSearchStatus = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->mStarSearchStatus:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
