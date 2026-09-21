.class final Lorg/koin/android/scope/ComponentCallbacksExtKt$getOrCreateScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/android/scope/ComponentCallbacksExtKt;->getOrCreateScope(Landroid/content/ComponentCallbacks;)Lkotlin/Lazy;
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
.field final synthetic $this_getOrCreateScope:Landroid/content/ComponentCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ComponentCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/android/scope/ComponentCallbacksExtKt$getOrCreateScope$1;->$this_getOrCreateScope:Landroid/content/ComponentCallbacks;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lorg/koin/android/scope/ComponentCallbacksExtKt$getOrCreateScope$1;->invoke()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/scope/Scope;
    .registers 3

    .line 34
    iget-object v0, p0, Lorg/koin/android/scope/ComponentCallbacksExtKt$getOrCreateScope$1;->$this_getOrCreateScope:Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/koin/android/scope/ComponentCallbacksExtKt;->getScopeOrNull(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lorg/koin/android/scope/ComponentCallbacksExtKt$getOrCreateScope$1;->$this_getOrCreateScope:Landroid/content/ComponentCallbacks;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/koin/android/scope/ComponentCallbacksExtKt;->createScope$default(Landroid/content/ComponentCallbacks;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method
