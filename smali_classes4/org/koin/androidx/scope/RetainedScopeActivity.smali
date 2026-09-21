.class public abstract Lorg/koin/androidx/scope/RetainedScopeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lorg/koin/android/scope/AndroidScopeComponent;


# instance fields
.field private final scope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/koin/androidx/scope/RetainedScopeActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 35
    invoke-static {p0}, Lorg/koin/androidx/scope/ComponentActivityExtKt;->activityRetainedScope(Landroidx/activity/ComponentActivity;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/androidx/scope/RetainedScopeActivity;->scope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 31
    :cond_5
    invoke-direct {p0, p1}, Lorg/koin/androidx/scope/RetainedScopeActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getScope()Lorg/koin/core/scope/Scope;
    .registers 1

    .line 35
    iget-object p0, p0, Lorg/koin/androidx/scope/RetainedScopeActivity;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/koin/core/scope/Scope;

    return-object p0
.end method

.method public onCloseScope()V
    .registers 1

    .line 31
    invoke-static {p0}, Lorg/koin/android/scope/AndroidScopeComponent$DefaultImpls;->onCloseScope(Lorg/koin/android/scope/AndroidScopeComponent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lorg/koin/androidx/scope/RetainedScopeActivity;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    if-eqz p0, :cond_a

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
