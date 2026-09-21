.class public final Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/ck/highlight/config/HLSDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private filterWithDuration:Z

.field private frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

.field private logLevel:I

.field private minRequireDockerSize:I

.field private resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

.field private sleepTime:J

.field private templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

.field public templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

.field public timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder;-><init>()V

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    .line 34
    new-instance v0, Lcom/volcengine/ck/highlight/impl/DefaultFrameExtractor;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/impl/DefaultFrameExtractor;-><init>()V

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    .line 35
    new-instance v0, Lcom/volcengine/ck/highlight/impl/DefaultTemplateFinder;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/impl/DefaultTemplateFinder;-><init>()V

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    const/4 v0, 0x4

    .line 38
    iput v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->logLevel:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->filterWithDuration:Z

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->minRequireDockerSize:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/volcengine/ck/highlight/config/HLSDKConfig;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    if-nez v0, :cond_e

    .line 90
    new-instance v0, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    invoke-direct {v0, v1}, Lcom/volcengine/ck/highlight/impl/DefaultHLTimeExtractor;-><init>(Lcom/volcengine/ck/highlight/api/IFrameExtractor;)V

    invoke-virtual {p0, v0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setTimeExtractor$ck_highlight_release(Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;)V

    .line 93
    :cond_e
    iget-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    if-eqz v0, :cond_18

    .line 97
    new-instance v0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    invoke-direct {v0, p0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;-><init>(Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;)V

    return-object v0

    .line 94
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SDK initialization needs to inject templateFetcher"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filterWithDuration(Z)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->filterWithDuration:Z

    return-object p0
.end method

.method public final getFilterWithDuration$ck_highlight_release()Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->filterWithDuration:Z

    return p0
.end method

.method public final getFrameExtractor$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IFrameExtractor;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    return-object p0
.end method

.method public final getLogLevel$ck_highlight_release()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->logLevel:I

    return p0
.end method

.method public final getMinRequireDockerSize$ck_highlight_release()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->minRequireDockerSize:I

    return p0
.end method

.method public final getResourceFinder$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    return-object p0
.end method

.method public final getSleepTime$ck_highlight_release()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->sleepTime:J

    return-wide v0
.end method

.method public final getTemplateFinder$ck_highlight_release()Lcom/volcengine/ck/highlight/api/ITemplateFinder;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    return-object p0
.end method

.method public final getTemplateProvider$ck_highlight_release()Lcom/volcengine/ck/highlight/api/ITemplateProvider;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "templateProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTimeExtractor$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "timeExtractor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final logLevel(I)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 2

    .line 69
    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->logLevel:I

    return-object p0
.end method

.method public final saveSleepTime(J)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->sleepTime:J

    return-object p0
.end method

.method public final setFilterWithDuration$ck_highlight_release(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->filterWithDuration:Z

    return-void
.end method

.method public final setFrameExtractor(Lcom/volcengine/ck/highlight/api/IFrameExtractor;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    return-object p0
.end method

.method public final setFrameExtractor$ck_highlight_release(Lcom/volcengine/ck/highlight/api/IFrameExtractor;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    return-void
.end method

.method public final setLogLevel$ck_highlight_release(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->logLevel:I

    return-void
.end method

.method public final setMinRequireDockerSize(I)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 2

    .line 74
    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->minRequireDockerSize:I

    return-object p0
.end method

.method public final setMinRequireDockerSize$ck_highlight_release(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->minRequireDockerSize:I

    return-void
.end method

.method public final setResourceFinder(Lcom/volcengine/ck/highlight/api/IHLResourceFinder;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    const-string v0, "finder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    return-object p0
.end method

.method public final setResourceFinder$ck_highlight_release(Lcom/volcengine/ck/highlight/api/IHLResourceFinder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    return-void
.end method

.method public final setSleepTime$ck_highlight_release(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->sleepTime:J

    return-void
.end method

.method public final setTemplateFinder(Lcom/volcengine/ck/highlight/api/ITemplateFinder;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    const-string v0, "finder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    return-object p0
.end method

.method public final setTemplateFinder$ck_highlight_release(Lcom/volcengine/ck/highlight/api/ITemplateFinder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    return-void
.end method

.method public final setTemplateProvider(Lcom/volcengine/ck/highlight/api/ITemplateProvider;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    const-string v0, "fetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setTemplateProvider$ck_highlight_release(Lcom/volcengine/ck/highlight/api/ITemplateProvider;)V

    return-object p0
.end method

.method public final setTemplateProvider$ck_highlight_release(Lcom/volcengine/ck/highlight/api/ITemplateProvider;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    return-void
.end method

.method public final setTimeExtractor(Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    .registers 3

    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setTimeExtractor$ck_highlight_release(Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;)V

    return-object p0
.end method

.method public final setTimeExtractor$ck_highlight_release(Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    return-void
.end method
