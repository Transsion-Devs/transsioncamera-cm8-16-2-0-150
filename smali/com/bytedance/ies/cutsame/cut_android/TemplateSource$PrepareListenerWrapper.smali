.class Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareListenerWrapper"
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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 151
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-nez p0, :cond_b

    goto :goto_3e

    .line 154
    :cond_b
    # setter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareErrorCode:I
    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$302(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;I)I

    .line 155
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    .line 156
    invoke-interface {v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onError(ILjava/lang/String;)V

    goto :goto_16

    .line 159
    :cond_26
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;

    .line 160
    invoke-interface {v0, p1, p2}, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;->onError(ILjava/lang/String;)V

    goto :goto_2e

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onPreSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 4

    .line 104
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-nez p0, :cond_b

    goto :goto_4b

    .line 107
    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    .line 108
    invoke-interface {v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onPreSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V

    goto :goto_13

    .line 111
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getVideoSegment()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->videoSegmentToMediaItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getTextSegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->textSegmentToTextItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;

    .line 114
    invoke-interface {v1, p1, v0}, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;->onPreSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3b

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .registers 5

    .line 137
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-nez p0, :cond_b

    goto :goto_3b

    .line 140
    :cond_b
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    .line 141
    invoke-interface {v1, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onProgress(FLjava/lang/String;)V

    goto :goto_13

    .line 144
    :cond_23
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;

    .line 145
    invoke-interface {p2, p1}, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;->onProgress(F)V

    goto :goto_2b

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource$PrepareListenerWrapper;->sourceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;

    if-nez p0, :cond_b

    goto :goto_4f

    :cond_b
    const/4 v0, 0x0

    .line 123
    # setter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareErrorCode:I
    invoke-static {p0, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$302(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;I)I

    .line 124
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->prepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;

    .line 125
    invoke-interface {v1, p1}, Lcom/bytedance/ies/cutsame/cut_android/PrepareListener;->onSuccess(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)V

    goto :goto_17

    .line 128
    :cond_27
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getVideoSegment()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->videoSegmentToMediaItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->getTextSegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/CutUiItemConvertorKt;->textSegmentToTextItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->newPrepareListeners:Ljava/util/Set;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplateSource;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;

    .line 131
    invoke-interface {v1, p1, v0}, Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;->onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3f

    :cond_4f
    :goto_4f
    return-void
.end method
