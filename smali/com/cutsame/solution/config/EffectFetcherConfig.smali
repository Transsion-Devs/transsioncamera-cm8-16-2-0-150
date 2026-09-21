.class public final Lcom/cutsame/solution/config/EffectFetcherConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->getEffectLitPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->getModelPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->getLocalModelPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->getEffectLitExtraMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getEffectLitExtraMap()Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final getEffectLitPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalModelPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getModelPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig;->c:Ljava/lang/String;

    return-object p0
.end method
