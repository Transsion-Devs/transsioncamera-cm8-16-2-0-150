.class public final Lcom/volcengine/ck/highlight/config/HLSDKConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;
    }
.end annotation


# instance fields
.field private final filterWithDuration:Z

.field private final frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

.field private final logLevel:I

.field private final minRequireDockerSize:I

.field private final resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

.field private final sleepTime:J

.field private final templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

.field private final templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

.field private final timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;


# direct methods
.method public constructor <init>(Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;)V
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getResourceFinder$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    .line 23
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getFrameExtractor$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    .line 24
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getTimeExtractor$ck_highlight_release()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    .line 25
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getTemplateProvider$ck_highlight_release()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    .line 26
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getTemplateFinder$ck_highlight_release()Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    .line 27
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getLogLevel$ck_highlight_release()I

    move-result v0

    iput v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->logLevel:I

    .line 28
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getSleepTime$ck_highlight_release()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->sleepTime:J

    .line 29
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getFilterWithDuration$ck_highlight_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->filterWithDuration:Z

    .line 30
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->getMinRequireDockerSize$ck_highlight_release()I

    move-result p1

    iput p1, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->minRequireDockerSize:I

    return-void
.end method


# virtual methods
.method public final getFilterWithDuration()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->filterWithDuration:Z

    return p0
.end method

.method public final getFrameExtractor()Lcom/volcengine/ck/highlight/api/IFrameExtractor;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    return-object p0
.end method

.method public final getLogLevel()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->logLevel:I

    return p0
.end method

.method public final getMinRequireDockerSize()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->minRequireDockerSize:I

    return p0
.end method

.method public final getResourceFinder()Lcom/volcengine/ck/highlight/api/IHLResourceFinder;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->resourceFinder:Lcom/volcengine/ck/highlight/api/IHLResourceFinder;

    return-object p0
.end method

.method public final getSleepTime()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->sleepTime:J

    return-wide v0
.end method

.method public final getTemplateFinder()Lcom/volcengine/ck/highlight/api/ITemplateFinder;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->templateFinder:Lcom/volcengine/ck/highlight/api/ITemplateFinder;

    return-object p0
.end method

.method public final getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->templateProvider:Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    return-object p0
.end method

.method public final getTimeExtractor()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    return-object p0
.end method
