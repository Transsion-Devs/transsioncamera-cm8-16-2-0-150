.class public Lcom/bef/byteeffect/view/BEFView$Color;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/view/BEFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private g:F

.field private r:F


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/bef/byteeffect/view/BEFView$Color;->setColor(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/view/BEFView$Color;->setColor(FFFF)V

    return-void
.end method


# virtual methods
.method public alpha()F
    .registers 1
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 62
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Color;->a:F

    return p0
.end method

.method public blue()F
    .registers 1
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 60
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Color;->b:F

    return p0
.end method

.method public green()F
    .registers 1
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 58
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Color;->g:F

    return p0
.end method

.method public red()F
    .registers 1
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 56
    iget p0, p0, Lcom/bef/byteeffect/view/BEFView$Color;->r:F

    return p0
.end method

.method public setColor(FFFF)V
    .registers 5
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 49
    iput p1, p0, Lcom/bef/byteeffect/view/BEFView$Color;->r:F

    .line 50
    iput p2, p0, Lcom/bef/byteeffect/view/BEFView$Color;->g:F

    .line 51
    iput p3, p0, Lcom/bef/byteeffect/view/BEFView$Color;->b:F

    .line 52
    iput p4, p0, Lcom/bef/byteeffect/view/BEFView$Color;->a:F

    return-void
.end method
