.class public interface abstract Lcom/transsion/hubsdk/interfaces/rms/ITranRmsManualcleanManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract doClean(ILjava/lang/String;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCleanProtectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isManualcleanEnabled()Z
.end method

.method public abstract setCleanProtect(Ljava/lang/String;Z)Z
.end method

.method public abstract swipeUpClean(Ljava/lang/String;ILjava/lang/String;I)Z
.end method

.method public abstract updateCleanProtectList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
