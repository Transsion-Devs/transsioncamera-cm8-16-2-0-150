.class public abstract Lcom/cutsame/solution/source/resource/TemplateResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/ss/android/ugc/cut_ui/CutSource;

.field public final c:Lcom/cutsame/solution/core/NetworkFetcherAdapter;

.field public final d:Lcom/cutsame/solution/source/effect/EffectFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Lcom/cutsame/solution/source/SourceInfo;->isOfflineModel()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {p2}, Lcom/cutsame/solution/source/SourceInfo;->hasUnzip()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p2}, Lcom/cutsame/solution/source/SourceInfo;->getUnzipPath()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v0, p2, v1}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    goto :goto_43

    .line 10
    :cond_2c
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p2}, Lcom/cutsame/solution/source/SourceInfo;->getZipPath()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v0, p2, v1}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    goto :goto_43

    .line 13
    :cond_38
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p2}, Lcom/cutsame/solution/source/SourceInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->URL:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-direct {v0, p2, v1}, Lcom/ss/android/ugc/cut_ui/CutSource;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/cut_ui/CutSourceType;)V

    .line 14
    :goto_43
    iput-object v0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->b:Lcom/ss/android/ugc/cut_ui/CutSource;

    .line 23
    new-instance p2, Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    new-instance v0, Lcom/ss/android/ugc/cut_downloader/Downloader;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/ss/android/ugc/cut_downloader/Downloader;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0}, Lcom/cutsame/solution/core/NetworkFetcherAdapter;-><init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V

    iput-object p2, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->c:Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    .line 24
    new-instance p2, Lcom/cutsame/solution/source/effect/EffectFetcher;

    .line 25
    sget-object v0, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->INSTANCE:Lcom/cutsame/solution/source/effect/EffectManagerSingleton;

    .line 27
    invoke-virtual {v0, p1, p3}, Lcom/cutsame/solution/source/effect/EffectManagerSingleton;->getEffectManager(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;)Lcom/ss/ugc/effectplatform/EffectPlatform;

    move-result-object p1

    .line 28
    invoke-direct {p2, p1, p3}, Lcom/cutsame/solution/source/effect/EffectFetcher;-><init>(Lcom/ss/ugc/effectplatform/EffectPlatform;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    iput-object p2, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->d:Lcom/cutsame/solution/source/effect/EffectFetcher;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->c:Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    iget-object p0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->b:Lcom/ss/android/ugc/cut_ui/CutSource;

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/CutSource;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cutsame/solution/core/NetworkFetcherAdapter;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getCutSource()Lcom/ss/android/ugc/cut_ui/CutSource;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->b:Lcom/ss/android/ugc/cut_ui/CutSource;

    return-object p0
.end method

.method public final getEffectFetcher$CutSameIF_release()Lcom/cutsame/solution/source/effect/EffectFetcher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->d:Lcom/cutsame/solution/source/effect/EffectFetcher;

    return-object p0
.end method

.method public final getNetworkFetcherAdapter$CutSameIF_release()Lcom/cutsame/solution/core/NetworkFetcherAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/resource/TemplateResource;->c:Lcom/cutsame/solution/core/NetworkFetcherAdapter;

    return-object p0
.end method

.method public abstract initMaterial(Ljava/util/List;Ljava/util/List;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
.end method

.method public abstract prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V
.end method

.method public abstract release()V
.end method
