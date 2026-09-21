.class Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field private mEntry:[Ljava/lang/String;

.field private mOrientation:I

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;


# direct methods
.method public static synthetic $r8$lambda$6iBDPJsC_oc1e1B71oeuEoViH00(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->lambda$onCreateViewHolder$0(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 618
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    .line 620
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mEntry:[Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;Landroid/view/View;)V
    .registers 3

    .line 630
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 633
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$monValueChanged(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 612
    check-cast p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;I)V
    .registers 5

    .line 640
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mEntry:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 642
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    iget-object v1, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$mresetItemViewScale(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmCurrentEntryValue(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 645
    iget-object p2, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->primary_highlight_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    :cond_40
    iget p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mOrientation:I

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$100(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->updateRotation(II)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;
    .registers 5

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->tab_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 627
    new-instance p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;-><init>(Landroid/view/View;)V

    .line 628
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 629
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmTimeLapseTab(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mOrientation:I

    if-ne v0, p1, :cond_d

    goto :goto_4a

    .line 660
    :cond_d
    iput p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mOrientation:I

    const/4 p1, 0x0

    .line 661
    :goto_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmTimeLapseTab(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4a

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmTimeLapseTab(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->-$$Nest$fgetmTimeLapseTab(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    if-nez v0, :cond_35

    goto :goto_47

    .line 667
    :cond_35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    if-gez v1, :cond_3c

    goto :goto_47

    .line 671
    :cond_3c
    iget v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mOrientation:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {v2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$200(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->updateRotation(II)V

    :goto_47
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_4a
    :goto_4a
    return-void
.end method
