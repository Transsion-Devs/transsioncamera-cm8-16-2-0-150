.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setMainButtonIconAndColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # getter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 79
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # getter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 80
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->expandItemButtons()V

    return-void

    .line 82
    :cond_16
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    return-void

    .line 85
    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # getter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$200(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 86
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # getter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$200(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;->onMainClick(Landroid/view/View;)V

    :cond_2d
    return-void
.end method
