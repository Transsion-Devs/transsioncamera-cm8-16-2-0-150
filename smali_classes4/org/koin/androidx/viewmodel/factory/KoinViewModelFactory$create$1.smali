.class final Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $androidParams:Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;


# direct methods
.method constructor <init>(Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;)V
    .registers 2

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;->$androidParams:Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .registers 1

    .line 25
    iget-object p0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;->$androidParams:Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;

    return-object p0
.end method
