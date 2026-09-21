.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V
    .registers 3

    .line 2838
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 2850
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 2851
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$2;->val$view:Landroid/view/View;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    invoke-static {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$1100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/view/View;)V

    :cond_f
    return-void
.end method
