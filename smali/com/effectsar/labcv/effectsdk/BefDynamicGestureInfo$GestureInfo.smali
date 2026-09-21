.class public Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureInfo"
.end annotation


# instance fields
.field private actionScore:F

.field private actionType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionType:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionScore:F

    return-void
.end method


# virtual methods
.method public getActionScore()F
    .registers 1

    .line 44
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionScore:F

    return p0
.end method

.method public getActionType()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureInfo{actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;->actionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
