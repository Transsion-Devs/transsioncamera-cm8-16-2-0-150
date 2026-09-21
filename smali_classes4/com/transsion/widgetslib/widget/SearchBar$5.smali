.class Lcom/transsion/widgetslib/widget/SearchBar$5;
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

    .line 176
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$5;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$5;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$500(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 180
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$5;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$500(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_11
    return-void
.end method
