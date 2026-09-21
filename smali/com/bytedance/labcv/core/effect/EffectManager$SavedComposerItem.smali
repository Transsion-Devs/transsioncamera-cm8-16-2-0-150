.class Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/core/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedComposerItem"
.end annotation


# instance fields
.field intensity:F

.field key:Ljava/lang/String;

.field node:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    .line 724
    iput-object p2, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    .line 725
    iput p3, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->intensity:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 731
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 732
    :cond_12
    check-cast p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    .line 733
    iget-object v2, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    .line 734
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
