.class Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidthWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V
    .registers 3

    .line 695
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getWidth()I
    .registers 1

    .line 700
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return p0
.end method

.method public setWidth(I)V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 705
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
