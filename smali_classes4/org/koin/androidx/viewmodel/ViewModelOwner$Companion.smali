.class public final Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/androidx/viewmodel/ViewModelOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$default(Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;ILjava/lang/Object;)Lorg/koin/androidx/viewmodel/ViewModelOwner;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 19
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/koin/androidx/viewmodel/ViewModelOwner$Companion;->from(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)Lorg/koin/androidx/viewmodel/ViewModelOwner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Landroidx/lifecycle/ViewModelStoreOwner;)Lorg/koin/androidx/viewmodel/ViewModelOwner;
    .registers 4

    const-string p0, "storeOwner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/koin/androidx/viewmodel/ViewModelOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final from(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)Lorg/koin/androidx/viewmodel/ViewModelOwner;
    .registers 3

    const-string p0, "storeOwner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;

    invoke-direct {p0, p1, p2}, Lorg/koin/androidx/viewmodel/ViewModelOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-object p0
.end method

.method public final fromAny(Ljava/lang/Object;)Lorg/koin/androidx/viewmodel/ViewModelOwner;
    .registers 4

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p0, Lorg/koin/androidx/viewmodel/ViewModelOwner;

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    instance-of v1, p1, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v1, :cond_11

    check-cast p1, Landroidx/savedstate/SavedStateRegistryOwner;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-direct {p0, v0, p1}, Lorg/koin/androidx/viewmodel/ViewModelOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-object p0
.end method
