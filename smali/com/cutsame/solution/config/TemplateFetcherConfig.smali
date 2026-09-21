.class public final Lcom/cutsame/solution/config/TemplateFetcherConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/TemplateFetcherConfig;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->getExtraCommonMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/config/TemplateFetcherConfig;->b:Ljava/util/Map;

    return-void
.end method
