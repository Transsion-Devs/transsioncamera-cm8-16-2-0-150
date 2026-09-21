.class final Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerNLEPrepareListener"
.end annotation


# instance fields
.field private final realSource:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

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

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->sourceRef:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance p1, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener$realSource$1;-><init>(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;)V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getSourceRef$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->sourceRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez v0, :cond_b

    goto :goto_23

    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareListeners$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;

    .line 142
    invoke-interface {v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;->onError(ILjava/lang/String;)V

    goto :goto_13

    .line 144
    :cond_23
    :goto_23
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p2, :cond_2e

    goto :goto_38

    :cond_2e
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareFinishListener:Lkotlin/jvm/functions/Function0;
    invoke-static {p2}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareFinishListener$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Lkotlin/jvm/functions/Function0;

    move-result-object p2

    if-nez p2, :cond_35

    goto :goto_38

    :cond_35
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 145
    :goto_38
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p0, :cond_43

    return-void

    :cond_43
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$setPrepareErrorCode$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;I)V

    return-void
.end method

.method public onPreSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p0, :cond_b

    goto :goto_23

    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareListeners$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;

    .line 122
    invoke-interface {v0, p1}, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;->onPreSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V

    goto :goto_13

    :cond_23
    :goto_23
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .registers 4

    .line 135
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p0, :cond_b

    goto :goto_23

    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareListeners$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 278
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;->onProgress(FLjava/lang/String;)V

    goto :goto_13

    :cond_23
    :goto_23
    return-void
.end method

.method public onSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez v0, :cond_b

    goto :goto_23

    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareListeners$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;

    .line 128
    invoke-interface {v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/NLEPrepareListener;->onSuccess(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)V

    goto :goto_13

    .line 130
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p1, :cond_2e

    goto :goto_38

    :cond_2e
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->prepareFinishListener:Lkotlin/jvm/functions/Function0;
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$getPrepareFinishListener$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-nez p1, :cond_35

    goto :goto_38

    :cond_35
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 131
    :goto_38
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource$InnerNLEPrepareListener;->realSource:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;

    if-nez p0, :cond_43

    return-void

    :cond_43
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;->access$setPrepareErrorCode$p(Lcom/bytedance/ies/cutsame/cut_android/NLETemplateSource;I)V

    return-void
.end method
