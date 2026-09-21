.class public abstract Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;,
        Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;,
        Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.Yarkey"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$1;-><init>(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3b

    .line 69
    new-instance p1, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;

    invoke-direct {p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;-><init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;->onFetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V

    return-void

    .line 71
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "input invalid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p2, p1, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract onFetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;",
            ">;",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;",
            ")V"
        }
    .end annotation
.end method
