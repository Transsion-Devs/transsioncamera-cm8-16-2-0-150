.class public Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDetectedFaces:[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;


# direct methods
.method public static synthetic $r8$lambda$9snfn97P9KenS863M5diCsgweco(I)[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;
    .registers 1

    .line 58
    new-array p0, p0, [Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDetectedFaces()[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;
    .registers 2

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDetectedFaces:[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 54
    :try_start_4
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDetectedFaces:[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    goto :goto_23

    :catchall_7
    move-exception p1

    goto :goto_2e

    .line 56
    :cond_9
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor$$ExternalSyntheticLambda1;-><init>()V

    .line 58
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDetectedFaces:[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    .line 61
    :goto_23
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;

    if-eqz p1, :cond_2c

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDetectedFaces:[Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;->onFaceDetect([Lcom/transsion/camera/feature/mode/aigc/info/FaceInfo;)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_7

    .line 65
    :cond_2c
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_7

    throw p1
.end method

.method public setFaceDetectCallback(Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;)V
    .registers 5

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceDetectCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mFaceDetectCallback:Lcom/transsion/camera/feature/mode/aigc/monitor/IFaceDetectCallback;

    return-void
.end method

.method public startMonitor()V
    .registers 3

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void
.end method

.method public stopMonitor()V
    .registers 3

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startMonitor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFaceDetectionListener(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V

    return-void
.end method
