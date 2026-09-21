.class public final Lcom/cutsame/solution/source/CutSameSource$templateResource$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/source/CutSameSource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;Lcom/cutsame/solution/source/SourceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/source/CutSameSource;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/source/CutSameSource;)V
    .registers 2

    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/cutsame/solution/source/resource/TemplateResource;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/CutSameSource;->getSourceInfo$CutSameIF_release()Lcom/cutsame/solution/source/SourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/source/SourceInfo;->getTemplateType()I

    move-result v0

    if-nez v0, :cond_24

    .line 3
    new-instance v0, Lcom/cutsame/solution/source/resource/LVTemplateResource;

    .line 4
    iget-object v1, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    # getter for: Lcom/cutsame/solution/source/CutSameSource;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/cutsame/solution/source/CutSameSource;->access$getContext$p(Lcom/cutsame/solution/source/CutSameSource;)Landroid/content/Context;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v2}, Lcom/cutsame/solution/source/CutSameSource;->getSourceInfo$CutSameIF_release()Lcom/cutsame/solution/source/SourceInfo;

    move-result-object v2

    .line 6
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    # getter for: Lcom/cutsame/solution/source/CutSameSource;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;
    invoke-static {p0}, Lcom/cutsame/solution/source/CutSameSource;->access$getEffectFetcherConfig$p(Lcom/cutsame/solution/source/CutSameSource;)Lcom/cutsame/solution/config/EffectFetcherConfig;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/cutsame/solution/source/resource/LVTemplateResource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    return-object v0

    .line 13
    :cond_24
    new-instance v0, Lcom/cutsame/solution/source/resource/NLETemplateResource;

    .line 14
    iget-object v1, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    # getter for: Lcom/cutsame/solution/source/CutSameSource;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/cutsame/solution/source/CutSameSource;->access$getContext$p(Lcom/cutsame/solution/source/CutSameSource;)Landroid/content/Context;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v2}, Lcom/cutsame/solution/source/CutSameSource;->getSourceInfo$CutSameIF_release()Lcom/cutsame/solution/source/SourceInfo;

    move-result-object v2

    .line 16
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->a:Lcom/cutsame/solution/source/CutSameSource;

    # getter for: Lcom/cutsame/solution/source/CutSameSource;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;
    invoke-static {p0}, Lcom/cutsame/solution/source/CutSameSource;->access$getEffectFetcherConfig$p(Lcom/cutsame/solution/source/CutSameSource;)Lcom/cutsame/solution/config/EffectFetcherConfig;

    move-result-object p0

    .line 17
    invoke-direct {v0, v1, v2, p0}, Lcom/cutsame/solution/source/resource/NLETemplateResource;-><init>(Landroid/content/Context;Lcom/cutsame/solution/source/SourceInfo;Lcom/cutsame/solution/config/EffectFetcherConfig;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;->invoke()Lcom/cutsame/solution/source/resource/TemplateResource;

    move-result-object p0

    return-object p0
.end method
