.class public Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo$BefCarRect;
.super Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefCarRect"
.end annotation


# instance fields
.field private orientation:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;-><init>(IIII)V

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo$BefCarRect;->orientation:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefRect;-><init>(IIII)V

    .line 63
    iput p5, p0, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo$BefCarRect;->orientation:I

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo$BefCarRect;->orientation:I

    return p0
.end method

.method public setOrientation(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo$BefCarRect;->orientation:I

    return-void
.end method
