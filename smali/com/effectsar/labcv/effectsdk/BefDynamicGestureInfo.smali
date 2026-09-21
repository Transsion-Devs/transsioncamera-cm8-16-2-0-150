.class public Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;
    }
.end annotation


# instance fields
.field private gestureInfos:[Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

.field private gestureNum:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureInfos()[Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;->gestureInfos:[Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

    return-object p0
.end method

.method public getGestureNum()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;->gestureNum:I

    return p0
.end method

.method public setGestureInfos([Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;->gestureInfos:[Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

    return-void
.end method

.method public setGestureNum(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefDynamicGestureInfo;->gestureNum:I

    return-void
.end method
