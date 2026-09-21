.class public Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$ICutSameUI;
.implements Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;
    }
.end annotation


# static fields
.field private static final LOOP_INTERNAL:I = 0xbb8

.field public static final LOOP_TIMES:I = 0x3

.field private static final MSG_INIT_LOOP_VIEWPAGE:I = 0x3e8

.field private static final MSG_UPDATE_LOOP_VIEWPAGER:I = 0x3e9

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sActivityIdentity:I


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mDescription:Landroid/widget/TextView;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private mHelpHasShowTimes:I

.field private final mHelpImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpMessageRootView:Landroid/view/ViewGroup;

.field private mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$0LI1bL_w-R6HMlnU57sWho7Dq_A(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->lambda$showHelpGuideDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RSmVtqtem2_TeZCIGyCDQpufDKY(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->lambda$showHelpGuideDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHelpHasShowTimes(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelpImageList(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpImageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoopViewPager(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoopViewPagerIndicator(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mincreaseStartTimes(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->increaseStartTimes()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPagerLocation(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->resetPagerLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHelpGuideDialog(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->showHelpGuideDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_SegmentHelpGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;II)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpImageList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 63
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mOrientation:I

    .line 64
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mScreenFormType:I

    .line 66
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    return-void
.end method

.method private activityChanged()Z
    .registers 4

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 259
    sget v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->sActivityIdentity:I

    if-eq p0, v0, :cond_e

    .line 260
    sput p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->sActivityIdentity:I

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 263
    :goto_f
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityChanged changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private hideDialog()V
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_7

    .line 289
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    :cond_7
    return-void
.end method

.method private increaseStartTimes()V
    .registers 4

    .line 234
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseStartTimes, mVlogHelpTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeHelpGuideShowTimes(I)V

    return-void
.end method

.method private initHelpImageList()V
    .registers 6

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_vlog_help_page_one:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_vlog_help_page_two:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 163
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpImageList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_4a
    return-void
.end method

.method private initIndicatorDots()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 176
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 177
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 179
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_help_dot_interval:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 182
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget v3, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_cutsegment_help_dot_dark_color:I

    goto :goto_39

    :cond_37
    sget v3, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_cutsegment_help_dot_color:I

    :goto_39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_44
    return-void
.end method

.method private initViewPager()V
    .registers 3

    .line 198
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/HelpViewPagerAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpImageList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/HelpViewPagerAdapter;-><init>(Ljava/util/List;)V

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private synthetic lambda$showHelpGuideDialog$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showHelpGuideDialog$1(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private removeView(Landroid/view/View;)V
    .registers 3

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 306
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 307
    check-cast p0, Landroid/view/ViewGroup;

    .line 308
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private resetPagerLocation()V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    move v0, v1

    .line 226
    :goto_7
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 227
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 230
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const/16 v0, 0x3e9

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showHelpGuideDialog()V
    .registers 4

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateTextColor()V

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateDotsColor()V

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->hideDialog()V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpMessageRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeView(Landroid/view/View;)V

    .line 273
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 274
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mOrientation:I

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_storyboard_shooting_help:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpMessageRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_known:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 282
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 283
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "vlog_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDialog()V
    .registers 4

    .line 294
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mOrientation:I

    .line 295
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mScreenFormType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    .line 299
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_11

    .line 300
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_11
    return-void
.end method

.method private updateDotsColor()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    goto :goto_2b

    .line 144
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_2b

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_2b

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 152
    sget v3, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_cutsegment_help_dot_dark_color:I

    goto :goto_25

    :cond_23
    sget v3, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_cutsegment_help_dot_color:I

    .line 151
    :goto_25
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2b
    :goto_2b
    return-void
.end method

.method private updateGuideFlag()V
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->updateHelpGuideFlag()V

    return-void
.end method

.method private updateTextColor()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 136
    sget p0, Lcom/transsion/camera/feature/vlog/R$color;->vlog_segment_help_dialog_description_dark_color:I

    goto :goto_15

    :cond_13
    sget p0, Lcom/transsion/camera/feature/vlog/R$color;->vlog_segment_help_dialog_description_color:I

    .line 135
    :goto_15
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/view/ViewGroup;)V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpMessageRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 107
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[inflate], mHelpMessageRootView is inflated, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_cutsegment_help_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->vlog_segment_help_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpMessageRootView:Landroid/view/ViewGroup;

    .line 112
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_help_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 113
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_help_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mLoopViewPagerIndicator:Landroid/widget/LinearLayout;

    .line 114
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_help_dialog_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDescription:Landroid/widget/TextView;

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateTextColor()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->initHelpImageList()V

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->initIndicatorDots()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->initViewPager()V

    return-void
.end method

.method public initListener()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 190
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mScreenFormType:I

    .line 191
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p2, :cond_9

    .line 192
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 194
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateDialog()V

    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateGuideFlag()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setUserInteractionListener(Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    return-void
.end method

.method public removeHelpGuide()V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->hideDialog()V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 324
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 325
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mOrientation:I

    .line 326
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->updateDialog()V

    :cond_9
    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-void
.end method

.method public showHelpGuideIfNeed()V
    .registers 6

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->inflate(Landroid/view/ViewGroup;)V

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->initListener()V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getHelpGuideShowTimes()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getHelpGuideFlag()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->activityChanged()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI$UIHandler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :cond_2b
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHelpGuideIfNeed, mVlogHelpTimes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->mHelpHasShowTimes:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,needHelpGuideShow :"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    return-void
.end method
