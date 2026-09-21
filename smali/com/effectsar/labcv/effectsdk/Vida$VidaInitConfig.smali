.class public Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/Vida;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VidaInitConfig"
.end annotation


# instance fields
.field backendType:I

.field kernelBinPath:Ljava/lang/String;

.field modelPath:Ljava/lang/String;

.field numThread:I

.field vidaType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->modelPath:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->kernelBinPath:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->backendType:I

    .line 69
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->vidaType:I

    .line 70
    iput p5, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->numThread:I

    return-void
.end method


# virtual methods
.method public getBackendType()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->backendType:I

    return p0
.end method

.method public getKernelBinPath()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->kernelBinPath:Ljava/lang/String;

    return-object p0
.end method

.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->modelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getNumThread()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->numThread:I

    return p0
.end method

.method public getVidaType()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->vidaType:I

    return p0
.end method

.method public setBackendType(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->backendType:I

    return-void
.end method

.method public setKernelBinPath(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->kernelBinPath:Ljava/lang/String;

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public setNumThread(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->numThread:I

    return-void
.end method

.method public setVidaType(I)V
    .registers 2

    .line 102
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/Vida$VidaInitConfig;->vidaType:I

    return-void
.end method
