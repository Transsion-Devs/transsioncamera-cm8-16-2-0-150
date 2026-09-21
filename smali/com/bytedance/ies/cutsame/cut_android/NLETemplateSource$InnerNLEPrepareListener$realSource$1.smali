.class final Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;-><init>(Ljava/lang/ref/WeakReference;)V
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
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->sourceRef:Ljava/lang/ref/WeakReference;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->access$getSourceRef$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 116
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;->invoke()Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    move-result-object p0

    return-object p0
.end method
