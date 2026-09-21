.class public Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;
.super Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;,
        Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationExpandOrLR;,
        Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x96

.field private static final DURATION:I = 0x12c

.field private static final MOVE_DISTANCE:I = 0xb4

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebritySceneUIShown:Z

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

.field private mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private final mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

.field private final mColorStyleRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mColorStyleRootView:Landroid/view/View;

.field private mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mColorStyleTranslateDistance:F

.field private mColorStyleUIShown:Z

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsCameraSwitching:Z

.field private mIsOnScale:Z

.field private mIsPopWindowShow:Z

.field private mIsSettingUIClick:Z

.field private final mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastOrientation:I

.field private mLastPosition:I

.field private mNeedShow:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingShow:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSettingUiAdjustHeight:I

.field private mShowFromPopSetting:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# direct methods
.method public static synthetic $r8$lambda$8ABfx4ShstmVQOLjKvckguWcSKU(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HrH7GWLnBbGGXXBJ0olYjClCVlA(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBtVY-zUX8Yc8VFG84NkPEc9jH4(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFWID9pezHQS8TR9dPdGy2iqZJo(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$notifyColorStyleItemChanged$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$_6Yd0ntq-wQgBGhbBztlqkT0c88(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$notifyColorStyleDataSetChanged$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$abORupsS52r5FUcKWJUsJ1dvFl4(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$updateOrientation$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-913T546dE9JmBfafJjGjDFvXM(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$updateSettingUILayout$4(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOl2g4SLj7qb4CMVhy48trSJ6MA(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$updateSettingUILayout$3(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$n3EdYZynnH5Oiz6jYX3vzyrBM2c(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperate(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorStyleRecyclerAdapter(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorStyleRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorStyleSetting(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorStyleUIShown(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideColorStyleSettingUI(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ColorStyleSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 77
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 157
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 75
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 76
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsSettingUIClick:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsCameraSwitching:Z

    .line 93
    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 135
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 674
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$4;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 687
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$5;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 764
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 770
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 1098
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecoration;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1099
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationExpandOrLR;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationExpandOrLR;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1100
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$ItemDecorationFlip;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 158
    sget v0, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleTranslateDistance:F

    .line 159
    sget v0, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_setting_ui_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mSettingUiAdjustHeight:I

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_8c

    .line 161
    new-array p1, v0, [F

    fill-array-data p1, :array_a0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    goto :goto_97

    .line 163
    :cond_8c
    new-array p1, v0, [F

    fill-array-data p1, :array_a8

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    .line 165
    :goto_97
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_a0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private collapseBottomUI(Z)V
    .registers 4

    .line 321
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_2c

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_23

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    if-nez v0, :cond_23

    .line 326
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 329
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_2c

    const/16 p1, 0x31

    .line 330
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 11

    .line 1088
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$6;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method private expandBottomUI(Z)V
    .registers 5

    .line 311
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_13

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    .line 315
    invoke-interface {v0, v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method private getColorStyleItemTextMargins()Landroid/graphics/Rect;
    .registers 3

    .line 1133
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_item_text_margin_bottom:I

    .line 1135
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getColorStyleItemTextSize()I
    .registers 3

    const/4 v0, 0x7

    .line 1121
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_e

    .line 1122
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->flip_filter_normal_text_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1125
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->filter_normal_text_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getOrientationItem()I
    .registers 3

    .line 1034
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    .line 1038
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 1039
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 1040
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

    .line 1041
    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_32
    return v0
.end method

.method private hideColorStyleRootView()V
    .registers 2

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 722
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideColorStyleSettingUI()V
    .registers 5

    .line 405
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->setAnimationApplied(Z)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 409
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mShowFromPopSetting:Z

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_23

    const/16 v2, 0x31

    .line 411
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 413
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_37

    .line 414
    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v3, "value_filter_ui_off"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    .line 417
    :cond_34
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->startCollapseAnimator()V

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->collapseBottomUI(Z)V

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->startCollapseAnimator()V

    .line 421
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    return-void
.end method

.method private hideColorStyleSettingUIImmediately(Z)V
    .registers 4

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->collapseBottomUI(Z)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2b

    .line 356
    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_21

    iget-boolean p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsCameraSwitching:Z

    if-nez p0, :cond_21

    .line 357
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 359
    :cond_21
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method private hideColorStyleSettingUIImmediately()Z
    .registers 6

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 369
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    .line 370
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mShowFromPopSetting:Z

    .line 371
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->cancelAnimation()V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_22

    const/4 v3, 0x0

    .line 373
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_2b

    const/16 v3, 0x31

    .line 377
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 379
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    if-eqz v0, :cond_3d

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_conflict_ui_state"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v4, "value_filter_ui_off_no_show"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_4c

    iget-boolean v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsPopWindowShow:Z

    if-nez v3, :cond_4c

    iget-boolean v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCelebritySceneUIShown:Z

    if-nez v3, :cond_4c

    .line 383
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 385
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz p0, :cond_53

    .line 386
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->setAnimationApplied(Z)V

    :cond_53
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 100
    iget v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v1, :cond_57

    .line 104
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 105
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_37

    .line 118
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 113
    :cond_37
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_3b
    neg-float v0, v0

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_40
    neg-float v0, v0

    .line 107
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_45
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4d

    neg-float v0, v0

    .line 122
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_4d
    const/4 v3, 0x4

    if-ne v2, v3, :cond_54

    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 126
    :cond_54
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 130
    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz p0, :cond_5e

    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5e
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p2, p1, :cond_8

    const/4 p1, 0x1

    .line 766
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$notifyColorStyleDataSetChanged$5()V
    .registers 3

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v0, :cond_10

    .line 1056
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyColorStyleDataSetChanged: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1057
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$notifyColorStyleItemChanged$6()V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v0, :cond_10

    .line 1073
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyColorStyleItemChanged: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->notifyDataChanged()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$updateOrientation$7(I)V
    .registers 4

    .line 1110
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOrientation:I

    if-eq v0, p1, :cond_24

    .line 1111
    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOrientation:I

    .line 1112
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1113
    sget-object p1, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOrientation: mLastOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOrientation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 985
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$3(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .registers 2

    .line 1021
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    if-ltz p0, :cond_a

    instance-of p0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateSettingUILayout$4(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 5

    .line 1024
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingUILayout mLastPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_32

    .line 1027
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_32
    return-void
.end method

.method private recoverFilterPanelToDefault()V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 617
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    .line 618
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 619
    iput v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    .line 620
    iput v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    :cond_1a
    :goto_1a
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 732
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_e
    return-void
.end method

.method private showColorStyleRootView()V
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 713
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    .line 715
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->showColorStyleSettingUIImmediately()V

    :cond_e
    return-void
.end method

.method private showColorStyleSettingUI()V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_19

    .line 393
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 394
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mShowFromPopSetting:Z

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 397
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 399
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->startExpandAnimator()V

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->expandBottomUI(Z)V

    .line 401
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    return-void
.end method

.method private showColorStyleSettingUIImmediately()V
    .registers 4

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->cancelAnimation()V

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    .line 344
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_15
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->expandBottomUI(Z)V

    return-void
.end method

.method private showOrHideColorStyleSettingUI()Z
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_32

    .line 452
    :cond_d
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideColorStyleSettingUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    if-eqz v0, :cond_2d

    .line 454
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUI()V

    goto :goto_30

    .line 456
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->showColorStyleSettingUI()V

    :goto_30
    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_28

    const/16 v0, 0x31

    .line 444
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_28
    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 431
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_2d

    const/16 v0, 0x30

    .line 433
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2d
    return-void
.end method

.method private updateArcIndicatorRingScreenLight(Z)V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v0, :cond_c

    .line 774
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(Z)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 775
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->notifyDataChanged()V

    :cond_c
    return-void
.end method

.method private updateOrientation(IZ)V
    .registers 6

    const/4 v0, 0x0

    .line 1103
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1104
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1105
    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1106
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_20

    goto :goto_2a

    .line 1109
    :cond_20
    check-cast v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_21

    :cond_3
    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    .line 223
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastPosition:I

    .line 224
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_21

    .line 225
    iget p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    if-gez p1, :cond_21

    .line 226
    iput v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mLastOffset:I

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[ColorStyleSettingUI] createEntryView: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 177
    iput-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 178
    sget v0, Lcom/transsion/camera/feature/colorstyle/R$layout;->color_style_option:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryView:Landroid/view/View;

    .line 179
    sget v0, Lcom/transsion/camera/feature/colorstyle/R$id;->color_style_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    .line 181
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/colorstyle/R$id;->color_style_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance p2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance p3, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$3;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$3;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 205
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    .line 206
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateSettingUILayout(Z)V

    .line 207
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p1, :cond_71

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, p3, p2, v1, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 211
    :cond_71
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation

    .line 1049
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryView:Landroid/view/View;

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

    .line 665
    const-string p0, "key_color_style"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 276
    invoke-super {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->hideEntryView()V

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->removeAnimatorListener()V

    .line 278
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected isSettingUIClick()Z
    .registers 2

    .line 1141
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsSettingUIClick:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->isSettingUIClick()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 463
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 465
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsCameraSwitching:Z

    goto :goto_12

    :cond_a
    if-eq p1, v0, :cond_10

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_12

    .line 467
    :cond_10
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsCameraSwitching:Z

    :cond_12
    :goto_12
    if-eqz p1, :cond_106

    if-eq p1, v0, :cond_102

    const/4 v2, 0x2

    const/16 v3, 0x31

    if-eq p1, v2, :cond_f7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_f3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_102

    const/16 v2, 0xd

    if-eq p1, v2, :cond_f3

    const/16 v2, 0xe

    if-eq p1, v2, :cond_102

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_f7

    const/16 v2, 0x2f

    if-eq p1, v2, :cond_102

    const/16 v2, 0x7c

    if-eq p1, v2, :cond_ef

    const/16 v2, 0x7d

    if-eq p1, v2, :cond_ef

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_e9

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_e6

    const/16 v2, 0x183

    if-eq p1, v2, :cond_d7

    const/16 v2, 0x184

    if-eq p1, v2, :cond_d1

    .line 470
    const-string v2, "key_conflict_ui_state"

    sparse-switch p1, :sswitch_data_11e

    packed-switch p1, :pswitch_data_154

    goto/16 :goto_101

    .line 539
    :pswitch_53
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsPopWindowShow:Z

    .line 540
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 508
    :pswitch_59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsPopWindowShow:Z

    .line 509
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 510
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately()Z

    .line 512
    :cond_64
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 480
    :pswitch_68
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    .line 481
    iget-boolean p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_75

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    .line 485
    :cond_75
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 578
    :sswitch_79
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUI()V

    return-void

    .line 557
    :sswitch_7d
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 558
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/high16 v0, -0x3d400000    # -96.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 560
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_9f

    .line 561
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v0, "value_filter_ui_off"

    invoke-virtual {p1, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_9f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    return-void

    .line 566
    :sswitch_a2
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz p0, :cond_101

    .line 567
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->notifyDataChanged()V

    return-void

    .line 543
    :sswitch_aa
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately()Z

    move-result p1

    if-eqz p1, :cond_101

    .line 544
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->expandBottomUI(Z)V

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_ba

    .line 546
    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 548
    :cond_ba
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_101

    .line 549
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 477
    :sswitch_c9
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    return-void

    .line 554
    :sswitch_cd
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    return-void

    .line 522
    :cond_d1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCelebritySceneUIShown:Z

    .line 523
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 515
    :cond_d7
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCelebritySceneUIShown:Z

    .line 516
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 517
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately()Z

    .line 519
    :cond_e2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 575
    :cond_e6
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    return-void

    .line 571
    :cond_e9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mPopSettingShow:Z

    .line 572
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately()Z

    return-void

    .line 474
    :cond_ef
    :sswitch_ef
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    return-void

    .line 527
    :cond_f3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 502
    :cond_f7
    :sswitch_f7
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_101

    .line 504
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_101
    :goto_101
    return-void

    .line 536
    :cond_102
    :sswitch_102
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    .line 489
    :cond_106
    :sswitch_106
    iget-boolean p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_111

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iput-boolean v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    .line 493
    :cond_111
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->isSettingUIClick()Z

    move-result p1

    if-nez p1, :cond_11a

    .line 494
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    .line 496
    :cond_11a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    return-void

    :sswitch_data_11e
    .sparse-switch
        0x9 -> :sswitch_102
        0x10 -> :sswitch_102
        0x13 -> :sswitch_cd
        0x17 -> :sswitch_ef
        0x20 -> :sswitch_c9
        0x32 -> :sswitch_aa
        0x38 -> :sswitch_f7
        0x6a -> :sswitch_102
        0x98 -> :sswitch_a2
        0xa5 -> :sswitch_106
        0xed -> :sswitch_f7
        0xf2 -> :sswitch_7d
        0x14f -> :sswitch_79
    .end sparse-switch

    :pswitch_data_154
    .packed-switch 0x1c
        :pswitch_68
        :pswitch_59
        :pswitch_53
    .end packed-switch
.end method

.method public notifyColorStyleDataSetChanged()V
    .registers 4

    .line 1054
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    .line 1060
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_17

    .line 1061
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1063
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1e

    .line 1064
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public notifyColorStyleItemChanged()V
    .registers 4

    .line 1071
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    .line 1077
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_17

    .line 1078
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1080
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1e

    .line 1081
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 626
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 627
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mShowFromPopSetting:Z

    if-eqz v0, :cond_20

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    return v1

    .line 631
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->showOrHideColorStyleSettingUI()Z

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

.method public onOrientationChanged(I)V
    .registers 2

    .line 306
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onPreviewClick()Z
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 639
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 640
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->showOrHideColorStyleSettingUI()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    .line 801
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsOnScale:Z

    .line 802
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsOnScale:Z

    .line 808
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

    .line 785
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 786
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 788
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

    .line 791
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsOnScale:Z

    if-nez v0, :cond_3c

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 793
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUI()V

    .line 796
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_41
    :goto_41
    return v0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 6

    .line 587
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle: sourceKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 588
    const-string v0, "key_color_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 589
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->checkPostRestriction()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4d

    .line 591
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsSettingUIClick:Z

    .line 592
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x150

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 593
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 595
    :cond_4d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 596
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleValue()Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    .line 598
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    .line 599
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->recoverFilterPanelToDefault()V

    .line 600
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->setEnable(Z)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v0, :cond_73

    .line 602
    invoke-virtual {v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->notifyDataChanged()V

    :cond_73
    if-eqz p1, :cond_7e

    .line 606
    iput-boolean v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIsSettingUIClick:Z

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x151

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 609
    :cond_7e
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->showOrHideColorStyleSettingUI()Z

    :cond_81
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

    .line 652
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 653
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 739
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 741
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2b

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 659
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
    .registers 4

    .line 756
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 757
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_19

    .line 759
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_definition"

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_19
    return-void
.end method

.method public setupEntryView()V
    .registers 8

    .line 234
    invoke-super {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->setupEntryView()V

    .line 235
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mNeedShow:Z

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v2, 0x1

    if-eqz v1, :cond_79

    .line 238
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    const/4 v3, 0x2

    if-nez v1, :cond_63

    .line 241
    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    iget-object v4, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    .line 243
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleChildAdapter(I)Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    move-result-object v5

    .line 244
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleChildAdapter(I)Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    move-result-object v6

    new-array v3, v3, [Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    aput-object v5, v3, v0

    aput-object v6, v3, v2

    invoke-direct {v1, v4, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;-><init>(Landroid/content/res/Resources;[Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 246
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_4b

    .line 247
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_old:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 248
    :goto_4b
    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 249
    invoke-virtual {v4, v1, v1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v1

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v4

    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v1

    .line 248
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_79

    .line 254
    :cond_63
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleChildAdapter(I)Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    move-result-object v4

    .line 255
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleChildAdapter(I)Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    move-result-object v5

    new-array v3, v3, [Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    .line 253
    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateChildAdapter([Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->notifyDataChanged()V

    .line 261
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v1, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v3, :cond_a6

    .line 262
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 263
    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 264
    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->getItemViewType(I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 266
    :cond_a6
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->addAnimatorListener()V

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 268
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v1

    .line 269
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 283
    invoke-super {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->hideColorStyleSettingUIImmediately(Z)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1d

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 289
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_25

    const/4 v0, 0x0

    .line 290
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_25
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 813
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    if-nez v1, :cond_7

    return-void

    .line 816
    :cond_7
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 818
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 819
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 820
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 821
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 822
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 823
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x55

    const/16 v9, 0x53

    const/16 v10, 0x5a

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/16 v13, 0x10e

    const/16 v14, 0xb4

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-ne v3, v15, :cond_149

    .line 824
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 825
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v10, :cond_d0

    if-eq v3, v14, :cond_a3

    if-eq v3, v13, :cond_78

    .line 850
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_height_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 851
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 852
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 853
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_left_margin_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 854
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_margin_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_fa

    .line 841
    :cond_78
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_height_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 842
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 843
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 844
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_left_margin_expand_270:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 845
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_top_margin_expand_270:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fa

    .line 834
    :cond_a3
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_height_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 835
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x35

    .line 836
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 837
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_right_margin_expand_180:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 838
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_top_margin_expand_180:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fa

    .line 827
    :cond_d0
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_height_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 828
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 829
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 830
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_right_margin_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 831
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_margin_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 858
    :goto_fa
    iget-boolean v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    if-eqz v3, :cond_114

    .line 859
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 860
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 861
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_114

    .line 862
    invoke-interface {v3, v15, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 863
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 866
    :cond_114
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_140

    .line 867
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_127

    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_12f

    .line 868
    :cond_127
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_old:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 869
    :goto_12f
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v8, v3, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v3

    .line 870
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v8

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 872
    :cond_140
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_297

    :cond_149
    const/4 v15, -0x1

    const/4 v12, 0x2

    if-eqz v3, :cond_29a

    if-ne v3, v12, :cond_151

    goto/16 :goto_29a

    :cond_151
    if-ne v3, v7, :cond_16b

    .line 919
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_hover_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v3, v8

    .line 920
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_377

    :cond_16b
    if-ne v3, v6, :cond_1d6

    .line 922
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 923
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 924
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_0:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 925
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 926
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 927
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 928
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_1b7

    .line 929
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 930
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v8, v3, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v3

    .line 931
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v8

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 933
    :cond_1b7
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_1cd

    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1cd

    .line 934
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 935
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 937
    :cond_1cd
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_297

    :cond_1d6
    if-ne v3, v5, :cond_240

    .line 939
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 940
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 941
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 942
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 943
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 944
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 945
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_222

    .line 946
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 947
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v8, v3, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v3

    .line 948
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v8

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 950
    :cond_222
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v3, :cond_238

    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_238

    .line 951
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 952
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 954
    :cond_238
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_297

    :cond_240
    const/4 v8, 0x7

    if-ne v3, v8, :cond_297

    .line 956
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 957
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 958
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->flip_color_style_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 959
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v10, :cond_267

    if-eq v3, v14, :cond_267

    if-eq v3, v13, :cond_267

    .line 968
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 969
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->flip_color_style_bottom_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_273

    .line 963
    :cond_267
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 964
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->flip_color_style_top_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 972
    :goto_273
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_290

    .line 973
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->flip_color_style_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 974
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v8, v3, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v3

    .line 975
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v8

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 977
    :cond_290
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_297
    :goto_297
    move v3, v4

    goto/16 :goto_377

    .line 875
    :cond_29a
    :goto_29a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_2a4

    .line 876
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2b0

    .line 878
    :cond_2a4
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_root_corner_radius:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 880
    :goto_2b0
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 881
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_2c1

    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2c9

    .line 882
    :cond_2c1
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_old:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_2c9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 883
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 884
    iget-object v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v8

    iget v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v8, v9

    .line 885
    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v9, v12, :cond_2eb

    .line 887
    iget-object v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_column_root_bottom_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 889
    :cond_2eb
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    iget-boolean v9, v9, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v9, :cond_302

    .line 890
    iget-object v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_bottom_margin_offset:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 892
    :cond_302
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 893
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v9

    if-eqz v9, :cond_310

    .line 894
    iget v9, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v9, v9, 0x24

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 896
    :cond_310
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v9

    if-eqz v9, :cond_325

    .line 897
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_left_margin:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x50

    .line 898
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_327

    .line 900
    :cond_325
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 903
    :goto_327
    iget-boolean v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleUIShown:Z

    if-eqz v3, :cond_343

    .line 904
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 905
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 906
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_343

    const/4 v9, 0x1

    .line 907
    invoke-interface {v3, v4, v9}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 908
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v9}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 911
    :cond_343
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    if-eqz v3, :cond_36f

    .line 912
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_356

    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_35e

    .line 913
    :cond_356
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/colorstyle/R$dimen;->color_style_switcher_height_old:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 914
    :goto_35e
    iget-object v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerAdapter:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    invoke-virtual {v9, v3, v3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object v3

    .line 915
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextSize()I

    move-result v9

    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getColorStyleItemTextMargins()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    .line 917
    :cond_36f
    iget-object v3, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v9, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    move v3, v8

    .line 980
    :goto_377
    iget-object v8, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3ab

    if-eqz p1, :cond_3ab

    .line 981
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x190

    .line 982
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 983
    iget-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 984
    iget-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 988
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3b6

    .line 990
    :cond_3ab
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v7, :cond_3b1

    .line 991
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 993
    :cond_3b1
    iget-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    :goto_3b6
    invoke-direct {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->getOrientationItem()I

    move-result v1

    const/4 v9, 0x1

    invoke-direct {v0, v1, v9}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->updateOrientation(IZ)V

    .line 998
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v9, :cond_3f6

    .line 999
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_3e0

    if-ne v1, v14, :cond_3c9

    goto :goto_3e0

    .line 1003
    :cond_3c9
    iget-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v13, :cond_3d1

    move v1, v9

    goto :goto_3d2

    :cond_3d1
    move v1, v4

    :goto_3d2
    invoke-direct {v0, v3, v9, v4, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1004
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v9}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto/16 :goto_448

    .line 1000
    :cond_3e0
    :goto_3e0
    iget-object v2, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v14, :cond_3e8

    move v1, v9

    goto :goto_3e9

    :cond_3e8
    move v1, v4

    :goto_3e9
    invoke-direct {v0, v3, v9, v9, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1001
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_448

    :cond_3f6
    if-eq v1, v6, :cond_3fa

    if-ne v1, v5, :cond_3fc

    :cond_3fa
    const/4 v3, 0x1

    goto :goto_431

    :cond_3fc
    const/4 v8, 0x7

    if-ne v1, v8, :cond_419

    .line 1011
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v3, :cond_40a

    const/4 v9, 0x1

    :goto_408
    const/4 v3, 0x1

    goto :goto_40c

    :cond_40a
    move v9, v4

    goto :goto_408

    :goto_40c
    invoke-direct {v0, v2, v3, v4, v9}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1012
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_448

    :cond_419
    const/4 v3, 0x1

    .line 1014
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_448

    .line 1015
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1016
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_448

    .line 1008
    :goto_431
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v5, v13, :cond_43b

    move v9, v3

    goto :goto_43c

    :cond_43b
    move v9, v4

    :goto_43c
    invoke-direct {v0, v2, v3, v3, v9}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1009
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 1020
    :cond_448
    :goto_448
    iget-object v1, v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->mColorStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    .line 1021
    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    .line 1022
    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda4;

    const-class v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, v3}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    .line 1023
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
