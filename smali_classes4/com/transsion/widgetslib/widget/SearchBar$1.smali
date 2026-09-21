.class Lcom/transsion/widgetslib/widget/SearchBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mIsIDLE:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$000(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_19
    return-void

    .line 138
    :cond_1a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    return-void
.end method
