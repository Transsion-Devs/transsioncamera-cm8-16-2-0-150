.class public Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgorithmErrorListener;,
        Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgorithmProcessListener;,
        Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgoResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraBase;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public destroy()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getResult()Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmResult;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public init()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public native nativeAddCameraAlgorithm(JLjava/lang/Object;)I
.end method

.method public native nativeAlgorithmDestroy(J)I
.end method

.method public native nativeAlgorithmGetResult(J)Ljava/lang/Object;
.end method

.method public nativeCallback_onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public nativeCallback_onProcess(FZ)V
    .registers 3

    return-void
.end method

.method public native nativeInit()J
.end method

.method public native nativeProcessAlgorithm(JLjava/lang/Object;)Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgoResult;
.end method

.method public native nativeRemoveCameraAlgorithm(JI)I
.end method

.method public native nativeUpdateCameraAlgorithmParam(JLjava/lang/Object;)I
.end method

.method public processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeCameraAlgorithm(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setErrorListener(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgorithmErrorListener;)V
    .registers 2

    return-void
.end method

.method public setProcessListener(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmInterface$TECameraAlgorithmProcessListener;)V
    .registers 2

    return-void
.end method

.method public updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
