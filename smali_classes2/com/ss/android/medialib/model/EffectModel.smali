.class public Lcom/ss/android/medialib/model/EffectModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private end:I

.field private index:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/ss/android/medialib/model/EffectModel;->index:I

    .line 26
    iput p2, p0, Lcom/ss/android/medialib/model/EffectModel;->start:I

    .line 27
    iput p3, p0, Lcom/ss/android/medialib/model/EffectModel;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/ss/android/medialib/model/EffectModel;->end:I

    return p0
.end method

.method public getIndex()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/ss/android/medialib/model/EffectModel;->index:I

    return p0
.end method

.method public getStart()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/ss/android/medialib/model/EffectModel;->start:I

    return p0
.end method

.method public setEnd(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/ss/android/medialib/model/EffectModel;->end:I

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/ss/android/medialib/model/EffectModel;->index:I

    return-void
.end method

.method public setStart(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/ss/android/medialib/model/EffectModel;->start:I

    return-void
.end method
