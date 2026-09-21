.class public final Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/source/resource/ResourcePrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/CutSameSource;->prepareSource(Lcom/cutsame/solution/source/PrepareSourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/source/PrepareSourceListener;

.field public final synthetic b:Lcom/cutsame/solution/source/CutSameSource;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/source/PrepareSourceListener;Lcom/cutsame/solution/source/CutSameSource;)V
    .registers 3

    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->a:Lcom/cutsame/solution/source/PrepareSourceListener;

    iput-object p2, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->b:Lcom/cutsame/solution/source/CutSameSource;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    const-string v0, "CUT_PREPARE"

    const-string v1, "prepareSource prepare onError"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->a:Lcom/cutsame/solution/source/PrepareSourceListener;

    invoke-interface {p0, p1, p2}, Lcom/cutsame/solution/source/PrepareSourceListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(F)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->a:Lcom/cutsame/solution/source/PrepareSourceListener;

    invoke-interface {p0, p1}, Lcom/cutsame/solution/source/PrepareSourceListener;->onProgress(F)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 6

    const-string v0, "mediaItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textItemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CUT_PREPARE"

    const-string v1, "prepareSource prepare onSuccess"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->b:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/CutSameSource;->getOriModel$CutSameIF_release()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 3
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->b:Lcom/cutsame/solution/source/CutSameSource;

    invoke-static {v0, p1}, Lcom/cutsame/solution/source/CutSameSource;->access$setOriMediaItemList$p(Lcom/cutsame/solution/source/CutSameSource;Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->b:Lcom/cutsame/solution/source/CutSameSource;

    invoke-static {v0, p2}, Lcom/cutsame/solution/source/CutSameSource;->access$setOriTextItemList$p(Lcom/cutsame/solution/source/CutSameSource;Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->b:Lcom/cutsame/solution/source/CutSameSource;

    invoke-static {v0, p3}, Lcom/cutsame/solution/source/CutSameSource;->access$setOriModel$p(Lcom/cutsame/solution/source/CutSameSource;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 12
    :cond_2d
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;->a:Lcom/cutsame/solution/source/PrepareSourceListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/cutsame/solution/source/PrepareSourceListener;->onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method
