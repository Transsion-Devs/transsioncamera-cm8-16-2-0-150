.class public final Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/resource/NLETemplateResource;->prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

.field public final synthetic b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/source/resource/NLETemplateResource;Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
    .registers 3

    iput-object p1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    iput-object p2, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nle prepare onError  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", need createTemplateSource for second prepare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->releaseObject()V

    .line 6
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    # invokes: Lcom/cutsame/solution/source/resource/NLETemplateResource;->a()V
    invoke-static {v0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->access$createTemplateSource(Lcom/cutsame/solution/source/resource/NLETemplateResource;)V

    .line 8
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    invoke-interface {v0, p1, p2}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onError(ILjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    invoke-virtual {p1}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V

    return-void
.end method

.method public onPreSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "nle prepare onPreSuccess"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "nle prepare onProgress: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    invoke-interface {p0, p1}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onProgress(F)V

    return-void
.end method

.method public onSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nle prepare success model: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    invoke-static {v0, p1}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->access$setNLETemplateModel$p(Lcom/cutsame/solution/source/resource/NLETemplateResource;Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V

    if-nez p1, :cond_15

    goto :goto_28

    .line 3
    :cond_15
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->b:Lcom/cutsame/solution/source/resource/ResourcePrepareListener;

    iget-object v1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    .line 4
    invoke-virtual {v1}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->createMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->createTextItems(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/cutsame/solution/source/resource/ResourcePrepareListener;->onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 6
    :goto_28
    iget-object p1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;->a:Lcom/cutsame/solution/source/resource/NLETemplateResource;

    invoke-virtual {p1}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->removePrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V

    return-void
.end method
