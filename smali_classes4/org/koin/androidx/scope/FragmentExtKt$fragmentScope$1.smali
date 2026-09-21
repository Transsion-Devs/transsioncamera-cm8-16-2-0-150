.class final Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/FragmentExtKt;->fragmentScope(Landroidx/fragment/app/Fragment;Z)Lkotlin/Lazy;
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
.field final synthetic $this_fragmentScope:Landroidx/fragment/app/Fragment;

.field final synthetic $useParentActivityScope:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Z)V
    .registers 3

    iput-object p1, p0, Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;->$this_fragmentScope:Landroidx/fragment/app/Fragment;

    iput-boolean p2, p0, Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;->$useParentActivityScope:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;->invoke()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/scope/Scope;
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;->$this_fragmentScope:Landroidx/fragment/app/Fragment;

    iget-boolean p0, p0, Lorg/koin/androidx/scope/FragmentExtKt$fragmentScope$1;->$useParentActivityScope:Z

    invoke-static {v0, p0}, Lorg/koin/androidx/scope/FragmentExtKt;->createFragmentScope(Landroidx/fragment/app/Fragment;Z)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
