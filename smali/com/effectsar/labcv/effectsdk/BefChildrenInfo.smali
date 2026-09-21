.class public Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;,
        Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$FaceRect;
    }
.end annotation


# instance fields
.field private childrenInfos:[Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildrenInfos()[Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;->childrenInfos:[Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefChildrenInfo{childrenInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;->childrenInfos:[Lcom/effectsar/labcv/effectsdk/BefChildrenInfo$ChildrenInfo;

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
