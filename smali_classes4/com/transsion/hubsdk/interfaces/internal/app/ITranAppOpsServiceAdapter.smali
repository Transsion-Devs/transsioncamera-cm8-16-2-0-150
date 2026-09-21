.class public interface abstract Lcom/transsion/hubsdk/interfaces/internal/app/ITranAppOpsServiceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkOp(IILjava/lang/String;)I
.end method

.method public abstract getOps(Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranPackageOps;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpsMode(Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;)I
.end method

.method public abstract getPackageMode(IILjava/lang/String;)I
.end method

.method public abstract setMode(IILjava/lang/String;I)V
.end method

.method public abstract setPackageMode(IILjava/lang/String;I)V
.end method

.method public abstract startWatchingActive([ILcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
.end method
