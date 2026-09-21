.class public Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mRequestJpeg:[B

.field private final mWatermark:Ljava/lang/String;

.field private final mWatermarkDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermark:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermarkDescription:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mRequestJpeg:[B

    return-void
.end method


# virtual methods
.method public requestJpeg()[B
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mRequestJpeg:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatermarkInfo{mWatermark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWatermarkDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermarkDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestJpeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mRequestJpeg:[B

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public watermark()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public watermarkDescription()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/watermark/WatermarkInfo;->mWatermarkDescription:Ljava/lang/String;

    return-object p0
.end method
