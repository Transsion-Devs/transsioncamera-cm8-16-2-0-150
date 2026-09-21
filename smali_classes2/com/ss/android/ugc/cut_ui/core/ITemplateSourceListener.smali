.class public interface abstract Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener$Stub;,
        Lcom/ss/android/ugc/cut_ui/core/ITemplateSourceListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onGetTemplateCanvasConfig(Ljava/lang/String;II)V
.end method

.method public abstract onGetTemplateSize(II)V
.end method

.method public abstract onPreSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(F)V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation
.end method
