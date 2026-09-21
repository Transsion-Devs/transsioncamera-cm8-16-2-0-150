.class public abstract Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final decryptList(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4

    const-string v0, "$this$decryptList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_26

    .line 24
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;

    invoke-direct {v0, p0, p2}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$1;-><init>(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 27
    sget-object p1, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt$decryptList$2;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic decryptList$default(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 22
    const-string p2, "760.0.0.175-cktob"

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptorKt;->decryptList(Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
