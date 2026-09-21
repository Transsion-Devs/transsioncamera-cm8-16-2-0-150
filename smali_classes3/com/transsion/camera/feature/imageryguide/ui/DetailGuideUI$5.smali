.class Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;


# direct methods
.method public static synthetic $r8$lambda$UnvLywxMTTdPswUIcXl8zTzvh8Q(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->lambda$onTabUnselected$1(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZkT7ZzcYVu2ivP7Tb3Zxn-mg4no(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->lambda$onTabSelected$0(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 2

    .line 585
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTabSelected$0(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateTabTextView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method private synthetic lambda$onTabUnselected$1(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 3

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateTabTextView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fputmCurrentPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;I)V

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmTabLayout(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetisTabSelectedByRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fputisTabSelectedByRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V

    return-void

    .line 593
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmCurrentPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->checkPosition(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->-$$Nest$fgetmTabLayout(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
