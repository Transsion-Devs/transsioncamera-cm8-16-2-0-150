.class public final Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

.field private mRequireHungStatus:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMRequireHungStatus()Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mRequireHungStatus:Z

    return p0
.end method

.method public final installInputDialogFoldEngine(Landroid/view/Window;)V
    .registers 4

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 21
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    :cond_1d
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_1a

    if-nez p0, :cond_17

    .line 58
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_17
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1a
    return-void
.end method

.method public final onHide()V
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_15

    if-nez p0, :cond_12

    .line 33
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    :cond_15
    return-void
.end method

.method public final onShow()V
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_15

    if-nez p0, :cond_12

    .line 27
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onShow()V

    :cond_15
    return-void
.end method

.method public final onStart()V
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_15

    if-nez p0, :cond_12

    .line 39
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V

    :cond_15
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_15

    if-nez p0, :cond_12

    .line 46
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    :cond_15
    return-void
.end method

.method public final release()V
    .registers 2

    .line 51
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mInputDialogFoldEngine:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    if-eqz p0, :cond_15

    if-nez p0, :cond_12

    .line 52
    const-string p0, "mInputDialogFoldEngine"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->release()V

    :cond_15
    return-void
.end method

.method public final requireInstallFlipEngine()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    if-nez v0, :cond_c

    .line 65
    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    :cond_c
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 66
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_R:Z

    if-eqz v0, :cond_20

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mRequireHungStatus:Z

    if-eqz p0, :cond_20

    sget-boolean p0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final setMRequireHungStatus(Z)V
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->mRequireHungStatus:Z

    return-void
.end method
