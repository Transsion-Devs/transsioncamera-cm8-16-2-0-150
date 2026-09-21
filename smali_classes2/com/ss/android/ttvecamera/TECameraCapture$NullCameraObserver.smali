.class public Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NullCameraObserver"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;
    .registers 3

    .line 780
    const-class v0, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    monitor-enter v0

    .line 781
    :try_start_3
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    if-nez v1, :cond_18

    .line 782
    const-class v1, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 783
    :try_start_a
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    invoke-direct {v2}, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;-><init>()V

    sput-object v2, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    .line 784
    monitor-exit v1

    goto :goto_18

    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    :try_start_15
    throw v2

    :catchall_16
    move-exception v1

    goto :goto_1c

    .line 786
    :cond_18
    :goto_18
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    monitor-exit v0

    return-object v1

    .line 787
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_16

    throw v1
.end method


# virtual methods
.method public onCaptureStarted(II)V
    .registers 3

    return-void
.end method

.method public onCaptureStopped(I)V
    .registers 2

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onInfo(IILjava/lang/String;)V
    .registers 4

    return-void
.end method
