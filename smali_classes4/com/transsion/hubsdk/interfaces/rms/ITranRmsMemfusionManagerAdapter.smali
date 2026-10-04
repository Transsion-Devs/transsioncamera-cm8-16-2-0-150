.class public interface abstract Lcom/transsion/hubsdk/interfaces/rms/ITranRmsMemfusionManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeCompactionMem(Ljava/lang/String;)V
.end method

.method public abstract getMemoryForMF(Ljava/lang/String;)I
.end method

.method public abstract getSwapFileSizeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMatchCurMemSelection()Z
.end method

.method public abstract isMemFusionEnabled()Z
.end method

.method public abstract isMemSettingEnterEnabled()Z
.end method

.method public abstract isMemoryEnoughToMF(Ljava/lang/String;)I
.end method

.method public abstract isUxCompactionSupport()Z
.end method

.method public abstract setMemFusionEnable(Z)I
.end method

.method public abstract switchMemFusion(Z)V
.end method

.method public abstract switchUXCompaction(Z)V
.end method
