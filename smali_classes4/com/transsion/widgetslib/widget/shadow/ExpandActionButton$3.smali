.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->startCollapseAnim()V
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

    .line 160
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/16 v0, 0x8

    # invokes: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemsVisibility(I)V
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$300(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V

    .line 164
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$402(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z

    .line 165
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # setter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$102(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z

    .line 166
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # getter for: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 167
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    # invokes: Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setCollapseSize()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$500(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V

    :cond_1f
    return-void
.end method
