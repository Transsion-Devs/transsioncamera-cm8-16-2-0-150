.class Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;
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

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 60
    iget-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;
    invoke-static {p1}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 62
    iget-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;
    invoke-static {p1}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 63
    iget-object p1, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;
    invoke-static {p1}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;

    # getter for: Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->fMenuId:I
    invoke-static {p0}, Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;->access$100(Lcom/transsion/widgetthemes/widget/actionbar/OverflowMenu;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->inflate(I)V

    :cond_24
    return-void
.end method
