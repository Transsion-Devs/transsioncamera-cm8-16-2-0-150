.class Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceFetcherWrapper"
.end annotation


# instance fields
.field private final sourceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 5

    .line 76
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$ResourceFetcherWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-nez p0, :cond_b

    return-void

    .line 79
    :cond_b
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->parse(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_18

    .line 81
    const-string p0, "unknown input"

    invoke-interface {p2, v0, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_18
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->schemaResourceFetchers:Ljava/util/HashMap;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/HashMap;

    move-result-object p0

    iget-object v1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;

    if-nez p0, :cond_41

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not find fetcher for schema : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->schema:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$ResourceSchema;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void

    .line 90
    :cond_41
    iget-object p1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher$InputArgs;->data:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;->fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V

    return-void
.end method
