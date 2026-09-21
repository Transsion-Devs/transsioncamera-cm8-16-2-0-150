.class public Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentItemSelected:I

.field private mEnable:Z

.field private final mFinalSupportPortraitSpotItemList:Ljava/util/List;

.field private mIsLowLight:Z

.field protected mItemClickCallback:Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;

.field private mNoneItemImage:Landroid/widget/ImageView;

.field private mNoneItemRootView:Landroid/widget/FrameLayout;

.field private mNoneSelectedChosenSign:Landroid/widget/ImageView;

.field private mNoneSelectedText:Landroid/widget/TextView;

.field private mPortraitItemRootView:Landroid/widget/FrameLayout;

.field private mPortraitSelectedChosenSign:Landroid/widget/ImageView;

.field private mPortraitSelectedText:Landroid/widget/TextView;

.field private final mPortraitSpotCompatIconList:Ljava/util/List;

.field private mPortraitSpotContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mPortraitSpotContainerList:Ljava/util/List;

.field private mPortraitSpotItemContainer:Landroid/view/ViewGroup;

.field private mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

.field private final mPortraitSpotItemList:Ljava/util/List;

.field private final mPortraitSpotItemListener:Landroid/view/View$OnClickListener;

.field private mResource:Landroid/content/res/Resources;

.field private mSpotItemRootView:Landroid/widget/FrameLayout;

.field private mSpotSelectedChosenSign:Landroid/widget/ImageView;

.field private mSpotSelectedText:Landroid/widget/TextView;

.field private mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

.field private mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

.field private final mVspSettingMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$pF4D_xyfB7rh2bPyK_jvNGN6KHA(Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitSpotItemLayout(Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainerList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotCompatIconList:Ljava/util/List;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mIsLowLight:Z

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mEnable:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    .line 273
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemListener:Landroid/view/View$OnClickListener;

    .line 96
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->finalSupportPortraitSpotType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mFinalSupportPortraitSpotItemList:Ljava/util/List;

    return-void
.end method

.method private closeCurrentSettingValue()V
    .registers 5

    .line 441
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->portraitSpotHasValueInStore()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_44

    .line 445
    :cond_7
    const-string v0, "key_video_spot"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "off"

    if-eqz v1, :cond_28

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 447
    :cond_28
    const-string v0, "key_video_portrait"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method private finalSupportPortraitSpotType(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 117
    invoke-static {}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo;->getAllFunctionItem()Ljava/util/List;

    move-result-object p0

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x53da8484

    if-eq v0, v1, :cond_33

    const v1, -0x3be31b52

    if-eq v0, v1, :cond_2d

    const v1, 0x2ea37b75

    if-eq v0, v1, :cond_18

    goto :goto_47

    :cond_18
    const-string v0, "video_spot_support_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    if-eqz p0, :cond_47

    .line 120
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_47

    .line 121
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 118
    :cond_2d
    const-string v0, "video_portrait_spot_support_both"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object p0

    :cond_33
    const-string v0, "video_portrait_support_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    if-eqz p0, :cond_47

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_47

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_47
    :goto_47
    return-object p0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_23

    .line 422
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private initPortraitSpotItemView(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .registers 15

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotCompatIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mFinalSupportPortraitSpotItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_253

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;

    .line 141
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v2, :cond_33

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_33

    .line 144
    :cond_30
    sget v2, Lcom/transsion/camera/R$layout;->video_portrait_spot_thumbnail_item:I

    goto :goto_35

    .line 142
    :cond_33
    :goto_33
    sget v2, Lcom/transsion/camera/R$layout;->video_portrait_spot_thumbnail_item_ui5:I

    :goto_35
    const/4 v3, 0x0

    .line 146
    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    .line 150
    sget v4, Lcom/transsion/camera/R$id;->item_container:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 151
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainerList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 153
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 154
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotCompatIconList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_74
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClipToOutline(Z)V

    .line 157
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    new-instance v6, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager$1;

    invoke-direct {v6, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v4, 0x3f6b851f    # 0.92f

    .line 164
    invoke-static {v2, v4, v3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 166
    iget-object v4, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    const-string v8, "key_video_spot"

    const-string v9, "key_video_portrait"

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_254

    goto :goto_b9

    :sswitch_9d
    const-string v6, "key_portrait_spot_switch"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_b9

    :cond_a6
    move v10, v7

    goto :goto_b9

    :sswitch_a8
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    goto :goto_b9

    :cond_af
    move v10, v5

    goto :goto_b9

    :sswitch_b1
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_b9

    :cond_b8
    const/4 v10, 0x0

    :goto_b9
    const v4, 0x106000d

    packed-switch v10, :pswitch_data_262

    goto/16 :goto_247

    .line 168
    :pswitch_c1
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneItemRootView:Landroid/widget/FrameLayout;

    .line 169
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedText:Landroid/widget/TextView;

    .line 170
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_chosen_sign:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedChosenSign:Landroid/widget/ImageView;

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-nez v4, :cond_f0

    .line 173
    sget v4, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneItemImage:Landroid/widget/ImageView;

    goto :goto_f8

    .line 175
    :cond_f0
    sget v3, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 177
    :goto_f8
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedText:Landroid/widget/TextView;

    iget v6, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemTextName:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-nez v4, :cond_10c

    .line 179
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedChosenSign:Landroid/widget/ImageView;

    sget v6, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_selected:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_10c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-nez v4, :cond_11a

    .line 182
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneItemImage:Landroid/widget/ImageView;

    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12b

    :cond_11a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 184
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->setImageViewScale(F)V

    .line 185
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/transsion/camera/R$drawable;->lc_vps_item_background:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 188
    :goto_12b
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    goto/16 :goto_247

    .line 216
    :pswitch_130
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_layout:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotItemRootView:Landroid/widget/FrameLayout;

    .line 217
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedText:Landroid/widget/TextView;

    .line 218
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_chosen_sign:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedChosenSign:Landroid/widget/ImageView;

    .line 221
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-nez v5, :cond_15d

    .line 222
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_168

    .line 224
    :cond_15d
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    .line 226
    :goto_168
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedText:Landroid/widget/TextView;

    iget v7, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemTextName:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 227
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-nez v6, :cond_182

    .line 228
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedChosenSign:Landroid/widget/ImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_199

    .line 231
    :cond_182
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->resetImageViewScale()V

    .line 232
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v6, :cond_191

    .line 233
    sget v4, Lcom/transsion/camera/R$drawable;->lc_vps_item_background:I

    .line 232
    :cond_191
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_199
    const/4 v1, 0x3

    .line 236
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 237
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mResource:Landroid/content/res/Resources;

    invoke-direct {v1, p1, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    .line 238
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v4, "key_video_spot_level"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->initDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto/16 :goto_247

    .line 191
    :pswitch_1bd
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_layout:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitItemRootView:Landroid/widget/FrameLayout;

    .line 192
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedText:Landroid/widget/TextView;

    .line 193
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_chosen_sign:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedChosenSign:Landroid/widget/ImageView;

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-nez v5, :cond_1ea

    .line 197
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_1f5

    .line 199
    :cond_1ea
    sget v5, Lcom/transsion/camera/R$id;->video_portrait_spot_item_image:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    .line 201
    :goto_1f5
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedText:Landroid/widget/TextView;

    iget v8, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemTextName:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-nez v6, :cond_20f

    .line 203
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedChosenSign:Landroid/widget/ImageView;

    sget v4, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_selected:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_226

    .line 206
    :cond_20f
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->resetImageViewScale()V

    .line 207
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v6, :cond_21e

    .line 208
    sget v4, Lcom/transsion/camera/R$drawable;->lc_vps_item_background:I

    .line 207
    :cond_21e
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 209
    iget v1, v1, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 211
    :goto_226
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 212
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mResource:Landroid/content/res/Resources;

    invoke-direct {v1, p1, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    .line 213
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v4, "key_video_portrait_level"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->initDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 241
    :goto_247
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_15

    :cond_253
    return-void

    :sswitch_data_254
    .sparse-switch
        -0x4156e741 -> :sswitch_b1
        0x4cb8826 -> :sswitch_a8
        0x1226fc4d -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1bd
        :pswitch_130
        :pswitch_c1
    .end packed-switch
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 7

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_bf

    const-string v3, "on"

    const/4 v4, 0x2

    if-eq v0, v4, :cond_69

    const/4 v4, 0x3

    if-eq v0, v4, :cond_12

    goto/16 :goto_e8

    .line 306
    :cond_12
    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    if-eq v0, v4, :cond_e8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mEnable:Z

    if-eqz v0, :cond_e8

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_e8

    .line 309
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v0, "key_video_spot"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v3, "key_video_spot_level"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCurrentScaleValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz p1, :cond_5a

    .line 313
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 315
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    invoke-virtual {p1, v2, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 316
    iput v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mItemClickCallback:Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;

    if-eqz p0, :cond_e8

    .line 318
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;->itemClickCallback()V

    return-void

    .line 290
    :cond_69
    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    if-eq v0, v4, :cond_e8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mEnable:Z

    if-eqz v0, :cond_e8

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_e8

    .line 293
    :cond_78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v0, "key_video_portrait"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v3, "key_video_portrait_level"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCurrentScaleValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p1, :cond_b0

    .line 297
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 299
    :cond_b0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    invoke-virtual {p1, v2, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 300
    iput v4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mItemClickCallback:Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;

    if-eqz p0, :cond_e8

    .line 302
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;->itemClickCallback()V

    return-void

    .line 276
    :cond_bf
    iget v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    if-eq v0, v2, :cond_e8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mEnable:Z

    if-eqz v0, :cond_e8

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto :goto_e8

    .line 279
    :cond_ce
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->closeCurrentSettingValue()V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p1, :cond_df

    .line 282
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 284
    :cond_df
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz p1, :cond_e6

    .line 285
    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 287
    :cond_e6
    iput v2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    :cond_e8
    :goto_e8
    return-void
.end method

.method private portraitSpotHasValueInStore()Z
    .registers 3

    .line 426
    const-string v0, "key_video_spot"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "key_video_portrait"

    .line 427
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private selectPortraitSpotItem(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v0

    :goto_d
    const/4 v4, 0x3

    if-ne p1, v4, :cond_11

    move v0, v1

    .line 329
    :cond_11
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneItemImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 333
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedText:Landroid/widget/TextView;

    if-eqz p1, :cond_35

    .line 334
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneItemRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 337
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mNoneSelectedChosenSign:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setChosenSignImage(Landroid/widget/ImageView;Z)V

    .line 341
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedText:Landroid/widget/TextView;

    if-eqz p1, :cond_4e

    .line 342
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitItemRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 345
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSelectedChosenSign:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setChosenSignImage(Landroid/widget/ImageView;Z)V

    .line 349
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedText:Landroid/widget/TextView;

    if-eqz p1, :cond_67

    .line 350
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotItemRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 353
    :cond_5d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mSpotSelectedChosenSign:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->setChosenSignImage(Landroid/widget/ImageView;Z)V

    :cond_67
    return-void
.end method

.method private setChosenSignImage(Landroid/widget/ImageView;Z)V
    .registers 4

    .line 359
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_15

    .line 361
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mIsLowLight:Z

    if-eqz p0, :cond_f

    sget p0, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_screen_light:I

    goto :goto_11

    :cond_f
    sget p0, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_selected:I

    :goto_11
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 363
    :cond_15
    sget p0, Lcom/transsion/camera/R$drawable;->video_portrait_spot_item_cover_transparent:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public clearPortraitSpotContainerList()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainerList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 404
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotCompatIconList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 407
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemList:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 410
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    if-eqz p0, :cond_1c

    .line 413
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1c
    return-void
.end method

.method public getCurrentItemSelected()I
    .registers 1

    .line 513
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    return p0
.end method

.method public hideVideoPortraitSpotScaleBar()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 432
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    .line 435
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz p0, :cond_f

    .line 436
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    :cond_f
    return-void
.end method

.method public initScrPortraitSpot()V
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 496
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;->initScaleData()V

    .line 498
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p0, :cond_e

    .line 499
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;->initScaleData()V

    :cond_e
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Landroid/view/ViewGroup;)V
    .registers 5

    .line 100
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mResource:Landroid/content/res/Resources;

    .line 101
    iput-object p4, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemContainer:Landroid/view/ViewGroup;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->initPortraitSpotItemView(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 104
    const-string p1, "key_video_portrait"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x2

    .line 105
    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    goto :goto_2c

    .line 106
    :cond_19
    const-string p1, "key_video_spot"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x3

    .line 107
    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    goto :goto_2c

    :cond_29
    const/4 p1, 0x1

    .line 109
    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    .line 112
    :goto_2c
    iget p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    return-void
.end method

.method public recoverPanelStatus(Z)V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-nez v0, :cond_9

    goto :goto_1d

    :cond_9
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 373
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    .line 375
    :cond_e
    iget p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    .line 376
    iget p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    const/4 v1, 0x2

    const-string v2, "on"

    if-eq p1, v1, :cond_4e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    :goto_1d
    return-void

    .line 383
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v1, "key_video_spot"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v2, "key_video_spot_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCurrentScaleValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    return-void

    .line 378
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v1, "key_video_portrait"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    const-string v2, "key_video_portrait_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCurrentScaleValue(Lcom/transsion/camera/app/common/setting/ISetting;Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleBarVisibility(ZZ)V

    return-void
.end method

.method public resetScrValue()V
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 505
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->resetValue()V

    .line 507
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p0, :cond_e

    .line 508
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->resetValue()V

    :cond_e
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 462
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 464
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p0, :cond_e

    .line 465
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_e
    return-void
.end method

.method public setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 456
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p0, :cond_e

    .line 457
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    :cond_e
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .registers 7

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVspSettingMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_4

    :cond_1f
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 491
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mEnable:Z

    return-void
.end method

.method public setItemClickCallback(Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mItemClickCallback:Lcom/transsion/camera/ui/setting/videoportraitspot/ISettingItemClickCallback;

    return-void
.end method

.method public setRecordStatus(Z)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 482
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setRecordStatus(Z)V

    .line 485
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz p0, :cond_e

    .line 486
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->setRecordStatus(Z)V

    :cond_e
    return-void
.end method

.method public updateItemLayout(II)V
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_7

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleGroupLayout(II)V

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz v0, :cond_e

    .line 251
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateScaleGroupLayout(II)V

    .line 253
    :cond_e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    if-nez p1, :cond_2d

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotCompatIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 255
    invoke-interface {v2, p2, v1}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_1d

    .line 258
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotContainerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 259
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_4b

    if-nez p1, :cond_4b

    .line 260
    invoke-virtual {v2, p2, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_33

    :cond_4b
    const/4 v3, 0x0

    if-ne p1, v1, :cond_51

    const/16 v4, 0x5a

    goto :goto_52

    :cond_51
    move v4, v3

    .line 262
    :goto_52
    invoke-virtual {v2, v4, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_33

    .line 265
    :cond_56
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mPortraitSpotItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-ne p1, v1, :cond_79

    .line 268
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_item_margin_expand:I

    :goto_74
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_7e

    :cond_79
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mResource:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_portrait_spot_item_margin:I

    goto :goto_74

    :goto_7e
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 269
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5c

    :cond_84
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 391
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mIsLowLight:Z

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoSpotUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;

    if-eqz v0, :cond_9

    .line 393
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateLowLight(Z)V

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mVideoPortraitUI:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    if-eqz v0, :cond_10

    .line 397
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->updateLowLight(Z)V

    .line 399
    :cond_10
    iget p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->mCurrentItemSelected:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitspot/manager/VideoPortraitSpotUIManager;->selectPortraitSpotItem(I)V

    return-void
.end method
