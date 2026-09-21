.class public Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCaptureScene:Ljava/lang/String;

.field private mGoldWaterMarkValue:Ljava/lang/String;

.field private mProWaterMarkInfo:Ljava/lang/String;

.field private mTripod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mCaptureScene:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mTripod:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mAppName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mProWaterMarkInfo:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mGoldWaterMarkValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureScene()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mCaptureScene:Ljava/lang/String;

    return-object p0
.end method

.method public getGoldWaterMarkValue()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mGoldWaterMarkValue:Ljava/lang/String;

    return-object p0
.end method

.method public getProWaterMarkValue()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mProWaterMarkInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getTripod()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mTripod:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setCaptureScene(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mCaptureScene:Ljava/lang/String;

    return-void
.end method

.method public setGoldWaterMarkValue(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mGoldWaterMarkValue:Ljava/lang/String;

    return-void
.end method

.method public setOriginalTripod(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mTripod:Ljava/lang/String;

    return-void
.end method

.method public setProWaterMarkValue(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mProWaterMarkInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneAttribute{ mTripod=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mTripod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAppName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureScene=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mCaptureScene:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProWaterMarkValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->mProWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
