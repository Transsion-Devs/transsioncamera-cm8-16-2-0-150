.class Lcom/transsion/widgetslib/view/ViewPagerTabs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .registers 3

    .line 405
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iput p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 408
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;->this$0:Lcom/transsion/widgetslib/view/ViewPagerTabs;

    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;->val$finalI:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabClick(I)V

    return-void
.end method
