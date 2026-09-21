.class public abstract Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;
    .registers 2

    const-string v0, "$this$getMD5"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
