.class Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;


# direct methods
.method public constructor <init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    return-void
.end method


# virtual methods
.method public notifyError(ILjava/lang/String;)V
    .registers 3

    .line 36
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void
.end method

.method public notifySuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifySuccess(Ljava/lang/String;)V

    return-void
.end method
