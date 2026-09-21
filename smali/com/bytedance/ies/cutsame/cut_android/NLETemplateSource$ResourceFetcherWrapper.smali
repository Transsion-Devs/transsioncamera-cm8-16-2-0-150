.class final Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceFetcherWrapper"
.end annotation


# instance fields
.field private final sourceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sourceRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p0, :cond_15

    return-void

    .line 100
    :cond_15
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->parse(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_22

    .line 102
    const-string p0, "unknown input"

    invoke-interface {p2, v0, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void

    .line 105
    :cond_22
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getSchemaResourceFetchers$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/HashMap;

    move-result-object p0

    iget-object v1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;

    if-nez p0, :cond_40

    .line 107
    iget-object p0, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "can not find fetcher for schema : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void

    .line 109
    :cond_40
    iget-object p1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->data:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;->fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V

    return-void
.end method
