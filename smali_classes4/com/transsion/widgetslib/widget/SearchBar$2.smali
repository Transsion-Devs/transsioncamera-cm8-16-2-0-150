.class Lcom/transsion/widgetslib/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 152
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 156
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$2;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_15
    return-void
.end method
