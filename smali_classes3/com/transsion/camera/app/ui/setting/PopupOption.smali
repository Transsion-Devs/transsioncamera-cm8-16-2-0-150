.class public Lcom/transsion/camera/app/ui/setting/PopupOption;
.super Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mCurPreviewValue:Ljava/lang/String;

.field private mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field private mCurrentValue:Ljava/lang/String;

.field private mDirection:I

.field private mDownEventInBounds:Z

.field private mEnable:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDismissing:Z

.field private final mIsShowImgViewOnly:Z

.field private mIsShowing:Z

.field private mIsVideoRecording:Z

.field private mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mItemClickPosition:I

.field private mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mItemRoot:Landroid/widget/FrameLayout;

.field private mItemText:Landroid/widget/TextView;

.field private final mNormalColor:I

.field private mOrientation:I

.field private mPopItemWidth:I

.field private mPopupBackground:Landroid/view/View;

.field public mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

.field private mPositionInTopbar:I

.field private mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenSupply:Z

.field private final mSelectColor:I

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

.field private final mSupplyColor:I

.field private mTag:I

.field private mTopBarRoot:Landroid/view/View;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTreasureBoxSupport:Z

.field private final mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

.field private mUseHorizontalPopupSytle:Z


# direct methods
.method public static synthetic $r8$lambda$mYFj35szYvyWGIOI7j5HHeK5J2s(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->lambda$inflateEntryViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sxGVvy70SumG02QB7nsx7fAXTyY(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->lambda$setOnClickListener$1(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationStrategy(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentTopBarItemUI(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionInTopbar(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowing(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchTouchEvent(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopupOption"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 12

    .line 126
    invoke-direct {p0, p7}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;-><init>(I)V

    const/4 p4, -0x1

    .line 80
    iput p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    .line 93
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 109
    iput v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    .line 790
    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopupOption$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$6;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 127
    iput p7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    iput-object p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 130
    iput-object p8, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 131
    invoke-virtual {p6, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/transsion/camera/R$bool;->top_bar_pop_option_show_img_only:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p4, :cond_4b

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 140
    :cond_4b
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p6, Lcom/transsion/camera/R$dimen;->pop_child_count_width:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopItemWidth:I

    .line 141
    new-instance p4, Landroid/widget/PopupWindow;

    iget p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopItemWidth:I

    invoke-direct {p4, p3, p6, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 p1, 0x44e

    .line 142
    invoke-static {p4, p1}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 143
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 144
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p4, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 147
    iget-object p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p4, p5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 148
    iput-object p9, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 150
    instance-of p4, p3, Landroid/view/ViewGroup;

    if-eqz p4, :cond_e1

    .line 151
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    .line 155
    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    .line 156
    sget p3, Lcom/transsion/camera/R$id;->popup_option_background:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    .line 158
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSupplyColor:I

    .line 159
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mNormalColor:I

    .line 160
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_select_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSelectColor:I

    .line 161
    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/setting/PopupOption-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    .line 162
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->useHorizontalPopupStyle()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 163
    iget p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    if-eqz p2, :cond_d4

    if-ne p2, p1, :cond_c7

    goto :goto_d4

    .line 190
    :cond_c7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$2;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;)V

    return-void

    .line 164
    :cond_d4
    :goto_d4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;)V

    return-void

    .line 153
    :cond_e1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PopupOptions needs a ViewGroup for content!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearContentListDrawable()V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 377
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method private dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 831
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    return-void
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V
    .registers 14

    .line 593
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_180

    .line 597
    :cond_8
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 598
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    .line 600
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 599
    const-string v4, "color_control_activated"

    const-string v5, "color"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 602
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_180

    .line 605
    :try_start_31
    sget v5, Lcom/transsion/camera/R$layout;->pop_option_item:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_17c

    .line 609
    sget v6, Lcom/transsion/camera/R$id;->pop_option_root_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    .line 610
    sget v6, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 611
    sget v6, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 612
    sget v6, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    .line 613
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_73

    const/16 v7, 0x8

    .line 614
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a0

    .line 617
    :cond_73
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 619
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 620
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    xor-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 621
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$5;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$5;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 634
    :goto_a0
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d9

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-le v6, v4, :cond_d9

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 638
    :cond_d9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 639
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_e9

    move v7, v8

    goto :goto_ea

    :cond_e9
    move v7, v3

    :goto_ea
    invoke-direct {p0, v6, v7, p3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->wrapListDrawable(Landroid/widget/ImageView;ZZ)V

    .line 641
    :cond_ed
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v6, :cond_fd

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-eqz v6, :cond_fd

    .line 642
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v7, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_100

    .line 644
    :cond_fd
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemBackground()V

    .line 646
    :goto_100
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v6, :cond_12b

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-eqz v6, :cond_12b

    .line 647
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_11b

    .line 648
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_127

    .line 649
    :cond_11b
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 647
    :goto_127
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_14d

    .line 651
    :cond_12b
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_13e

    .line 652
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_14a

    .line 653
    :cond_13e
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 651
    :goto_14a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :goto_14d
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 656
    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_15a

    .line 657
    invoke-virtual {v5, v6, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 660
    :cond_15a
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_161

    goto :goto_162

    :cond_161
    move v8, v3

    :goto_162
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 661
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    .line 662
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 678
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemLayout()V

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 679
    invoke-static {v5, v6, v7}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :catch_17c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2e

    :cond_180
    :goto_180
    return-void
.end method

.method private synthetic lambda$inflateEntryViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 663
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 p2, 0x0

    if-nez p1, :cond_6

    return p2

    .line 666
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-nez p1, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 667
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_1f

    .line 668
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_22

    .line 670
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    goto :goto_22

    .line 673
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_22
    :goto_22
    return p2
.end method

.method private synthetic lambda$setOnClickListener$1(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/view/View;)V
    .registers 6

    .line 732
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    if-eqz v0, :cond_3d

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3d

    .line 735
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 736
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 737
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_20

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2e

    .line 738
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    .line 743
    :cond_2e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p2, :cond_35

    .line 744
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    :cond_35
    const/4 p2, 0x0

    .line 746
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    .line 747
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    .line 748
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private processScreenSupply(Z)V
    .registers 6

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    .line 878
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_36

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_36

    .line 881
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 882
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 883
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz p1, :cond_2f

    const/high16 v3, -0x1000000

    .line 885
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_33

    :cond_2f
    const/4 v3, 0x0

    .line 887
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_36
    return-void
.end method

.method private setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V
    .registers 3

    .line 731
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldTintDrawable()Z
    .registers 4

    .line 896
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 899
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 903
    :cond_d
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_12

    return v1

    .line 906
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 907
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldTintForPopupItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateItemBGScreenSupply(Z)V
    .registers 7

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 860
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_33

    .line 863
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 864
    sget v3, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 865
    sget v4, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 867
    sget v2, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_30

    .line 869
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemBackground()V

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_33
    return-void
.end method

.method private updateItemBackground()V
    .registers 5

    .line 684
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v0, :cond_83

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_e

    goto/16 :goto_83

    .line 687
    :cond_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_7c

    .line 688
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 689
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "1:1"

    .line 692
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 693
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 694
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 695
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInUltraHDMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 696
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_74

    .line 700
    :cond_6c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_light_ui5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 697
    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_ui5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 704
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method private updateItemLayout()V
    .registers 6

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 711
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 712
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 713
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_47

    .line 714
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 715
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 716
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_82

    .line 717
    :cond_47
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-eqz v3, :cond_60

    .line 718
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 719
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_82

    .line 721
    :cond_60
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 722
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 723
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 725
    :goto_82
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private wrapListDrawable(Landroid/widget/ImageView;ZZ)V
    .registers 4

    if-eqz p2, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_f

    const/high16 p0, -0x1000000

    .line 917
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_f
    const/4 p0, 0x0

    .line 919
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected applyDismissPopup()V
    .registers 2

    .line 924
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 925
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_d
    return-void
.end method

.method public dismissPopup()V
    .registers 10

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    if-eqz v0, :cond_d

    goto :goto_5d

    .line 298
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    if-eqz v0, :cond_1d

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-nez v0, :cond_1d

    goto :goto_5d

    .line 305
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 306
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_34

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 307
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The popup window is dismissing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_34
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    iget v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDirection:I

    new-instance v8, Lcom/transsion/camera/app/ui/setting/PopupOption$3;

    invoke-direct {v8, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$3;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 343
    :cond_4f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return-void
.end method

.method public doOnDismiss()V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v1, :cond_e

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 362
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->clearContentListDrawable()V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_16
    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v1, :cond_23

    const/4 v2, 0x1

    .line 367
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 368
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    :cond_23
    return-void
.end method

.method public getItemSelectPosition()I
    .registers 1

    .line 836
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    return p0
.end method

.method public getTag()I
    .registers 1

    .line 289
    invoke-super {p0}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result p0

    return p0
.end method

.method public initScreenForm(IZ)V
    .registers 3

    .line 218
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getTag()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupDismiss(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 6

    .line 223
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_20

    .line 227
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 228
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_1d

    .line 229
    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_20
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 237
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 p2, 0x1

    if-eq p2, p1, :cond_40

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x2

    .line 240
    new-array p1, p1, [I

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    aget p1, p1, p2

    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez p1, :cond_40

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_40
    return-void
.end method

.method public onScreenSupply(Z)V
    .registers 7

    .line 841
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_d

    .line 844
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 846
    :goto_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 847
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->processScreenSupply(Z)V

    .line 849
    :cond_17
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemBGScreenSupply(Z)V

    const/4 v1, 0x0

    .line 850
    :goto_1b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 851
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 852
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_38

    .line 853
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSupplyColor:I

    goto :goto_3f

    :cond_38
    if-ne v1, v0, :cond_3d

    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSelectColor:I

    goto :goto_3f

    :cond_3d
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mNormalColor:I

    :goto_3f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_54
    return-void
.end method

.method public setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V
    .registers 2

    .line 584
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-void
.end method

.method public setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIILjava/lang/String;)V
    .registers 7

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p1, -0x1

    invoke-virtual {p0, p3, p4, p1, p1}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    .line 546
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 547
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getTag()I

    move-result p0

    invoke-virtual {p2, p0, p5}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupShow(ILjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 549
    sget-object p2, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "showAtLocation WindowToken: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exception: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z
    .registers 20

    move-object/from16 v2, p2

    .line 384
    iput-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    move/from16 v3, p5

    .line 385
    iput v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDirection:I

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 387
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 388
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    .line 389
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 390
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 391
    array-length v4, v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4b

    .line 392
    sget-object v1, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":  inflateEntryViews "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " entryValues size mismatching it`s drawables size so return!!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v6

    :cond_4b
    move v4, v6

    .line 395
    :goto_4c
    array-length v5, v3

    if-ge v4, v5, :cond_5b

    .line 396
    aget-object v5, v3, v4

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 397
    iput v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    :cond_5b
    move/from16 v3, p3

    goto :goto_61

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 401
    :goto_61
    iput v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    .line 402
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/16 v4, 0xb4

    const/16 v5, 0x10e

    const/16 v7, 0x5a

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_13d

    .line 403
    sget-object v3, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " showPopupIfNeed mScreenFormType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "mLastScreenFormType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v13}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 v12, -0x1

    if-ne v3, v11, :cond_e5

    .line 405
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    iget v13, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    if-eq v13, v7, :cond_cc

    if-ne v13, v5, :cond_b3

    goto :goto_cc

    :cond_b3
    if-eqz v13, :cond_b7

    if-ne v13, v4, :cond_e0

    .line 411
    :cond_b7
    const-string/jumbo v13, "type_c"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_e0

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    goto :goto_e0

    .line 407
    :cond_cc
    :goto_cc
    const-string/jumbo v13, "type_f"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_e0

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 415
    :cond_e0
    :goto_e0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3, v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    .line 417
    :cond_e5
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v9, :cond_101

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 418
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 419
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v8, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 420
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v11, :cond_135

    :cond_101
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v8, :cond_11d

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 423
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 424
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v9, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 425
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v11, :cond_135

    :cond_11d
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v10, :cond_131

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 428
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v8, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 429
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v9, :cond_135

    :cond_131
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsVideoRecording:Z

    if-eqz v3, :cond_13d

    .line 431
    :cond_135
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 432
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3, v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    .line 435
    :cond_13d
    iput-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 436
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 437
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_150

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_14e

    goto :goto_150

    :cond_14e
    move v2, v6

    goto :goto_151

    :cond_150
    :goto_150
    move v2, v11

    :goto_151
    if-eqz v2, :cond_159

    .line 438
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez v3, :cond_159

    move v3, v11

    goto :goto_15a

    :cond_159
    move v3, v6

    :goto_15a
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    if-eqz v2, :cond_313

    .line 441
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/transsion/camera/app/ui/setting/PopupOption$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$4;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 453
    iget v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    if-eq v2, v10, :cond_173

    .line 454
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast v2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 455
    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->cancelLayoutEndAnim(Z)V

    .line 458
    :cond_173
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move/from16 v12, p4

    invoke-direct {p0, v2, v3, v12}, Lcom/transsion/camera/app/ui/setting/PopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V

    .line 459
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 460
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v11, :cond_206

    .line 461
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    if-eq v3, v7, :cond_1e8

    if-eq v3, v4, :cond_1ca

    if-eq v3, v5, :cond_1ac

    .line 480
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 481
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin:I

    .line 482
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 483
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x33

    move-object v0, p0

    .line 480
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    .line 474
    :cond_1ac
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width_margin:I

    .line 475
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 476
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x35

    move-object v0, p0

    .line 474
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    .line 468
    :cond_1ca
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 469
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin:I

    .line 470
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 471
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x55

    move-object v0, p0

    .line 468
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    .line 463
    :cond_1e8
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width_margin:I

    .line 464
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 465
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x53

    move-object v0, p0

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    :cond_206
    if-ne v3, v10, :cond_227

    .line 487
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->column_pop_setting_right_and_left_margin:I

    .line 488
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->column_top_bar_base_height:I

    .line 489
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const v2, 0x800035

    move-object v0, p0

    .line 487
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    :cond_227
    if-ne v3, v9, :cond_246

    .line 491
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->left_hover_left_margin:I

    .line 492
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    .line 493
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    .line 491
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    :cond_246
    if-ne v3, v8, :cond_265

    .line 495
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->right_hover_left_margin:I

    .line 496
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    .line 497
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    .line 495
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_2f9

    :cond_265
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2ac

    .line 499
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 500
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 502
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurPreviewValue:Ljava/lang/String;

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28a

    .line 503
    sget v3, Lcom/transsion/camera/R$dimen;->popup_option_switch_preview_on_location_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_288
    move v4, v2

    goto :goto_29a

    :cond_28a
    shr-int/lit8 v2, v3, 0x1

    .line 505
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_middle_hover_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_288

    .line 507
    :goto_29a
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 508
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    move-object v0, p0

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_2f9

    .line 511
    :cond_2ac
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_2e2

    .line 512
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v3, v9, :cond_2ba

    :goto_2b8
    move v3, v6

    goto :goto_2c1

    .line 515
    :cond_2ba
    sget v3, Lcom/transsion/camera/R$dimen;->popwindow_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_2b8

    .line 517
    :goto_2c1
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->treasure_box_pop_bottom_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIMarginBottom(I)I

    move-result v4

    .line 518
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 519
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x51

    move-object v0, p0

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_2f9

    .line 521
    :cond_2e2
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 522
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    move-object v0, p0

    .line 521
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    .line 527
    :goto_2f9
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz v1, :cond_300

    .line 528
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupShow()V

    .line 531
    :cond_300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez v1, :cond_312

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_312
    return v11

    :cond_313
    return v6
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurPreviewValue:Ljava/lang/String;

    return-void
.end method

.method public updateVideoRecordingState(Z)V
    .registers 2

    .line 587
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsVideoRecording:Z

    return-void
.end method
