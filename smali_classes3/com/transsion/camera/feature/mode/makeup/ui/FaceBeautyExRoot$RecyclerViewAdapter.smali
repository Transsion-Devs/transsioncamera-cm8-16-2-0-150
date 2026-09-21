.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$NpE8vZS0jjEEox5Xk2aTExN7IEQ(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XVfqDKlKuvVEUnvr43tGO_yIAkY(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jDsZfHi3CGbY-ZRoBsC_T13vqZI(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V
    .registers 3

    .line 740
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 743
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->toggle(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V
    .registers 4

    .line 755
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 758
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;)V

    .line 760
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    .line 761
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .registers 2

    .line 772
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 775
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 678
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
    .registers 8

    .line 723
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder,position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v0

    .line 725
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;)V

    .line 732
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemViewType(I)I

    move-result p2

    const v2, 0x3f4ccccd    # 0.8f

    packed-switch p2, :pswitch_data_c8

    return-void

    .line 780
    :pswitch_2c
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    .line 781
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;

    .line 782
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->bindHolder(Ljava/lang/Object;Z)V

    return-void

    .line 766
    :pswitch_3f
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    .line 767
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;

    .line 768
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 771
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 749
    :pswitch_6b
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    .line 750
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    .line 751
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->-$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 754
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 734
    :pswitch_9b
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 735
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;

    .line 736
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 739
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v2, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0xfa01
        :pswitch_9b
        :pswitch_6b
        :pswitch_6b
        :pswitch_3f
        :pswitch_2c
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
    .registers 6

    .line 681
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder,viewType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2a

    .line 688
    :cond_27
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    goto :goto_2c

    .line 686
    :cond_2a
    :goto_2a
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item_ui4:I

    :goto_2c
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_ae

    const/4 p0, 0x0

    return-object p0

    .line 709
    :pswitch_32
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_44

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_44

    .line 712
    :cond_41
    sget p2, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout:I

    goto :goto_46

    .line 710
    :cond_44
    :goto_44
    sget p2, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout_ui4:I

    .line 714
    :goto_46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 715
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 704
    :pswitch_5a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 705
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 700
    :pswitch_70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_feature_skin_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 701
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 696
    :pswitch_86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 697
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 692
    :pswitch_9a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 693
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    :pswitch_data_ae
    .packed-switch 0xfa01
        :pswitch_9a
        :pswitch_86
        :pswitch_70
        :pswitch_5a
        :pswitch_32
    .end packed-switch
.end method
