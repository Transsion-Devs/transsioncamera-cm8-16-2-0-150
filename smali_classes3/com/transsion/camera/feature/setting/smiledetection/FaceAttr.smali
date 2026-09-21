.class public Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private age:I

.field private attributeTime:J

.field private beauty:I

.field private emotion:I

.field private hasBeard:Z

.field private hasEyeGlass:Z

.field private hasMask:Z

.field private hasSunGlass:Z

.field private isEyeOpen:Z

.field private isMouthOpen:Z

.field private isSmile:Z

.field private lastUpdateTime:J

.field private male:I

.field private queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue<",
            "Lcom/stmobile/facebasejni/common/FaceAttrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private race:I

.field private sexScore:F

.field private skin:I

.field private skinLuma:I

.field private smileScore:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->sexScore:F

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    return-void
.end method

.method private updateAge()V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->age:I

    int-to-float v0, v0

    .line 64
    iget v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    float-to-int v1, v0

    .line 65
    iput v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    :cond_13
    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    return-void
.end method

.method private updateAttr()V
    .registers 3

    .line 45
    const-string v0, "attribute"

    const-string/jumbo v1, "updateAttr"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->updateSex()V

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->updateAge()V

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->updateBeauty()V

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->updateOther()V

    return-void
.end method

.method private updateBeauty()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 73
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v2, v2, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->attractive:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->size()I

    move-result v0

    div-int/2addr v1, v0

    int-to-float v0, v1

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->beauty:I

    return-void
.end method

.method private updateOther()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasEyeGlass:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasEyeGlass:Z

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasSunGlass:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasSunGlass:Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->isSmile:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isSmile:Z

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->smileScore:F

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->smileScore:F

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasMask:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasMask:Z

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->race:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->race:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "race:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->race:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "race"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->isEyeOpen:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isEyeOpen:Z

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->isMouthOpen:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isMouthOpen:Z

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget-boolean v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->hasBeard:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasBeard:Z

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->emotion:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->emotion:I

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->skinQuality:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->skin:I

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->skinLuma:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->skinLuma:I

    return-void
.end method

.method private updateSex()V
    .registers 4

    const/4 v0, 0x0

    .line 53
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 54
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v1, v1, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->sex:I

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v2, v2, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->sex:I

    if-eq v1, v2, :cond_20

    return-void

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->sexScore:F

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->sexScore:F

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;

    iget v0, v0, Lcom/stmobile/facebasejni/common/FaceAttrInfo;->sex:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->male:I

    return-void
.end method


# virtual methods
.method public addAttr(Lcom/stmobile/facebasejni/common/FaceAttrInfo;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->queue:Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/smiledetection/LimitQueue;->offer(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->lastUpdateTime:J

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->updateAttr()V

    return-void
.end method

.method public getAge()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->age:I

    return p0
.end method

.method public getAttributeTime()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->attributeTime:J

    return-wide v0
.end method

.method public getBeauty()I
    .registers 1

    .line 108
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->beauty:I

    return p0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->lastUpdateTime:J

    return-wide v0
.end method

.method public getSexScore()F
    .registers 1

    .line 96
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->sexScore:F

    return p0
.end method

.method public getSkin()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->skin:I

    return p0
.end method

.method public getSkinLuma()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->skinLuma:I

    return p0
.end method

.method public getSmileScore()F
    .registers 1

    .line 123
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->smileScore:F

    return p0
.end method

.method public isEyeOpen()Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isEyeOpen:Z

    return p0
.end method

.method public isHasBeard()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasBeard:Z

    return p0
.end method

.method public isHasEyeGlass()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasEyeGlass:Z

    return p0
.end method

.method public isHasMask()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasMask:Z

    return p0
.end method

.method public isHasSunGlass()Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->hasSunGlass:Z

    return p0
.end method

.method public isMale()Z
    .registers 2

    .line 104
    iget p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->male:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isMouthOpen()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isMouthOpen:Z

    return p0
.end method

.method public isSmile()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->isSmile:Z

    return p0
.end method

.method public setAttributeTime(J)V
    .registers 3

    .line 190
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/FaceAttr;->attributeTime:J

    return-void
.end method
