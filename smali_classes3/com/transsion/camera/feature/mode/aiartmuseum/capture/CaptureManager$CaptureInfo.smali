.class Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureInfo"
.end annotation


# instance fields
.field private final mEffect:Ljava/lang/String;

.field private final mEffectValue:Ljava/lang/String;

.field private final mWatermark:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEffect(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectValue(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffectValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffect:Ljava/lang/String;

    .line 518
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffectValue:Ljava/lang/String;

    .line 519
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mWatermark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureInfo{mEffect=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEffectValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mWatermark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;->mWatermark:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
