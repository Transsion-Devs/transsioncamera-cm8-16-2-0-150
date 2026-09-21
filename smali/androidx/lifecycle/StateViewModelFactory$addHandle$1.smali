.class final Landroidx/lifecycle/StateViewModelFactory$addHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/StateViewModelFactory;->addHandle(Landroidx/lifecycle/SavedStateHandle;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $definitionParameters:Lorg/koin/core/parameter/ParametersHolder;

.field final synthetic $handle:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method constructor <init>(Lorg/koin/core/parameter/ParametersHolder;Landroidx/lifecycle/SavedStateHandle;)V
    .registers 3

    iput-object p1, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$definitionParameters:Lorg/koin/core/parameter/ParametersHolder;

    iput-object p2, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-virtual {p0}, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .registers 2

    .line 29
    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$definitionParameters:Lorg/koin/core/parameter/ParametersHolder;

    iget-object p0, p0, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;->$handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v0, p0}, Lorg/koin/core/parameter/ParametersHolder;->add(Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method
