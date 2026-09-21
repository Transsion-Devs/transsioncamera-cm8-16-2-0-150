.class Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabOverflowPopupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;)V
    .registers 3

    .line 346
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$200(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 355
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$200(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

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
    .registers 8

    if-nez p2, :cond_2b

    .line 367
    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_tab_overflow_popup_item:I

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 372
    sget v0, Lcom/transsion/widgetslib/R$id;->os_tab_overflow_popup_item_text:I

    .line 373
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 372
    # setter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->access$402(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 374
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_31

    .line 376
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;

    .line 379
    :goto_31
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_press_primary_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->access$400(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$200(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z
    invoke-static {p3}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$500(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->viewEnable(Landroid/view/View;Z)V
    invoke-static {p3, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$600(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Landroid/view/View;Z)V

    .line 383
    new-instance p3, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
