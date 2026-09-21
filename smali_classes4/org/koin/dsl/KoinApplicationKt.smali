.class public final Lorg/koin/dsl/KoinApplicationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/module/KoinApplicationDslMarker;
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-static {v0, p0}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method

.method public static final koinApplication(Z)Lorg/koin/core/KoinApplication;
    .registers 2
    .annotation runtime Lorg/koin/core/module/KoinApplicationDslMarker;
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, v0}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method

.method public static final koinApplication(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    .annotation runtime Lorg/koin/core/module/KoinApplicationDslMarker;
    .end annotation

    .line 32
    sget-object v0, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication$Companion;->init()Lorg/koin/core/KoinApplication;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 33
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz p0, :cond_10

    .line 35
    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->createEagerInstances()V

    :cond_10
    return-object v0
.end method

.method public static synthetic koinApplication$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;
    .registers 4

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    :cond_5
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_a

    const/4 p1, 0x0

    .line 31
    :cond_a
    invoke-static {p0, p1}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object p0

    return-object p0
.end method
