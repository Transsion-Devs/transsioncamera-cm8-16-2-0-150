.class public final Lcom/cutsame/solution/source/resource/NLETemplateResource;
.super Lcom/cutsame/solution/source/resource/TemplateResource;
.source "SourceFile"


# instance fields
.field public final e:Lcom/cutsame/solution/source/SourceInfo;

.field public f:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

.field public g:Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cutsame/solution/source/resource/TemplateResource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    .line 2
    iput-object p2, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    .line 9
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->a()V

    return-void
.end method

.method public static final synthetic access$createTemplateSource(Lcom/cutsame/solution/source/resource/NLETemplateResource;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->a()V

    return-void
.end method

.method public static final synthetic access$setNLETemplateModel$p(Lcom/cutsame/solution/source/resource/NLETemplateResource;Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->g:Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createTemplateSource"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getCutSource()Lcom/ss/android/ugc/cut_ui/CutSource;

    move-result-object v2

    iget-object v3, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v3}, Lcom/cutsame/solution/source/SourceInfo;->getMd5()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v4}, Lcom/cutsame/solution/source/SourceInfo;->getCacheConfig()Lcom/cutsame/solution/source/CacheConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cutsame/solution/source/CacheConfig;->getEnableEffectPathCache()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->setTemplateSource$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)V

    .line 3
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getNetworkFetcherAdapter$CutSameIF_release()Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->setNetworkFileFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;)V

    .line 4
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->e:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/SourceInfo;->isOfflineModel()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5
    new-instance v0, Lcom/cutsame/solution/source/effect/OfflineEffectFetcher;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getCutSource()Lcom/ss/android/ugc/cut_ui/CutSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/source/effect/OfflineEffectFetcher;-><init>(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/CutSource;)V

    .line 6
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V

    return-void

    .line 8
    :cond_51
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getEffectFetcher$CutSameIF_release()Lcom/cutsame/solution/source/effect/EffectFetcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->setEffectResourceFetcher(Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;)V

    return-void
.end method

.method public final getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->f:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "templateSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initMaterial(Ljava/util/List;Ljava/util/List;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 5

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    goto :goto_f

    .line 1
    :cond_8
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->insertMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Landroid/content/Context;Ljava/util/List;)V

    :goto_f
    if-nez p2, :cond_12

    goto :goto_15

    .line 4
    :cond_12
    invoke-static {p3, p2}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->insertTextItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/util/List;)V

    .line 8
    :goto_15
    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCover()Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    move-result-object p1

    if-nez p1, :cond_1c

    return-object p3

    .line 9
    :cond_1c
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    invoke-direct {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>()V

    .line 10
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->g:Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;

    if-nez p0, :cond_26

    goto :goto_41

    :cond_26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCover()Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_41

    :cond_2d
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->getCoverMaterial()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object p0

    if-nez p0, :cond_34

    goto :goto_41

    :cond_34
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getImage()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object p0

    if-nez p0, :cond_3b

    goto :goto_41

    :cond_3b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_43

    :goto_41
    const-string p0, ""

    :cond_43
    invoke-virtual {p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->setSnapshot(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    return-object p3
.end method

.method public prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/cutsame/solution/source/resource/TemplateResourceKt;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nle prepareSource"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object v0

    new-instance v1, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;

    invoke-direct {v1, p0, p1}, Lcom/cutsame/solution/source/resource/NLETemplateResource$prepareSource$1;-><init>(Lcom/cutsame/solution/source/resource/NLETemplateResource;Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->addNLEPrepareListener(Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareAsync()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;->getTemplateSource$CutSameIF_release()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->releaseObject()V

    return-void
.end method

.method public final setTemplateSource$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/resource/NLETemplateResource;->f:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    return-void
.end method
