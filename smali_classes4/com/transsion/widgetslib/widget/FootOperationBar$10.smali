.class Lcom/transsion/widgetslib/widget/FootOperationBar$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .registers 2

    .line 1017
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_18

    .line 1025
    :cond_9
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 1029
    :cond_10
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-nez v1, :cond_19

    :goto_18
    return-void

    .line 1032
    :cond_19
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method
