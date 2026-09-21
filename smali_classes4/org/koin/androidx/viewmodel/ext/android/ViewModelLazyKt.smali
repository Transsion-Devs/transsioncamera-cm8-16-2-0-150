.class public final Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getLazyViewModelForClass(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lkotlin/reflect/KClass;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lkotlin/Lazy;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v5

    .line 83
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$getLazyViewModelForClass$1;

    move-object v4, p0

    move-object v3, p1

    move-object v8, p2

    move-object v7, p3

    move-object v2, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$getLazyViewModelForClass$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLazyViewModelForClass$default(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .registers 16

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    .line 76
    sget-object p2, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {p2}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object p2

    invoke-virtual {p2}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object p2

    :cond_12
    move-object v2, p2

    and-int/lit8 p2, p7, 0x8

    const/4 p8, 0x0

    if-eqz p2, :cond_1a

    move-object v3, p8

    goto :goto_1b

    :cond_1a
    move-object v3, p3

    :goto_1b
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    move-object v4, p8

    goto :goto_22

    :cond_21
    move-object v4, p4

    :goto_22
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    move-object v5, p8

    goto :goto_29

    :cond_28
    move-object v5, p5

    :goto_29
    and-int/lit8 p2, p7, 0x40

    if-eqz p2, :cond_31

    move-object v6, p8

    :goto_2e
    move-object v0, p0

    move-object v1, p1

    goto :goto_33

    :cond_31
    move-object v6, p6

    goto :goto_2e

    .line 73
    :goto_33
    invoke-static/range {v0 .. v6}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;->getLazyViewModelForClass(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final viewModelForClass(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/reflect/KClass;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lkotlin/Lazy;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p3}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v6

    .line 32
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$1;

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    move-object v3, p3

    move-object v2, p4

    move-object v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStore;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final viewModelForClass(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/reflect/KClass;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lkotlin/Lazy;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$3;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Ljava/lang/String;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModelForClass$default(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .registers 10

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_b

    move-object p3, p0

    :cond_b
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1a

    move-object p6, v0

    .line 23
    :cond_1a
    invoke-static/range {p0 .. p6}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;->viewModelForClass(Landroidx/activity/ComponentActivity;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic viewModelForClass$default(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .registers 10

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_f

    .line 50
    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$2;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt$viewModelForClass$2;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_f
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_14

    move-object p4, v0

    :cond_14
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_19

    move-object p5, v0

    :cond_19
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1e

    move-object p6, v0

    .line 47
    :cond_1e
    invoke-static/range {p0 .. p6}, Lorg/koin/androidx/viewmodel/ext/android/ViewModelLazyKt;->viewModelForClass(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
