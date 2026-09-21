.class Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->createPopuMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;


# direct methods
.method constructor <init>(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$200(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$200(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 217
    :cond_11
    iget-object v0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$300(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 218
    iget-object p0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;
    invoke-static {p0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$300(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
