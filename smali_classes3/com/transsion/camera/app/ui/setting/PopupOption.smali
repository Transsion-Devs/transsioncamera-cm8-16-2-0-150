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

.field private mPopupOperationVersion:I

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

.method static bridge synthetic -$$Nest$fgetmPopupOperationVersion(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    return p0
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

    .line 127
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

    .line 100
    iput v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    .line 808
    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopupOption$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$6;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 128
    iput p7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    .line 130
    iput-object p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 131
    iput-object p8, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 132
    invoke-virtual {p6, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/transsion/camera/R$bool;->top_bar_pop_option_show_img_only:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p4, :cond_4d

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 141
    :cond_4d
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p6, Lcom/transsion/camera/R$dimen;->pop_child_count_width:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopItemWidth:I

    .line 142
    new-instance p4, Landroid/widget/PopupWindow;

    iget p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopItemWidth:I

    invoke-direct {p4, p3, p6, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 p1, 0x44e

    .line 143
    invoke-static {p4, p1}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 144
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 145
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p4, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 148
    iget-object p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p4, p5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 149
    iput-object p9, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 151
    instance-of p4, p3, Landroid/view/ViewGroup;

    if-eqz p4, :cond_e3

    .line 152
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    .line 156
    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    .line 157
    sget p3, Lcom/transsion/camera/R$id;->popup_option_background:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    .line 159
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSupplyColor:I

    .line 160
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mNormalColor:I

    .line 161
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$color;->pop_setting_item_select_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSelectColor:I

    .line 162
    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/setting/PopupOption-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->useHorizontalPopupStyle()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 164
    iget p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    if-eqz p2, :cond_d6

    if-ne p2, p1, :cond_c9

    goto :goto_d6

    .line 191
    :cond_c9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$2;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;)V

    return-void

    .line 165
    :cond_d6
    :goto_d6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;)V

    return-void

    .line 154
    :cond_e3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PopupOptions needs a ViewGroup for content!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearContentListDrawable()V
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 390
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 391
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

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 849
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    return-void
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V
    .registers 14

    .line 609
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_180

    .line 613
    :cond_8
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 614
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 615
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    .line 616
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 615
    const-string v4, "color_control_activated"

    const-string v5, "color"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 618
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_180

    .line 621
    :try_start_31
    sget v5, Lcom/transsion/camera/R$layout;->pop_option_item:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_17c

    .line 625
    sget v6, Lcom/transsion/camera/R$id;->pop_option_root_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    .line 626
    sget v6, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 627
    sget v6, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 628
    sget v6, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    .line 629
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_73

    const/16 v7, 0x8

    .line 630
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a0

    .line 633
    :cond_73
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 635
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 636
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    xor-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 637
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$5;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$5;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 650
    :goto_a0
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 651
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d9

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-le v6, v4, :cond_d9

    .line 652
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

    .line 654
    :cond_d9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 655
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

    .line 657
    :cond_ed
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v6, :cond_fd

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-eqz v6, :cond_fd

    .line 658
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v7, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_100

    .line 660
    :cond_fd
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemBackground()V

    .line 662
    :goto_100
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v6, :cond_12b

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-eqz v6, :cond_12b

    .line 663
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_11b

    .line 664
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_127

    .line 665
    :cond_11b
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 663
    :goto_127
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_14d

    .line 667
    :cond_12b
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v7, :cond_13e

    .line 668
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_14a

    .line 669
    :cond_13e
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 667
    :goto_14a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    :goto_14d
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 672
    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_15a

    .line 673
    invoke-virtual {v5, v6, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 676
    :cond_15a
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_161

    goto :goto_162

    :cond_161
    move v8, v3

    :goto_162
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 677
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    .line 678
    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 694
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemLayout()V

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 695
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

    .line 679
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 p2, 0x0

    if-nez p1, :cond_6

    return p2

    .line 682
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-nez p1, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 683
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_1f

    .line 684
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_22

    .line 686
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    goto :goto_22

    .line 689
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_22
    :goto_22
    return p2
.end method

.method private synthetic lambda$setOnClickListener$1(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/view/View;)V
    .registers 6

    .line 750
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    if-eqz v0, :cond_3d

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_3d

    .line 753
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 754
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 755
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_20

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2e

    .line 756
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    .line 761
    :cond_2e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p2, :cond_35

    .line 762
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    :cond_35
    const/4 p2, 0x0

    .line 764
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDownEventInBounds:Z

    .line 765
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private processScreenSupply(Z)V
    .registers 6

    .line 895
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    .line 896
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_36

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_36

    .line 899
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 900
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 901
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz p1, :cond_2f

    const/high16 v3, -0x1000000

    .line 903
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_33

    :cond_2f
    const/4 v3, 0x0

    .line 905
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

    .line 749
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldTintDrawable()Z
    .registers 4

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 917
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 921
    :cond_d
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_12

    return v1

    .line 924
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 925
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldTintForPopupItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateItemBGScreenSupply(Z)V
    .registers 7

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 878
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_33

    .line 881
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 882
    sget v3, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 883
    sget v4, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 885
    sget v2, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_30

    .line 887
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

    .line 700
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-nez v0, :cond_8d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_e

    goto/16 :goto_8d

    .line 703
    :cond_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_86

    .line 704
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 707
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPictureRatioCustomizedIndia:Z

    .line 706
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getPictureRatioDefaultForStore(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_global_scope"

    .line 705
    const-string v3, "key_picture_ratio"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "4:3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "1:1"

    .line 710
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 711
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 712
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 713
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInUltraHDMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 714
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_7e

    .line 718
    :cond_76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_light_ui5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 715
    :cond_7e
    :goto_7e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_ui5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 722
    :cond_86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private updateItemLayout()V
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 729
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 730
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 731
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_47

    .line 732
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 733
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 734
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_82

    .line 735
    :cond_47
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowImgViewOnly:Z

    if-eqz v3, :cond_60

    .line 736
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 737
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_82

    .line 739
    :cond_60
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 740
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 741
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemBackground:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 743
    :goto_82
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemImage:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
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

    .line 935
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_f
    const/4 p0, 0x0

    .line 937
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected applyDismissPopup()V
    .registers 2

    .line 942
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 943
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    :cond_d
    return-void
.end method

.method public dismissPopup()V
    .registers 11

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    if-eqz v0, :cond_d

    goto :goto_62

    .line 299
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    if-eqz v0, :cond_1d

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-nez v0, :cond_1d

    goto :goto_62

    .line 306
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 307
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_34

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 308
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The popup window is dismissing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 312
    :cond_34
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 314
    iget v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    iget v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    iget v8, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDirection:I

    new-instance v9, Lcom/transsion/camera/app/ui/setting/PopupOption$3;

    invoke-direct {v9, p0, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption$3;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;I)V

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v9}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 355
    :cond_54
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_62
    :goto_62
    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .registers 4

    .line 363
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 367
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    return-void
.end method

.method public doOnDismiss()V
    .registers 5

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 372
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v1, :cond_e

    .line 373
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 376
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->clearContentListDrawable()V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_16
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v1, :cond_23

    const/4 v2, 0x1

    .line 381
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 382
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    :cond_23
    return-void
.end method

.method public getTag()I
    .registers 1

    .line 290
    invoke-super {p0}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result p0

    return p0
.end method

.method public initScreenForm(IZ)V
    .registers 3

    .line 219
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 592
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

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getTag()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupDismiss(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 6

    .line 224
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 226
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_20

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_1d

    .line 230
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

    .line 238
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 p2, 0x1

    if-eq p2, p1, :cond_40

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x2

    .line 241
    new-array p1, p1, [I

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
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

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez p1, :cond_40

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_40
    return-void
.end method

.method public onScreenSupply(Z)V
    .registers 7

    .line 859
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenSupply:Z

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_d

    .line 862
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 864
    :goto_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 865
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->processScreenSupply(Z)V

    .line 867
    :cond_17
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateItemBGScreenSupply(Z)V

    const/4 v1, 0x0

    .line 868
    :goto_1b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 869
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 870
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_38

    .line 871
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

    .line 872
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

    .line 600
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-void
.end method

.method public setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIILjava/lang/String;)V
    .registers 7

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p1, -0x1

    invoke-virtual {p0, p3, p4, p1, p1}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    .line 562
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getTag()I

    move-result p0

    invoke-virtual {p2, p0, p5}, Lcom/transsion/camera/app/ui/PopupOptionManager;->onPopupShow(ILjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 565
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

    .line 398
    iput-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    move/from16 v3, p5

    .line 399
    iput v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mDirection:I

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 401
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 402
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    .line 403
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 405
    array-length v4, v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4b

    .line 406
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

    .line 409
    :goto_4c
    array-length v5, v3

    if-ge v4, v5, :cond_5b

    .line 410
    aget-object v5, v3, v4

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 411
    iput v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    :cond_5b
    move/from16 v3, p3

    goto :goto_61

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 415
    :goto_61
    iput v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    .line 416
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

    .line 417
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

    .line 418
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 v12, -0x1

    if-ne v3, v11, :cond_e5

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 420
    iget v13, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    if-eq v13, v7, :cond_cc

    if-ne v13, v5, :cond_b3

    goto :goto_cc

    :cond_b3
    if-eqz v13, :cond_b7

    if-ne v13, v4, :cond_e0

    .line 425
    :cond_b7
    const-string/jumbo v13, "type_c"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_e0

    .line 426
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    goto :goto_e0

    .line 421
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

    .line 422
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 429
    :cond_e0
    :goto_e0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3, v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    .line 431
    :cond_e5
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v9, :cond_101

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 432
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 433
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v8, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 434
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v11, :cond_135

    :cond_101
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v8, :cond_11d

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 437
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v10, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 438
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v9, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 439
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v11, :cond_135

    :cond_11d
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v10, :cond_131

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 442
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v8, :cond_135

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 443
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getLastScreenType()I

    move-result v3

    if-eq v3, v9, :cond_135

    :cond_131
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsVideoRecording:Z

    if-eqz v3, :cond_13d

    .line 445
    :cond_135
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 446
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v3, v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    .line 449
    :cond_13d
    iput-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 450
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 451
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

    .line 452
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez v3, :cond_159

    move v3, v11

    goto :goto_15a

    :cond_159
    move v3, v6

    :goto_15a
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsShowing:Z

    if-eqz v2, :cond_31c

    .line 454
    iget v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    add-int/2addr v2, v11

    iput v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupOperationVersion:I

    .line 455
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 456
    iput-boolean v11, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/transsion/camera/app/ui/setting/PopupOption$4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$4;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 469
    iget v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTag:I

    if-eq v2, v10, :cond_17c

    .line 470
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast v2, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 471
    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->cancelLayoutEndAnim(Z)V

    .line 474
    :cond_17c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move/from16 v12, p4

    invoke-direct {p0, v2, v3, v12}, Lcom/transsion/camera/app/ui/setting/PopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V

    .line 475
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 476
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    if-ne v3, v11, :cond_20f

    .line 477
    iget v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    if-eq v3, v7, :cond_1f1

    if-eq v3, v4, :cond_1d3

    if-eq v3, v5, :cond_1b5

    .line 496
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 497
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin:I

    .line 498
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 499
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x33

    move-object v0, p0

    .line 496
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    .line 490
    :cond_1b5
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width_margin:I

    .line 491
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 492
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x35

    move-object v0, p0

    .line 490
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    .line 484
    :cond_1d3
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 485
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin:I

    .line 486
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 487
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x55

    move-object v0, p0

    .line 484
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    .line 479
    :cond_1f1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width_margin:I

    .line 480
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    .line 481
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x53

    move-object v0, p0

    .line 479
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    :cond_20f
    if-ne v3, v10, :cond_230

    .line 503
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->column_pop_setting_right_and_left_margin:I

    .line 504
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->column_top_bar_base_height:I

    .line 505
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const v2, 0x800035

    move-object v0, p0

    .line 503
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    :cond_230
    if-ne v3, v9, :cond_24f

    .line 507
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->left_hover_left_margin:I

    .line 508
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    .line 509
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    :cond_24f
    if-ne v3, v8, :cond_26e

    .line 511
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$dimen;->right_hover_left_margin:I

    .line 512
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    .line 513
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_302

    :cond_26e
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b5

    .line 515
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 518
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurPreviewValue:Ljava/lang/String;

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_293

    .line 519
    sget v3, Lcom/transsion/camera/R$dimen;->popup_option_switch_preview_on_location_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_291
    move v4, v2

    goto :goto_2a3

    :cond_293
    shr-int/lit8 v2, v3, 0x1

    .line 521
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_middle_hover_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_291

    .line 523
    :goto_2a3
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 524
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    move-object v0, p0

    .line 523
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_302

    .line 527
    :cond_2b5
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_2eb

    .line 528
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v3, v9, :cond_2c3

    :goto_2c1
    move v3, v6

    goto :goto_2ca

    .line 531
    :cond_2c3
    sget v3, Lcom/transsion/camera/R$dimen;->popwindow_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_2c1

    .line 533
    :goto_2ca
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->treasure_box_pop_bottom_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {v4, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIMarginBottom(I)I

    move-result v4

    .line 534
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 535
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x51

    move-object v0, p0

    .line 534
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_302

    .line 537
    :cond_2eb
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 538
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result v4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    move-object v0, p0

    .line 537
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    .line 543
    :goto_302
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz v1, :cond_309

    .line 544
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupShow()V

    .line 547
    :cond_309
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTreasureBoxSupport:Z

    if-nez v1, :cond_31b

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_31b
    return v11

    :cond_31c
    return v6
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurPreviewValue:Ljava/lang/String;

    return-void
.end method

.method public updateVideoRecordingState(Z)V
    .registers 2

    .line 603
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsVideoRecording:Z

    return-void
.end method
