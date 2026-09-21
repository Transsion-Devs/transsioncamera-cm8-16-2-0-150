.class public Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/TaintSceneDetect;
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    .line 73
    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    .line 75
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    .line 76
    iput p5, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return-void
.end method


# virtual methods
.method public getBackendType()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    return p0
.end method

.method public getDetectFrequency()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    return p0
.end method

.method public getKernelBinPath()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    return-object p0
.end method

.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getNumThread()I
    .registers 1

    .line 112
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return p0
.end method

.method public setBackendType(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->backendType:I

    return-void
.end method

.method public setDetectFrequency(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->detectFrequency:I

    return-void
.end method

.method public setKernelBinPath(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->kernelBinPath:Ljava/lang/String;

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public setNumThread(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/TaintSceneDetect$TaintDetectParam;->numThread:I

    return-void
.end method
