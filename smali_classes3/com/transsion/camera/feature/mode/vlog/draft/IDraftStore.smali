.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/draft/IDraftStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract getDraftStyle()I
.end method

.method public abstract init()V
.end method

.method public abstract isValid()Z
.end method

.method public abstract loadDraft()Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;
.end method

.method public abstract refresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateComposeState(I)V
.end method

.method public abstract updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V
.end method

.method public abstract updateItemList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateTemplateId(J)V
.end method
