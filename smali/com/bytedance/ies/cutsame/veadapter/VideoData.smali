.class public Lcom/bytedance/ies/cutsame/veadapter/VideoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aTrimIn:[I

.field public aTrimOut:[I

.field public audioFileInfos:[Ljava/lang/String;

.field public audioFilePaths:[Ljava/lang/String;

.field public segmentIds:[Ljava/lang/String;

.field public speed:[F

.field public vTrimIn:[I

.field public vTrimOut:[I

.field public veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

.field public veTransitionFilterParams:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

.field public videoFileInfos:[Ljava/lang/String;

.field public videoFilePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[F)V
    .registers 8

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->segmentIds:[Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFilePaths:[Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimIn:[I

    .line 39
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimOut:[I

    .line 40
    iput-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    .line 41
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veTransitionFilterParams:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    .line 42
    iput-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->speed:[F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoData{segmentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->segmentIds:[Ljava/lang/String;

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoFilePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFilePaths:[Ljava/lang/String;

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vTrimIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimIn:[I

    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vTrimOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimOut:[I

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", veCanvasFilterParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", veTransitionFilterParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veTransitionFilterParams:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->speed:[F

    .line 54
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
