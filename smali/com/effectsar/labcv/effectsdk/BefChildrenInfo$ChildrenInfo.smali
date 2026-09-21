.class public Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenInfo"
.end annotation


# instance fields
.field ID:I

.field age:F

.field bbox_type:I

.field boy_prob:F

.field rect:Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;

.field score:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()F
    .registers 1

    .line 117
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->age:F

    return p0
.end method

.method public getBbox_type()I
    .registers 1

    .line 125
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->bbox_type:I

    return p0
.end method

.method public getBoy_prob()F
    .registers 1

    .line 114
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->boy_prob:F

    return p0
.end method

.method public getID()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->ID:I

    return p0
.end method

.method public getRect()Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->rect:Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;

    return-object p0
.end method

.method public getScore()F
    .registers 1

    .line 121
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->score:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildrenInfo{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->rect:Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->age:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", boy_prob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->boy_prob:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bbox_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->bbox_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;->ID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
