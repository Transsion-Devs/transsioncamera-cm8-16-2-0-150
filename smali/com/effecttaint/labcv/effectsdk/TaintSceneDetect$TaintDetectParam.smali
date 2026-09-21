.class public Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaintDetectParam"
.end annotation


# instance fields
.field backendType:I

.field detectFrequency:I

.field kernelBinPath:Ljava/lang/String;

.field modelPath:Ljava/lang/String;

.field numThread:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    .line 74
    iput-object p2, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    .line 77
    iput p5, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return-void
.end method


# virtual methods
.method public getBackendType()I
    .registers 1

    .line 105
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    return p0
.end method

.method public getDetectFrequency()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    return p0
.end method

.method public getKernelBinPath()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    return-object p0
.end method

.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getNumThread()I
    .registers 1

    .line 113
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return p0
.end method

.method public setBackendType(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    return-void
.end method

.method public setDetectFrequency(I)V
    .registers 2

    .line 85
    iput p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    return-void
.end method

.method public setKernelBinPath(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public setNumThread(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/effecttaint/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return-void
.end method
