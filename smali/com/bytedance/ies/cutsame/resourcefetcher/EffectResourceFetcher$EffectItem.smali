.class public Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectItem"
.end annotation


# instance fields
.field public effectId:Ljava/lang/String;

.field public emojiResourceId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public sourcePlatform:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->id:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->type:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->effectId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->path:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->emojiResourceId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->sourcePlatform:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->effectId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
