.class public final Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/config/EffectFetcherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->c:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/cutsame/solution/config/EffectFetcherConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4
    iget-object v0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 7
    new-instance v0, Lcom/cutsame/solution/config/EffectFetcherConfig;

    invoke-direct {v0, p0}, Lcom/cutsame/solution/config/EffectFetcherConfig;-><init>(Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;)V

    return-object v0

    .line 8
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "effectLitPath is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "host is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final effectLitExtraMap(Ljava/util/Map;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->setEffectLitExtraMap(Ljava/util/Map;)V

    return-object p0
.end method

.method public final effectLitPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    .registers 3

    const-string v0, "effectLitPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getEffectLitExtraMap()Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final getEffectLitPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalModelPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getModelPath()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final host(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    .registers 3

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final localModelPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    .registers 3

    const-string v0, "localModelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final modelPath(Ljava/lang/String;)Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;
    .registers 3

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setEffectLitExtraMap(Ljava/util/Map;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->e:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "{\"host\":\""

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"effectLitPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"modelPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"localModelPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"effectLitExtraMap\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/cutsame/solution/config/EffectFetcherConfig$Builder;->e:Ljava/util/Map;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
