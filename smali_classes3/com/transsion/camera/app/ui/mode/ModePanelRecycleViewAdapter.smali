.class public Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mItemClickable:Z

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeUIItems:Ljava/util/List;

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private final mSelectedColorList:Landroid/content/res/ColorStateList;

.field private final mUnSelectedColorList:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$ZpvuFIkDbg7bu-jQlwTPM2zuUqY(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oT2dsuDREO_cCXdVlU_sjCSwywQ(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    .line 45
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 46
    sget p2, Lcom/transsion/camera/R$color;->selected_mode_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mSelectedColorList:Landroid/content/res/ColorStateList;

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$color;->unselected_pic_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mUnSelectedColorList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    if-eqz v0, :cond_17

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->vibrate()V

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)Z
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->vibrate()V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->enterEditorFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private vibrate()V
    .registers 2

    .line 110
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 111
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string v0, "Cam_mode_sw.he"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 29
    check-cast p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;I)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 60
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$drawable;->ripple_model_panel_item:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    iget-boolean v2, p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 64
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$drawable;->mode_icon_selling_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v1, v2}, [Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 68
    :cond_37
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_3c
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_56

    .line 74
    iget-object v2, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5b

    .line 76
    :cond_56
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_5b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 80
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mSelectedColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$color;->selected_mode_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_9f

    .line 84
    :cond_84
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mUnSelectedColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$color;->unselected_mode_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    :goto_9f
    iget-object v1, p1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    if-eqz p2, :cond_cb

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->isSecureCamera()Z

    move-result p2

    if-nez p2, :cond_cb

    .line 98
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    :cond_cb
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
    .registers 6

    .line 53
    new-instance p2, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->mode_ui_layout:I

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;-><init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mCurrentMode:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItemClickable(Z)V
    .registers 3

    .line 130
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    if-eq v0, p1, :cond_9

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mItemClickable:Z

    .line 132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->mModeUIItems:Ljava/util/List;

    return-void
.end method
