.class public final Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/resource/LVTemplateResource;->prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

.field public final synthetic b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/source/resource/LVTemplateResource;Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
    .registers 3

    iput-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    iput-object p2, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lv prepare error message: "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->releaseObject()V

    .line 3
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    # invokes: Lcom/cutsame/solution/source/resource/LVTemplateResource;->a()V
    invoke-static {v0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->access$createTemplateSource(Lcom/cutsame/solution/source/resource/LVTemplateResource;)V

    .line 4
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    invoke-interface {v0, p1, p2}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onError(ILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {p1}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V

    return-void
.end method

.method public onPreSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 2

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "lv prepare onProgress: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    invoke-interface {p0, p1}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onProgress(F)V

    return-void
.end method

.method public onSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lv prepare success"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getVideoSegment()Ljava/util/List;

    move-result-object v0

    const-string v1, "templateSource.videoSegment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->videoSegmentToMediaItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {v1}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getTextSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "templateSource.textSegments"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->textSegmentToTextItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>()V

    .line 5
    invoke-static {v2, p1}, Lcom/bytedance/ies/nle/editor_jni/CutSameConsumer;->addCutSame(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)I

    .line 6
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {p1, v0, v2}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->compatibleLVTemplate(Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 7
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    invoke-interface {p1, v0, v1, v2}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 8
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/LVTemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/LVTemplateResource;

    invoke-virtual {p1}, Lcom/cutsame/solution/source/resource/LVTemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;)V

    return-void
.end method
