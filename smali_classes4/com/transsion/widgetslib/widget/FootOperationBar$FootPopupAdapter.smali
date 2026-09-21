.class Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FootPopupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .registers 2

    .line 1227
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Lcom/transsion/widgetslib/widget/FootOperationBar$1;)V
    .registers 3

    .line 1227
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 1231
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1236
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_28

    .line 1248
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_popup_item:I

    const/4 v1, 0x0

    .line 1249
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1250
    new-instance p3, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;Lcom/transsion/widgetslib/widget/FootOperationBar$1;)V

    .line 1251
    sget v0, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_popup_item_text:I

    .line 1252
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1251
    # setter for: Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p3, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->access$1602(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1253
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2e

    .line 1255
    :cond_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;

    .line 1257
    :goto_2e
    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->access$1600(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1700(Lcom/transsion/widgetslib/widget/FootOperationBar;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    # invokes: Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V
    invoke-static {p3, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1800(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Z)V

    .line 1259
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1900(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1260
    new-instance p3, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
