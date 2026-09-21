.class public final Lorg/koin/androidx/viewmodel/ViewModelParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/koin/core/annotation/KoinInternalApi;
.end annotation


# instance fields
.field private final clazz:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass;"
        }
    .end annotation
.end field

.field private final parameters:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;

.field private final registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field private final state:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Landroidx/savedstate/SavedStateRegistryOwner;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->clazz:Lkotlin/reflect/KClass;

    .line 15
    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 16
    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->state:Lkotlin/jvm/functions/Function0;

    .line 17
    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->parameters:Lkotlin/jvm/functions/Function0;

    .line 18
    iput-object p5, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 19
    iput-object p6, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_15

    move-object p6, v0

    .line 13
    :cond_15
    invoke-direct/range {p0 .. p6}, Lorg/koin/androidx/viewmodel/ViewModelParameter;-><init>(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method


# virtual methods
.method public final getClazz()Lkotlin/reflect/KClass;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->clazz:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public final getParameters()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->parameters:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getQualifier()Lorg/koin/core/qualifier/Qualifier;
    .registers 1

    .line 15
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    return-object p0
.end method

.method public final getRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;
    .registers 1

    .line 19
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->registryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object p0
.end method

.method public final getState()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->state:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getViewModelStoreOwner()Landroidx/lifecycle/ViewModelStoreOwner;
    .registers 1

    .line 18
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelParameter;->viewModelStoreOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    return-object p0
.end method
