.class public Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;


# static fields
.field private static final CELEBRITY_ID_FOOD:I = 0x3

.field private static final CELEBRITY_ID_NONE:I = 0x0

.field private static final CELEBRITY_ID_STAGE:I = 0x1

.field private static final CELEBRITY_ID_SUNSET:I = 0x2

.field private static final CELEBRITY_ITEM_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVE_DISTANCE:I = 0xb4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

.field private mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mCelebritySceneRootView:Landroid/view/View;

.field private mCelebritySceneUIShown:Z

.field private mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentSceneValue:Ljava/lang/String;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFilterRootAnimator:Landroid/animation/ValueAnimator;

.field private final mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilterTranslateDistance:F

.field private mFilterUIShown:Z

.field private mIsCameraSwitching:Z

.field private mIsOnScale:Z

.field private mIsPopWindowShow:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastPosition:I

.field private mNeedShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingShow:Z

.field private mResources:Landroid/content/res/Resources;

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSettingUiAdjustHeight:I

.field private mShowFromPopSetting:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$9a1-87cWwh6Qo5fLRn7DukY0FT8(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1yCMjPvMg8Yfj9cKOohtxA55NU(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperate(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCelebrityItemAdapter(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCelebritySceneRootView(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CelebritySceneSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 88
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    sget v1, Lcom/transsion/camera/R$drawable;->ic_celebrity_item_off:I

    sget v2, Lcom/transsion/camera/R$string;->celebrity_scene_none:I

    const-string v3, "val_celebrity_scene_none"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_celebrity_scene_stage:I

    sget v3, Lcom/transsion/camera/R$string;->celebrity_scene_stage:I

    const-string v4, "val_celebrity_scene_stage"

    invoke-direct {v1, v4, v2, v3}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    sget v3, Lcom/transsion/camera/R$drawable;->ic_celebrity_scene_sunset:I

    sget v4, Lcom/transsion/camera/R$string;->celebrity_scene_sunset:I

    const-string v5, "val_celebrity_scene_sunset"

    invoke-direct {v2, v5, v3, v4}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_celebrity_scene_food:I

    sget v5, Lcom/transsion/camera/R$string;->celebrity_scene_food:I

    const-string v6, "val_celebrity_scene_food"

    invoke-direct {v3, v6, v4, v5}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->CELEBRITY_ITEM_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastOffset:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastPosition:I

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsCameraSwitching:Z

    .line 83
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 84
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 99
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 113
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 137
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 769
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 775
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$6;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    const/4 v0, 0x2

    .line 154
    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    sget v0, Lcom/transsion/camera/R$dimen;->celebrity_scene_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterTranslateDistance:F

    .line 157
    sget v0, Lcom/transsion/camera/R$dimen;->celebrity_scene_setting_ui_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mSettingUiAdjustHeight:I

    return-void

    nop

    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 758
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private collapseBottomUI(Z)V
    .registers 4

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    if-nez v0, :cond_1e

    .line 741
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 742
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 744
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_27

    const/16 p1, 0x184

    .line 746
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_27
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 11

    .line 251
    new-instance v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method private expandBottomUI(Z)V
    .registers 4

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 734
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    :cond_e
    return-void
.end method

.method private getOrientationItem()I
    .registers 3

    .line 429
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    .line 433
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 434
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 435
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_32

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_2d

    const/16 v1, 0x10e

    if-ne p0, v1, :cond_32

    :cond_2d
    add-int/lit16 p0, p0, 0xb4

    .line 436
    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_32
    return v0
.end method

.method private getSceneModeFromValue(Ljava/lang/String;)I
    .registers 6

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p0, :sswitch_data_38

    goto :goto_2f

    :sswitch_f
    const-string p0, "val_celebrity_scene_stage"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2f

    :cond_18
    move v3, v0

    goto :goto_2f

    :sswitch_1a
    const-string p0, "val_celebrity_scene_sunset"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2f

    :cond_23
    move v3, v1

    goto :goto_2f

    :sswitch_25
    const-string p0, "val_celebrity_scene_food"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v2

    :goto_2f
    packed-switch v3, :pswitch_data_46

    return v2

    :pswitch_33
    return v1

    :pswitch_34
    return v0

    :pswitch_35
    const/4 p0, 0x3

    return p0

    nop

    :sswitch_data_38
    .sparse-switch
        -0x603b4195 -> :sswitch_25
        -0x27edd29d -> :sswitch_1a
        0x598c5291 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method private hideFilterRootView()V
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideFilterSettingUI()V
    .registers 5

    .line 689
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->setAnimationApplied(Z)V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 693
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mShowFromPopSetting:Z

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_23

    const/16 v2, 0x184

    .line 696
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 698
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_36

    .line 699
    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "value_filter_ui_off"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 702
    :cond_33
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->startCollapseAnimator()V

    :cond_36
    :goto_36
    const/4 v0, 0x1

    .line 704
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->collapseBottomUI(Z)V

    .line 705
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->startCollapseAnimator()V

    .line 706
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    return-void
.end method

.method private hideFilterSettingUIImmediately(Z)V
    .registers 4

    .line 649
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 650
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->collapseBottomUI(Z)V

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_29

    .line 653
    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_20

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsCameraSwitching:Z

    if-nez p0, :cond_20

    .line 654
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 656
    :cond_20
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method private hideFilterSettingUIImmediately()Z
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 666
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mShowFromPopSetting:Z

    .line 667
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    .line 668
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->cancelAnimation()V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_22

    const/4 v3, 0x0

    .line 670
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_2b

    const/16 v3, 0x184

    .line 674
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 676
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    if-eqz v0, :cond_3c

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_conflict_ui_state"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v4, "value_filter_ui_off_no_show"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_4b

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsPopWindowShow:Z

    if-nez v3, :cond_4b

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterUIShown:Z

    if-nez v3, :cond_4b

    .line 680
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 682
    :cond_4b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz p0, :cond_58

    .line 683
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->setAnimationApplied(Z)V

    :cond_58
    const/4 p0, 0x1

    return p0
.end method

.method private initCelebrityItemAdapter(Ljava/util/List;)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;",
            ">;)",
            "Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;"
        }
    .end annotation

    .line 565
    new-instance p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 140
    iget v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v1, :cond_23

    .line 144
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 148
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz p0, :cond_2a

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2a
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 770
    const-string v0, "key_celebrity_scene"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 771
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCurrentSceneValue:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method private notifyDataSetChanged()V
    .registers 1

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz p0, :cond_7

    .line 560
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 764
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_e
    return-void
.end method

.method private showFilterRootView()V
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 601
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    .line 603
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showFilterSettingUIImmediately()V

    :cond_e
    return-void
.end method

.method private showFilterSettingUI()V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_19

    .line 610
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 611
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mShowFromPopSetting:Z

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 614
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 616
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->startExpandAnimator()V

    const/4 v0, 0x1

    .line 617
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->expandBottomUI(Z)V

    .line 618
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    return-void
.end method

.method private showFilterSettingUIImmediately()V
    .registers 4

    .line 622
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->cancelAnimation()V

    const/4 v0, 0x1

    .line 623
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    .line 624
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mShowFromPopSetting:Z

    .line 625
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1d

    .line 626
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 630
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_2b

    const/high16 v2, 0x3f800000    # 1.0f

    .line 631
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_2b
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->expandBottomUI(Z)V

    return-void
.end method

.method private showOrHideFilterSettingUI()Z
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 572
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    if-eqz v0, :cond_15

    .line 573
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUI()V

    goto :goto_18

    .line 575
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showFilterSettingUI()V

    :goto_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_28

    const/16 v0, 0x184

    .line 728
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_28
    return-void
.end method

.method private startExpandAnimator()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_21

    const/16 v0, 0x183

    .line 716
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_21
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 268
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastOffset:I

    .line 271
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 167
    sget-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createEntryView] createEntryView: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 169
    sget v0, Lcom/transsion/camera/R$layout;->celebrity_scene_filter_option:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryView:Landroid/view/View;

    .line 170
    sget v0, Lcom/transsion/camera/R$id;->celebrity_scene_filter_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/16 v0, 0x8

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    .line 173
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->celebrity_scene_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    const/4 p2, 0x0

    .line 175
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance p2, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$3;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance p3, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$4;

    invoke-direct {p3, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$4;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 197
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3, p2, v1, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 200
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 289
    const-string p0, "key_celebrity_scene"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

    .line 444
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->removeAnimatorListener()V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsCameraSwitching:Z

    goto :goto_f

    :cond_7
    if-eq p1, v0, :cond_d

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_f

    .line 474
    :cond_d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsCameraSwitching:Z

    :cond_f
    :goto_f
    if-eqz p1, :cond_d2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c5

    const/16 v2, 0x13

    if-eq p1, v2, :cond_c1

    const/16 v2, 0x17

    if-eq p1, v2, :cond_b7

    const/16 v2, 0x20

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_c5

    const/16 v2, 0x38

    if-eq p1, v2, :cond_c5

    const/16 v2, 0xed

    if-eq p1, v2, :cond_c5

    const/16 v2, 0x14f

    if-eq p1, v2, :cond_ab

    const/16 v2, 0x180

    if-eq p1, v2, :cond_8e

    const/16 v2, 0x30

    if-eq p1, v2, :cond_85

    const/16 v2, 0x31

    if-eq p1, v2, :cond_7f

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_79

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_75

    packed-switch p1, :pswitch_data_e8

    goto/16 :goto_e3

    .line 511
    :pswitch_49
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsPopWindowShow:Z

    .line 512
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    goto/16 :goto_e3

    .line 495
    :pswitch_50
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsPopWindowShow:Z

    .line 496
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 497
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately()Z

    .line 499
    :cond_5b
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    goto/16 :goto_e3

    .line 486
    :pswitch_60
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    .line 487
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_6d

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    .line 491
    :cond_6d
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 492
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    goto/16 :goto_e3

    .line 519
    :cond_75
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    goto/16 :goto_e3

    .line 515
    :cond_79
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mPopSettingShow:Z

    .line 516
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately()Z

    goto :goto_e3

    .line 507
    :cond_7f
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterUIShown:Z

    .line 508
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    goto :goto_e3

    .line 502
    :cond_85
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mFilterUIShown:Z

    .line 503
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately()Z

    .line 504
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    goto :goto_e3

    .line 547
    :cond_8e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCurrentSceneValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->getSceneModeFromValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->notifyDataChanged([I)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCurrentSceneValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showOrHideFilterSettingUI()Z

    goto :goto_e3

    .line 539
    :cond_ab
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    if-eqz v0, :cond_e3

    .line 540
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUI()V

    goto :goto_e3

    .line 483
    :cond_b3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showFilterRootView()V

    goto :goto_e3

    .line 478
    :cond_b7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 479
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_e3

    .line 544
    :cond_c1
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_e3

    .line 525
    :cond_c5
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_e3

    const/16 v1, 0x184

    .line 527
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_e3

    .line 531
    :cond_d2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_dd

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    .line 535
    :cond_dd
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 536
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->setEnable(Z)V

    .line 555
    :cond_e3
    :goto_e3
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1c
        :pswitch_60
        :pswitch_50
        :pswitch_49
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mShowFromPopSetting:Z

    if-eqz v0, :cond_20

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    return v1

    .line 456
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showOrHideFilterSettingUI()Z

    move-result p0

    return p0

    :cond_25
    return v1
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 322
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCelebritySceneType(I)V

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_25

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->getCelebritySceneMode()Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 338
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onPreviewClick()Z
    .registers 2

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 464
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 465
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showOrHideFilterSettingUI()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsOnScale:Z

    .line 365
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsOnScale:Z

    .line 371
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    if-nez p2, :cond_6

    goto :goto_41

    .line 348
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 351
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_25

    return v0

    :cond_25
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3c

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mIsOnScale:Z

    if-nez v0, :cond_3c

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUI()V

    .line 359
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_41
    :goto_41
    return v0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 236
    const-string v0, "key_celebrity_scene"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz p1, :cond_f

    .line 238
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 240
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->showOrHideFilterSettingUI()Z

    :cond_12
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 283
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_d

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_d
    return-void
.end method

.method public setupEntryView()V
    .registers 6

    .line 206
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mNeedShow:Z

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->getSceneModeFromValue(Ljava/lang/String;)I

    move-result v1

    .line 210
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCelebritySceneType(I)V

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-nez v2, :cond_3b

    .line 212
    sget-object v2, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->CELEBRITY_ITEM_LIST:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->initCelebrityItemAdapter(Ljava/util/List;)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    .line 213
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->celebrity_scene_switcher_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 214
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->updateItemSize(I)V

    .line 215
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    .line 216
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    goto :goto_48

    .line 218
    :cond_3b
    sget-object v3, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->CELEBRITY_ITEM_LIST:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setItemList(Ljava/util/List;)V

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 220
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->notifyDataSetChanged()V

    .line 222
    :goto_48
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz v1, :cond_51

    .line 223
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 225
    :cond_51
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz v1, :cond_79

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 230
    :cond_79
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->addAnimatorListener()V

    .line 231
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 331
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 332
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCelebritySceneType(I)V

    .line 333
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->hideFilterSettingUIImmediately(Z)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 6

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    if-nez p1, :cond_6

    goto/16 :goto_eb

    .line 379
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 383
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2c

    .line 385
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->celebrity_scene_root_corner_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2c
    const/4 v0, -0x1

    .line 387
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->celebrity_scene_switcher_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v0, v2

    .line 390
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v2, :cond_59

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->celebrity_scene_root_bottom_margin_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    :cond_59
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 394
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->celebrity_scene_switcher_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x50

    .line 396
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_74

    :cond_70
    const/16 v0, 0x51

    .line 398
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    :goto_74
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneUIShown:Z

    if-eqz v0, :cond_90

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_90

    const/4 v2, 0x1

    .line 405
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 409
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz v0, :cond_a1

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->celebrity_scene_switcher_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->updateItemSize(I)V

    .line 413
    :cond_a1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebrityItemAdapter:Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    if-eqz p1, :cond_b8

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->getOrientationItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->updateOrientation(I)V

    .line 420
    :cond_b8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mCelebritySceneRecycleView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 421
    sget-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingUILayout mLastPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastPosition:I

    if-ltz v0, :cond_eb

    .line 423
    iget p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->mLastOffset:I

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_eb
    :goto_eb
    return-void
.end method
