.class public final Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/config/TemplateFetcherConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/cutsame/solution/config/TemplateFetcherConfig;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4
    new-instance v0, Lcom/cutsame/solution/config/TemplateFetcherConfig;

    invoke-direct {v0, p0}, Lcom/cutsame/solution/config/TemplateFetcherConfig;-><init>(Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;)V

    return-object v0

    .line 5
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "host is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getExtraCommonMap()Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "host"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final host(Ljava/lang/String;)Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;
    .registers 3

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/config/TemplateFetcherConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
