.class public final Lorg/koin/androidx/viewmodel/ViewModelOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;


# instance fields
.field private final stateRegistry:Landroidx/savedstate/SavedStateRegistryOwner;

.field private final storeOwner:Landroidx/lifecycle/ViewModelStoreOwner;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->Companion:Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 4

    const-string v0, "storeOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->storeOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 15
    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->stateRegistry:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 13
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/koin/androidx/viewmodel/ViewModelOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method


# virtual methods
.method public final getStateRegistry()Landroidx/savedstate/SavedStateRegistryOwner;
    .registers 1

    .line 15
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->stateRegistry:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object p0
.end method

.method public final getStoreOwner()Landroidx/lifecycle/ViewModelStoreOwner;
    .registers 1

    .line 14
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;->storeOwner:Landroidx/lifecycle/ViewModelStoreOwner;

    return-object p0
.end method
