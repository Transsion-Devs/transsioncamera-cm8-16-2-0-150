.class public Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;
.super Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mColumnHalfPopWindowTopMargin:I

.field private mColumnPopWindowTopMargin:I

.field private final mContentRoot:Landroid/view/ViewGroup;

.field private mCurrentValue:Ljava/lang/String;

.field private mDirection:I

.field private mDownEventInBounds:Z

.field private mEnable:Z

.field private mHalfPopWindowHoverTopMargin:I

.field private mHalfPopWindowTopMargin:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsDismissing:Z

.field private mIsInVideoMode:Z

.field private mItemBackground:Landroid/widget/ImageView;

.field private mItemClickPosition:I

.field private mItemImage:Landroid/widget/ImageView;

.field private mItemRoot:Landroid/widget/FrameLayout;

.field private mItemText:Landroid/widget/TextView;

.field private mListSize:I

.field private final mNormalColor:I

.field private mOrientation:I

.field private final mPopSettingContainer:Landroid/view/View;

.field private mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

.field private final mPopSettingPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

.field private final mPopWindowHeight:I

.field private mPopWindowHoverTopMargin:I

.field private final mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPopWindowTopMargin:I

.field private final mPopWindowWidth:I

.field private final mPopupBackground:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

.field private mPositionInPopSetting:I

.field private mResources:Landroid/content/res/Resources;

.field private mScreenFormType:I

.field private mScreenSupply:Z

.field private final mSelectColor:I

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

.field private final mSupplyColor:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTreasureBoxSupport:Z

.field private final mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

.field private final mUseHorizontalPopupStyle:Z


# direct methods
.method public static synthetic $r8$lambda$-FJZ4Ryo_BcuOMLKm8x6mIfHd9s(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->lambda$setOnClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AtxLaQ31ONhQiJ_I3fAKVwFzpJU(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->lambda$inflateEntryViews$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q3tq2mXUaSgkjtoBkgT1UPGmXwY(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->lambda$showPopupIfNeed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wAJNJK_ZKdXXX-Emyxkn65zAO-0(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->lambda$overrideOnClickListener$4(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationStrategy(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentRoot(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDownEventInBounds:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingPopupOptionManager(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupBackground(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupBackground:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/PopupWindow;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupWindowListener(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionInPopSetting(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDownEventInBounds:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearContentListDrawable(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->clearContentListDrawable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingPopupOption"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateLayout;ILcom/transsion/camera/app/ui/PopSettingPopupOptionManager;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 10

    .line 124
    invoke-direct {p0, p7}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;-><init>(I)V

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p7

    iput-boolean p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    const/4 p7, -0x1

    .line 87
    iput p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    const/4 p7, 0x0

    .line 98
    iput p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    .line 108
    iput-boolean p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    .line 109
    iput-boolean p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    .line 114
    iput-boolean p7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDownEventInBounds:Z

    .line 961
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    iput-object p6, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 127
    invoke-virtual {p6, p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V

    .line 128
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p4, p5, p5, p7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 130
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/transsion/camera/R$dimen;->top_bar_common_width:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    const/16 p5, 0x44e

    .line 131
    invoke-static {p1, p5}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 132
    invoke-virtual {p1, p7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 133
    iput-object p4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p4, 0x1

    .line 134
    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 135
    iget-object p4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 136
    iput-object p8, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 138
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_10e

    .line 139
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    .line 143
    sget p1, Lcom/transsion/camera/R$id;->pop_setting_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    .line 145
    sget p4, Lcom/transsion/camera/R$id;->pop_setting_popup_option_background:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupBackground:Landroid/view/View;

    .line 147
    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->useHorizontalPopupStyle()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUseHorizontalPopupStyle:Z

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p4, Lcom/transsion/camera/R$dimen;->pop_option_item_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIHeight(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHoverTopMargin:I

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowHoverTopMargin:I

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 162
    :cond_d1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSupplyColor:I

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mNormalColor:I

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$color;->pop_setting_item_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSelectColor:I

    .line 167
    check-cast p3, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    new-instance p1, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;)V

    return-void

    .line 141
    :cond_10e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PopupOptions needs a ViewGroup for content!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearContentListDrawable()V
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 428
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
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

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;Z)V
    .registers 13

    .line 778
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v0, :cond_a

    goto/16 :goto_1a9

    .line 782
    :cond_a
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    .line 783
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p2

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    .line 785
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 784
    const-string v2, "color_control_activated"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 787
    :goto_34
    array-length v3, p2

    if-ge v2, v3, :cond_1a9

    .line 788
    sget v3, Lcom/transsion/camera/R$layout;->pop_option_item:I

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 790
    sget v4, Lcom/transsion/camera/R$id;->pop_option_root_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    .line 791
    sget v4, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    .line 792
    sget v4, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemBackground:Landroid/widget/ImageView;

    .line 793
    sget v4, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    .line 794
    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 796
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 797
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenSupply:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 798
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$4;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$4;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 810
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_dc

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v2, :cond_dc

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 814
    :cond_dc
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->shouldTintDrawable()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 815
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v2, v5, :cond_f0

    move v5, v6

    goto :goto_f1

    :cond_f0
    move v5, v1

    :goto_f1
    invoke-direct {p0, v4, v5, p3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->wrapListDrawable(Landroid/widget/ImageView;ZZ)V

    .line 817
    :cond_f4
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenSupply:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_101

    .line 818
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemBackground:Landroid/widget/ImageView;

    sget v7, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_106

    .line 820
    :cond_101
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4, v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 822
    :goto_106
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenSupply:Z

    if-eqz v4, :cond_131

    .line 823
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_121

    .line 824
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_12d

    .line 825
    :cond_121
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$color;->pop_setting_item_supply_color:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 823
    :goto_12d
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_157

    .line 827
    :cond_131
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_148

    .line 828
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_154

    .line 829
    :cond_148
    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$color;->pop_setting_item_normal_color:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 827
    :goto_154
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 831
    :goto_157
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 832
    iget v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_164

    .line 833
    invoke-virtual {v3, v4, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 836
    :cond_164
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_173

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUseHorizontalPopupStyle:Z

    if-nez v4, :cond_173

    goto :goto_174

    :cond_173
    move v6, v1

    :goto_174
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 837
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    if-eqz v4, :cond_18f

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 838
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    const-string v6, "settings"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 839
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->overrideOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    goto :goto_192

    .line 841
    :cond_18f
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    .line 843
    :goto_192
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v6, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 849
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemLayout()V

    const v4, 0x3f4ccccd    # 0.8f

    .line 850
    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    :cond_1a9
    :goto_1a9
    return-void
.end method

.method private synthetic lambda$inflateEntryViews$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 844
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 845
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$overrideOnClickListener$4(Landroid/view/View;)V
    .registers 3

    .line 951
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_15

    .line 954
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p1, :cond_12

    .line 955
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onCustomOptionIndexChanged()V

    .line 957
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    :cond_15
    :goto_15
    return-void
.end method

.method private synthetic lambda$setOnClickListener$2(Landroid/view/View;)V
    .registers 4

    .line 915
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    if-eqz v0, :cond_35

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_35

    .line 918
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 919
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v0, :cond_18

    .line 920
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    .line 922
    :cond_18
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemClickPosition:I

    .line 923
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    .line 924
    sget-object p1, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContentRoot.indexOfChild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemClickPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method private synthetic lambda$showPopupIfNeed$0()V
    .registers 1

    .line 471
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->doOnDismiss()V

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz p0, :cond_a

    .line 473
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupDismissEnd()V

    :cond_a
    return-void
.end method

.method private overrideOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V
    .registers 3

    .line 950
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private processScreenSupply(Z)V
    .registers 6

    .line 1091
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36

    .line 1092
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_36

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_36

    .line 1095
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 1096
    sget v3, Lcom/transsion/camera/R$id;->pop_option_item_img:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1097
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz p1, :cond_2f

    const/high16 v3, -0x1000000

    .line 1099
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_33

    :cond_2f
    const/4 v3, 0x0

    .line 1101
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

    .line 914
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldTintDrawable()Z
    .registers 4

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1113
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 1117
    :cond_d
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_12

    return v1

    .line 1120
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 1121
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldTintForPopupItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateItemLayout()V
    .registers 6

    .line 897
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 898
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 899
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 900
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_47

    .line 901
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 902
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 903
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->treasure_box_pop_option_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5b

    .line 905
    :cond_47
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_pop_option_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 906
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemBackground:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 908
    :goto_5b
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePopWindowLayoutParameters(II)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 201
    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_90_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 202
    iget-object v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_270_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 203
    iget-object v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_0_left_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 204
    iget-object v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_180_left_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 205
    iget-object v6, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_90_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 206
    iget-object v7, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_270_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 207
    iget-object v8, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_0_top_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 208
    iget-object v9, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_180_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 209
    iget-object v10, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_90_half_left_margin:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 210
    iget-object v11, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_270_half_left_margin:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 211
    iget-object v12, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_0_half_top_margin:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 212
    iget-object v13, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_180_half_top_margin:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 213
    iget v14, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6f

    .line 214
    iget-object v14, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 216
    :cond_6f
    iget-object v14, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v14, :cond_b6

    .line 217
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_78
    if-ge v15, v14, :cond_b6

    move/from16 v16, v2

    .line 219
    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 220
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_ab

    .line 221
    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_a1

    const/4 v2, 0x4

    if-eq v3, v2, :cond_95

    const/4 v2, 0x5

    if-ne v3, v2, :cond_97

    :cond_95
    const/4 v3, 0x1

    goto :goto_a2

    .line 226
    :cond_97
    move-object/from16 v2, v18

    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    const/4 v1, 0x0

    goto :goto_ad

    :cond_a1
    move v3, v2

    .line 224
    :goto_a2
    move-object/from16 v2, v18

    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v1, 0x0

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_ad

    :cond_ab
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_ad
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_78

    :cond_b6
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v3, 0x1

    .line 232
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-eqz v1, :cond_120

    move/from16 v2, p1

    if-ne v2, v3, :cond_120

    .line 233
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mListSize:I

    const/16 v14, 0xb4

    const/16 v15, 0x5a

    const/4 v3, 0x4

    if-le v2, v3, :cond_fa

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_fa

    .line 235
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    if-eqz v2, :cond_e9

    if-eq v2, v15, :cond_e5

    if-eq v2, v14, :cond_e2

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_de

    goto :goto_120

    :cond_de
    move v4, v7

    move/from16 v3, v17

    goto :goto_eb

    :cond_e2
    move v3, v5

    move v4, v9

    goto :goto_eb

    :cond_e5
    move v4, v6

    move/from16 v3, v16

    goto :goto_eb

    :cond_e9
    move v3, v4

    move v4, v8

    .line 255
    :goto_eb
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    return-void

    .line 258
    :cond_fa
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    if-eqz v2, :cond_110

    if-eq v2, v15, :cond_10d

    if-eq v2, v14, :cond_10a

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_107

    goto :goto_120

    :cond_107
    move v4, v7

    move v3, v11

    goto :goto_112

    :cond_10a
    move v3, v5

    move v4, v13

    goto :goto_112

    :cond_10d
    move v4, v6

    move v3, v10

    goto :goto_112

    :cond_110
    move v3, v4

    move v4, v12

    .line 278
    :goto_112
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    :cond_120
    :goto_120
    return-void
.end method

.method private wrapListDrawable(Landroid/widget/ImageView;ZZ)V
    .registers 4

    if-eqz p2, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_f

    const/high16 p0, -0x1000000

    .line 1131
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_f
    const/4 p0, 0x0

    .line 1133
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .registers 10

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_18

    .line 330
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUseHorizontalPopupStyle:Z

    if-eqz v0, :cond_19

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-nez v0, :cond_19

    :goto_18
    return-void

    .line 337
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 338
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_30

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 339
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The popup window is dismissing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_30
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupBackground:Landroid/view/View;

    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    iget v7, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDirection:I

    new-instance v8, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;

    invoke-direct {v8, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$2;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIIILandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 380
    :cond_4b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mEnable:Z

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$3;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->onDismiss()V

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsDismissing:Z

    return-void
.end method

.method public doOnDismiss()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    .line 412
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v1, :cond_e

    .line 413
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 416
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->clearContentListDrawable()V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_16
    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 420
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 421
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method public getItemSelectPosition()I
    .registers 1

    .line 1058
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemClickPosition:I

    return p0
.end method

.method public getTag()I
    .registers 1

    .line 393
    invoke-super {p0}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onDismiss()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupDismiss(I)V

    return-void
.end method

.method public onModeSwitch(ZD)V
    .registers 5

    .line 712
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mIsInVideoMode:Z

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    if-nez v0, :cond_e

    .line 714
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onModeSwitch, mPopSettingContainer is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 718
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_57

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 722
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_42

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 726
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 729
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 730
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    return-void

    .line 731
    :cond_57
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 732
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_1_1_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_87

    .line 736
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_1_1_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 737
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 740
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_1_1_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 741
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    return-void

    .line 742
    :cond_9c
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_e6

    .line 743
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_cd

    .line 747
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 748
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 751
    :cond_cd
    iget p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    if-ne p1, p2, :cond_128

    .line 752
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_full_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 753
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_full_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    return-void

    .line 756
    :cond_e6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 757
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_110

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 761
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 764
    :cond_110
    iget p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    if-ne p1, p2, :cond_128

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 766
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    :cond_128
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 196
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    .line 197
    iget v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updatePopWindowLayoutParameters(II)V

    return-void
.end method

.method public onPreViewSizeChanged(D)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    if-nez v0, :cond_c

    .line 676
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPreViewSizeChanged, mPopSettingContainer is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 679
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    .line 680
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isCommonRatio(D)Z

    move-result v1

    if-nez v1, :cond_ac

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isVideoRatio(D)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_ac

    .line 689
    :cond_22
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullRatio(D)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 691
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_52

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 694
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 696
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_full_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_full_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    return-void

    .line 698
    :cond_67
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->isSmallRatio(D)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_1_1_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_97

    .line 702
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_1_1_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 704
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 706
    :cond_97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_1_1_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_1_1_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    :cond_ab
    return-void

    .line 681
    :cond_ac
    :goto_ac
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 682
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    if-eqz v0, :cond_d6

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->half_pop_setting_pop_window_common_tb_hover_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    .line 687
    :cond_d6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->column_half_pop_setting_pop_window_common_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 7

    .line 285
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3e

    const/4 p2, 0x2

    .line 287
    new-array p2, p2, [I

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    aget p2, p2, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 291
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    if-nez p2, :cond_3e

    .line 293
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 296
    :cond_3e
    iget p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updatePopWindowLayoutParameters(II)V

    return-void
.end method

.method public onScreenSupply(Z)V
    .registers 8

    .line 1063
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenSupply:Z

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_58

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_11

    .line 1067
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    .line 1069
    :goto_12
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_58

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_58

    .line 1072
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 1073
    sget v4, Lcom/transsion/camera/R$id;->pop_option_item_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_32

    .line 1074
    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSupplyColor:I

    goto :goto_39

    :cond_32
    if-ne v2, v0, :cond_37

    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mSelectColor:I

    goto :goto_39

    :cond_37
    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mNormalColor:I

    :goto_39
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    xor-int/lit8 v5, p1, 0x1

    .line 1075
    invoke-virtual {p0, v4, v5}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 1076
    sget v4, Lcom/transsion/camera/R$id;->treasure_box_option_item_background:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_51

    .line 1078
    sget v4, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_55

    :cond_51
    const/4 v4, 0x0

    .line 1080
    invoke-virtual {p0, v4, v3, v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1085
    :cond_58
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->shouldTintDrawable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1086
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->processScreenSupply(Z)V

    :cond_61
    return-void
.end method

.method public setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V
    .registers 2

    .line 773
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-void
.end method

.method public setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIILjava/lang/String;)V
    .registers 7

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 642
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result p0

    invoke-virtual {p1, p0, p5}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupShow(ILjava/lang/String;)V

    return-void
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 437
    iput-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    move-object/from16 v1, p1

    .line 438
    iput-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    move/from16 v2, p5

    .line 439
    iput v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mDirection:I

    .line 440
    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingContainer:Landroid/view/View;

    check-cast v2, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    .line 441
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 442
    iput v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mListSize:I

    .line 444
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v3

    .line 445
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 447
    iget-object v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->column_pop_setting_pop_window_common_left_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 448
    iget-object v6, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->left_hover_pop_setting_pop_window_common_left_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 449
    iget-object v7, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->left_hover_pop_setting_pop_window_half_left_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 450
    iget-object v8, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->left_hover_pop_setting_pop_window_top_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 451
    iget-object v9, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->right_hover_pop_setting_pop_window_common_left_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 452
    iget-object v10, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->right_hover_pop_setting_pop_window_half_left_margin:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 453
    iget-object v11, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_90_left_margin:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 454
    iget-object v12, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_0_top_margin:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 455
    iget-object v13, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_180_top_margin:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 456
    iget-object v14, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_90_half_left_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 457
    iget-object v15, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_0_half_top_margin:I

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 458
    iget-object v15, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    move/from16 p2, v1

    sget v1, Lcom/transsion/camera/R$dimen;->expand_pop_setting_pop_window_180_half_top_margin:I

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move/from16 v16, v1

    const/4 v15, 0x0

    .line 460
    :goto_89
    array-length v1, v3

    if-ge v15, v1, :cond_96

    .line 461
    aget-object v1, v3, v15

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 462
    iput v15, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemClickPosition:I

    :cond_96
    move/from16 v1, p3

    goto :goto_9c

    :cond_99
    add-int/lit8 v15, v15, 0x1

    goto :goto_89

    .line 466
    :goto_9c
    iput v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    .line 467
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 468
    sget-object v4, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v1

    const-string v1, "needShow: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p3, :cond_352

    .line 470
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 477
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast v1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    const/4 v3, 0x0

    .line 478
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->cancelLayoutEndAnim(Z)V

    .line 479
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    move/from16 v15, p4

    invoke-direct {v0, v1, v4, v15}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;Z)V

    .line 480
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenFormType:I

    const/4 v4, 0x4

    const/4 v15, 0x3

    if-ne v1, v15, :cond_122

    .line 481
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v3, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 482
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 483
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    if-le v2, v4, :cond_10e

    .line 484
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v1, v15, :cond_10e

    .line 485
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHoverTopMargin:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 486
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    .line 485
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    .line 488
    :cond_10e
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowHoverTopMargin:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 489
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v3, 0x0

    .line 488
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_122
    if-nez v1, :cond_18b

    .line 494
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 495
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 496
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 497
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    if-eqz v1, :cond_152

    .line 498
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->treasure_box_pop_setting_pop_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPopSettingUIMarginBottom(I)I

    move-result v1

    const/16 v3, 0x51

    move v2, v3

    goto :goto_160

    :cond_152
    if-le v2, v4, :cond_15d

    .line 500
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v1, v15, :cond_15d

    .line 502
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowTopMargin:I

    :goto_15a
    const/16 v2, 0x31

    goto :goto_160

    .line 505
    :cond_15d
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mHalfPopWindowTopMargin:I

    goto :goto_15a

    .line 507
    :goto_160
    iget-object v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v3, v4, :cond_17a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_16f

    goto :goto_17a

    .line 510
    :cond_16f
    iget-object v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_popwindow_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move v3, v15

    :goto_178
    move v4, v1

    goto :goto_17c

    :cond_17a
    :goto_17a
    const/4 v3, 0x0

    goto :goto_178

    .line 512
    :goto_17c
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 513
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_18b
    const/4 v3, 0x1

    if-ne v1, v3, :cond_237

    .line 517
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 518
    iget-object v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 519
    iget-object v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v3, 0x0

    :goto_1a3
    if-ge v3, v1, :cond_1b8

    .line 521
    iget-object v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 522
    instance-of v6, v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v6, :cond_1b5

    .line 523
    check-cast v5, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v6}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a3

    :cond_1b8
    const/16 v1, 0xb4

    if-le v2, v4, :cond_1f6

    .line 527
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v2, v15, :cond_1f6

    .line 528
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1e5

    if-eq v2, v1, :cond_1e3

    const/16 v1, 0x10e

    if-eq v2, v1, :cond_1d1

    move v4, v12

    :goto_1cd
    const/16 v2, 0x31

    const/4 v3, 0x0

    goto :goto_228

    .line 536
    :cond_1d1
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 537
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v3, v11

    :goto_1e0
    const/4 v2, 0x5

    :goto_1e1
    const/4 v4, 0x0

    goto :goto_228

    :cond_1e3
    move v4, v13

    goto :goto_1cd

    .line 530
    :cond_1e5
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 531
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v3, v11

    :goto_1f4
    move v2, v15

    goto :goto_1e1

    .line 552
    :cond_1f6
    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_218

    if-eq v2, v1, :cond_215

    const/16 v1, 0x10e

    if-eq v2, v1, :cond_205

    move/from16 v4, p2

    goto :goto_1cd

    .line 560
    :cond_205
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 561
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v3, v14

    goto :goto_1e0

    :cond_215
    move/from16 v4, v16

    goto :goto_1cd

    .line 554
    :cond_218
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 555
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v3, v14

    goto :goto_1f4

    .line 576
    :goto_228
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_237
    const/4 v3, 0x2

    if-ne v1, v3, :cond_27d

    .line 578
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    add-int/lit8 v3, v3, -0x36

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 579
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 580
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    if-le v2, v4, :cond_26a

    .line 581
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v1, v15, :cond_26a

    .line 582
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnPopWindowTopMargin:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 583
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move-object v5, v2

    const/4 v2, 0x0

    .line 582
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_26a
    move v3, v5

    .line 585
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget v4, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mColumnHalfPopWindowTopMargin:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 586
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    .line 585
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_27d
    if-ne v1, v4, :cond_2da

    .line 589
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x0

    const/16 v5, 0x5a

    invoke-virtual {v1, v5, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 590
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v5, v3

    :goto_28e
    if-ge v5, v1, :cond_2a3

    .line 592
    iget-object v9, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 593
    instance-of v10, v9, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v10, :cond_29f

    .line 594
    check-cast v9, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v9, v3, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_29f
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_28e

    .line 598
    :cond_2a3
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 599
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    if-le v2, v4, :cond_2c9

    .line 600
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v1, v15, :cond_2c9

    .line 601
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 602
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v3, v6

    move v4, v8

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto/16 :goto_337

    :cond_2c9
    move v4, v8

    .line 604
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 605
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v3, v7

    .line 604
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_337

    :cond_2da
    move v3, v8

    const/4 v5, 0x5

    if-ne v1, v5, :cond_337

    .line 608
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v5, 0x0

    const/16 v6, 0x10e

    invoke-virtual {v1, v6, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 609
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v6, v5

    :goto_2ed
    if-ge v6, v1, :cond_302

    .line 611
    iget-object v7, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 612
    instance-of v8, v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v8, :cond_2fe

    .line 613
    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v7, v5, v5}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_2fe
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_2ed

    .line 617
    :cond_302
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowHeight:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 618
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopWindowWidth:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    if-le v2, v4, :cond_327

    .line 619
    iget v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPositionInPopSetting:I

    if-gt v1, v15, :cond_327

    .line 620
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 621
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v4, v3

    move v3, v9

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_337

    :cond_327
    move v4, v3

    .line 623
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 624
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v3, v10

    .line 623
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    .line 627
    :cond_337
    :goto_337
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz v1, :cond_33e

    .line 628
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupShow()V

    .line 630
    :cond_33e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mTreasureBoxSupport:Z

    if-nez v1, :cond_350

    .line 632
    iget-object v0, v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_350
    const/4 v3, 0x1

    return v3

    :cond_352
    const/4 v3, 0x0

    return v3
.end method

.method public updateItemBackground(Lcom/transsion/camera/app/ui/widget/RotateImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 8

    .line 855
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mScreenSupply:Z

    if-eqz v0, :cond_6

    goto/16 :goto_a5

    :cond_6
    if-eqz p2, :cond_9

    goto :goto_b

    .line 858
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mItemBackground:Landroid/widget/ImageView;

    .line 859
    :goto_b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_9e

    .line 860
    const-string v0, "4:3"

    if-nez p3, :cond_28

    .line 861
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 862
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    invoke-virtual {p3, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 865
    :cond_28
    sget-object v1, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateItemBackground ratio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 866
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "1:1"

    .line 867
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_59

    :cond_4d
    iget-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 868
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8f

    :cond_59
    iget-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 869
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8f

    iget-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 870
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->isInUltraHDMode(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8f

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 871
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_80

    goto :goto_8f

    :cond_80
    if-eqz p2, :cond_87

    .line 881
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_light_ui5:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_87
    if-eqz p1, :cond_a5

    .line 885
    sget p0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_light_ui5:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_8f
    :goto_8f
    if-eqz p2, :cond_96

    .line 873
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_ui5:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_96
    if-eqz p1, :cond_a5

    .line 877
    sget p0, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_dark_ui5:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_9e
    if-eqz p2, :cond_a5

    .line 890
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background:I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a5
    :goto_a5
    return-void
.end method
