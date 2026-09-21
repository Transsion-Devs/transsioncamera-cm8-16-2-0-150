.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 323
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .registers 4

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    .line 326
    # getter for: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMLayoutStateChangeCallback$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/core/util/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 327
    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    .line 328
    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    .line 329
    new-instance v1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;-><init>()V

    .line 328
    invoke-virtual {p0, p1, v1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    :cond_2a
    return-void
.end method
