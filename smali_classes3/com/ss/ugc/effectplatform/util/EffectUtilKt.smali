.class public abstract Lcom/ss/ugc/effectplatform/util/EffectUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final checkEffectChildrenFile(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "effectUnzipPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->loadLibrary()V

    .line 12
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/util/EffectUtilKt;->nativeCheckEffectChildrenFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final native nativeCheckEffectChildrenFile(Ljava/lang/String;)Z
.end method
