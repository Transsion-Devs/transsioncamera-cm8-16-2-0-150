.class final Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/ComponentActivityExtKt;->activityRetainedScope(Landroidx/activity/ComponentActivity;)Lkotlin/Lazy;
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
.field final synthetic $this_activityRetainedScope:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    iput-object p1, p0, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->$this_activityRetainedScope:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->invoke()Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/koin/core/scope/Scope;
    .registers 1

    .line 37
    iget-object p0, p0, Lorg/koin/androidx/scope/ComponentActivityExtKt$activityRetainedScope$1;->$this_activityRetainedScope:Landroidx/activity/ComponentActivity;

    invoke-static {p0}, Lorg/koin/androidx/scope/ComponentActivityExtKt;->createActivityRetainedScope(Landroidx/activity/ComponentActivity;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method
