.class public interface abstract Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract notifyError(ILjava/lang/String;)V
.end method

.method public abstract notifySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/EffectResourceFetcher$EffectItem;",
            ">;)V"
        }
    .end annotation
.end method
