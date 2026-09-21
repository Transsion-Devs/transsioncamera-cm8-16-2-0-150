.class public Lcom/bef/byteeffect/algorithm/RectDocDetResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation


# static fields
.field public static final DETECT_FAIL:I = -0x1

.field public static final DETECT_SUCCESS:I


# instance fields
.field private rectDocDetRatio:Lcom/bef/byteeffect/algorithm/RectDocDetRatio;

.field private rectDocDetTargetArea:Lcom/bef/byteeffect/algorithm/RectDocDetTargetArea;

.field private resultStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->resultStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/bef/byteeffect/algorithm/RectDocDetTargetArea;Lcom/bef/byteeffect/algorithm/RectDocDetRatio;)V
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->resultStatus:I

    .line 22
    iput-object p1, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->rectDocDetTargetArea:Lcom/bef/byteeffect/algorithm/RectDocDetTargetArea;

    .line 23
    iput-object p2, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->rectDocDetRatio:Lcom/bef/byteeffect/algorithm/RectDocDetRatio;

    return-void
.end method


# virtual methods
.method public getRectDocDetRatio()Lcom/bef/byteeffect/algorithm/RectDocDetRatio;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->rectDocDetRatio:Lcom/bef/byteeffect/algorithm/RectDocDetRatio;

    return-object p0
.end method

.method public getRectDocDetTargetArea()Lcom/bef/byteeffect/algorithm/RectDocDetTargetArea;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->rectDocDetTargetArea:Lcom/bef/byteeffect/algorithm/RectDocDetTargetArea;

    return-object p0
.end method

.method public getResultStatus()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/bef/byteeffect/algorithm/RectDocDetResult;->resultStatus:I

    return p0
.end method
