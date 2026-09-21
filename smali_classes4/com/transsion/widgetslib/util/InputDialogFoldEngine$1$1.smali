.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;->invoke(Z)V
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
.field final synthetic $it:Z

.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Z)V
    .registers 3

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->$it:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 135
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .registers 4

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneHungOnStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z
    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$isPhoneHungOnStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mParentStopped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # getter for: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z
    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMParentStopped$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z
    invoke-static {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$isPhoneHungOnStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isThunderbackWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 138
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_64

    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # getter for: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMParentStopped$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 141
    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->$it:Z

    if-eqz p1, :cond_5f

    .line 142
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->adaptPosition()V
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$adaptPosition(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    return-void

    .line 144
    :cond_5f
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    # invokes: Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->revertBack()V
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$revertBack(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    :cond_64
    return-void
.end method
