.class public final Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private final kClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass;"
        }
    .end annotation
.end field

.field private final params:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;

.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/reflect/KClass;

    .line 18
    iput-object p2, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 19
    iput-object p3, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 20
    iput-object p4, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move-object p4, v0

    .line 16
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;-><init>(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public abstract synthetic create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;

    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, p2}, Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 25
    iget-object p2, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/reflect/KClass;

    iget-object p0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    new-instance v1, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;

    invoke-direct {v1, p1}, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;-><init>(Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;)V

    invoke-virtual {p2, v0, p0, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0
.end method
