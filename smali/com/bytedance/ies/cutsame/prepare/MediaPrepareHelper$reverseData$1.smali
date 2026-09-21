.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

.field final synthetic $transList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->$transList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 4

    .line 95
    const-string v0, "startReverse success? "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPrepareHelper"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 96
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->$transList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onSucceed(Ljava/util/List;)V

    return-void

    .line 97
    :cond_19
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    new-instance p1, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;

    const-string v0, "reverse video failed"

    invoke-direct {p1, v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onFailed(Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;)V

    return-void
.end method
