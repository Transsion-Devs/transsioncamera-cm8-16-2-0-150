.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

.field final synthetic val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

.field final synthetic val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .registers 4

    .line 1637
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    iput-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1640
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 1641
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    .line 1643
    :cond_1b
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 1644
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    :cond_36
    const/4 p1, 0x0

    .line 1646
    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    .line 1647
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    const/16 p1, 0x8

    .line 1649
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
