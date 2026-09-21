.class final Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;
    .registers 3

    .line 38
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;->this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$innerFetcher$2;->invoke()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$ResourceFetcherWrapper;

    move-result-object p0

    return-object p0
.end method
