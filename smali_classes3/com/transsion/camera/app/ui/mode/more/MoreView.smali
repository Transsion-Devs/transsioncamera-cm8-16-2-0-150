.class public Lcom/transsion/camera/app/ui/mode/more/MoreView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;,
        Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;
    }
.end annotation


# static fields
.field private static final MORE_MODE_BACKGROUND_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAddItemToLast:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBottomViewDownRawY:F

.field private mBottomViewDownX:F

.field private mBottomViewDownY:F

.field private mChangedRecyclerView:Z

.field private mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCameraId:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

.field private mDragEnterPlaceHolder:Z

.field private mDragFromGridView:Z

.field private mDragFromPlaceHolderToOtherArea:Z

.field private mDragItemView:Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

.field private mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

.field private mDragStart:Z

.field private mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

.field private mDragSuccess:Z

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mDropFinished:Z

.field private mEnable:Z

.field private mEnterLinearViewArea:Z

.field private mEnterMoreGridListViewArea:Z

.field private mEnterNoModeGridViewArea:Z

.field private mGridItemDisplayType:I

.field private mGridListGestureDetector:Landroid/view/GestureDetector;

.field private mHasWindowFocus:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mHoverBottomHeightReduce:I

.field private mIsEditMode:Z

.field private mIsModeSwitching:Z

.field private mIsPopSettingShow:Z

.field private mLastDragEventY:F

.field private mLastGridItemPosition:I

.field private mLastItemPos:I

.field private mLastLinearItemPosition:I

.field private mLastScreenFormType:I

.field private final mLinearViewRect:Landroid/graphics/Rect;

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private final mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

.field private mMoreBottomView:Landroid/view/View;

.field private mMoreContainerImg:Landroid/widget/ImageView;

.field private mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mMoreContainerZoomIn:Landroid/animation/ObjectAnimator;

.field private mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

.field private mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

.field private mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

.field private mMoreGridListLayout:Landroid/widget/RelativeLayout;

.field private mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

.field private final mMoreGridListViewRect:Landroid/graphics/Rect;

.field private mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

.field private mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

.field private mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

.field private mMoreModeBackgroundView:Landroid/view/View;

.field private final mMoreModeTabItems:Ljava/util/List;

.field private final mMoreModeUIItems:Ljava/util/List;

.field private mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

.field private mMoreTopHelpText:Landroid/widget/TextView;

.field private mMoreTopView:Landroid/view/View;

.field private mMoreViewShow:Z

.field private final mMovePosition:Landroid/graphics/PointF;

.field private final mNoModeGridListRect:Landroid/graphics/Rect;

.field private mNoModeInGridList:Landroid/widget/RelativeLayout;

.field private mOrientation:I

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenSize:Landroid/util/Size;

.field private final mSellingPointArray:Ljava/util/List;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mTouchEventX:F

.field private mTouchEventY:F

.field private mViewEnable:Z


# direct methods
.method public static synthetic $r8$lambda$EGld5ipg5gHtk1kpzyTMG81q2Yk(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$13(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FSTjWaazHWuOHjTqhU-hseVcOXs(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$6(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FZos3AV8gKN6UBQwEH_YaTEg9Ak(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$3(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iv0r3DzNDTEVOMz772VbNKl4r2A(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$onNotListEmpty$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Krwi_8b0aYzr5MRGqp6lP2layx8(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$7(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NeAYEI2PjC_MNzUFTPI6xT9PbQI(Lcom/transsion/camera/app/common/FeatureResource;)Z
    .registers 2

    .line 1731
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$QmatPPV8YdM8Q3r8wNrz4w1Z5C8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1360
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$ZnxoNHqPQI199lVtdyCc2l9PwmA(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$setModeList$16(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ah4JzkeYk9E_YRPP4AlovhYH4MI(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$14(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTYYxI0s3CmGlCW3XDWxkFhf8Y0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1361
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$cCfXWWHO9LIXxDtmycsDEurGSRk(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x4

    .line 1642
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eLcjWOp4J6xp030Ma_JyxTWkpRI(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$updateLayoutParams$17(Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$egUsUdL6AN2sEvCE9uqKOnd2oQ8(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$dispatchDropAction$0(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eoI9l00UDaiafbGBHFkYHKwZARQ(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$checkMoreDragBoxMode$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fqrNT-g9-H7abMvnkWYyaXz8a5s(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x1

    .line 1626
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRkdUyzKXnVZ41SuBe19a7hN5Y8(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$5(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qc-GoFvnIm8XpOz9iBwoPjlThgM(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$handleGridModeDropAction$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yES0ozbp3N77ObXJUiakGm9JPxs(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->lambda$inflateView$8(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBottomViewDownRawY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownRawY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBottomViewDownX(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickModeIconListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridItemDisplayType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHoverBottomHeightReduce(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverBottomHeightReduce:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsModeSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreBottomView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreContainerZoomIn(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridListAdapter(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridListLayout(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreViewShow(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBottomViewDownRawY(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownRawY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBottomViewDownX(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mBottomViewDownY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mbackToPreviousMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->backToPreviousMode(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartVibrator(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startVibrator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayoutParams(Lcom/transsion/camera/app/ui/mode/more/MoreView;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateLayoutParams(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 91
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->MORE_MODE_BACKGROUND_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .registers 7

    .line 194
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    .line 117
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMovePosition:Landroid/graphics/PointF;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLinearViewRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeGridListRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 197
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 198
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 199
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    .line 200
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->mode_picker_height_reduce_hover_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverBottomHeightReduce:I

    .line 203
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastScreenFormType:I

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    .line 204
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    return-void
.end method

.method private backToPreviousMode(I)Z
    .registers 5

    .line 1822
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToPreviousMode, mModeNameBeforeSwitchMoreMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1823
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-eqz v0, :cond_4b

    .line 1824
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_26

    return v1

    .line 1827
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 1828
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    if-nez p1, :cond_37

    const-string p1, "click_back_key"

    goto :goto_39

    :cond_37
    const-string p1, "click_bottom_area"

    :goto_39
    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    .line 1829
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    if-eqz p1, :cond_43

    .line 1830
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;->notifyNeedSwitchMode()V

    .line 1832
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    return v1

    :cond_4b
    const/4 p0, 0x0

    return p0
.end method

.method private calculatorDragPosition(F)V
    .registers 6

    .line 889
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz v0, :cond_77

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v1, :cond_d

    goto :goto_77

    .line 893
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLinearViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLinearViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2e

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2e

    .line 895
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterLinearViewArea:Z

    if-nez v0, :cond_30

    .line 896
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterLinearViewArea:Z

    .line 897
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->enterLinearViewArea()V

    goto :goto_30

    .line 900
    :cond_2e
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterLinearViewArea:Z

    .line 902
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeGridListRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeGridListRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_51

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_51

    .line 904
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterNoModeGridViewArea:Z

    if-nez v0, :cond_53

    .line 905
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterNoModeGridViewArea:Z

    .line 906
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->checkMoreDragBoxMode()V

    goto :goto_53

    .line 909
    :cond_51
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterNoModeGridViewArea:Z

    .line 912
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 913
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_74

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_74

    .line 914
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterMoreGridListViewArea:Z

    if-nez p1, :cond_73

    .line 915
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterMoreGridListViewArea:Z

    .line 916
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->checkMoreDragBoxMode()V

    :cond_73
    return-void

    .line 919
    :cond_74
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterMoreGridListViewArea:Z

    return-void

    .line 890
    :cond_77
    :goto_77
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "calculatorDragPosition, view is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private changeGridToLinear()V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragFromGridToTab(Z)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 397
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 399
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    .line 400
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 401
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 403
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeGridToLinear()V

    return-void
.end method

.method private checkMoreDragBoxMode()V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-nez v0, :cond_c

    .line 408
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkMoreDragBoxMode, mDraggingModeUIItem is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragFromGridToTab(Z)V

    .line 413
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 414
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    .line 416
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setGridMode()V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 418
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 419
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->addItemToLast(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 421
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_56

    :cond_55
    move v0, v1

    :goto_56
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragEnterFinish(I)V

    goto :goto_61

    .line 424
    :cond_5a
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_61

    .line 425
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 428
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    .line 429
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeLinearToGrid()V

    :cond_72
    return-void
.end method

.method private dispatchDropAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 4

    .line 267
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifyDropState(Z)V

    .line 270
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method private enterLinearViewArea()V
    .registers 4

    .line 2100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    .line 2102
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeGridToLinear()V

    .line 2104
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-eqz v0, :cond_1f

    .line 2105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getCenterPosX(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->handleLinearViewDragEnterEvent(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    :cond_1f
    return-void
.end method

.method private exitEditMode()V
    .registers 2

    .line 2089
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastScreenFormType:I

    if-nez v0, :cond_22

    .line 2090
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-eqz v0, :cond_15

    .line 2091
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerContainer()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 2092
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetMoreModeToNormal()V

    return-void

    .line 2093
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsPopSettingShow:Z

    if-nez v0, :cond_22

    .line 2094
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getVerticalModeSelector()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method private findAbovePosition(I)Landroid/graphics/Point;
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 594
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 596
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 597
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 598
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    rem-int/2addr p1, v0

    add-int/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 601
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v1, p1

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v1, p0

    .line 603
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 605
    :cond_5c
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private findBelowPosition(I)Landroid/graphics/Point;
    .registers 6

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 611
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 613
    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 614
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 615
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    sub-int/2addr v0, v2

    rem-int/2addr p1, v2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 618
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v1, p1

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v1, p0

    .line 620
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 622
    :cond_5d
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private getCenterPosX(Landroid/view/View;)I
    .registers 3

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getClosingItemCoordinateX(Z)I
    .registers 3

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 803
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p0, :cond_f

    return v0

    :cond_f
    if-eqz p1, :cond_16

    .line 807
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_1a

    .line 808
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 809
    :goto_1a
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 811
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_30
    return v0
.end method

.method private getDragBoxHeight(Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)I
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 631
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->more_mode_grid_item_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getGridItemViewDropTranslatePoint(Landroid/view/View;)Landroid/graphics/Point;
    .registers 10

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 656
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    if-nez p1, :cond_f

    goto/16 :goto_1d0

    .line 662
    :cond_f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_55

    .line 663
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    if-eqz v2, :cond_21

    goto :goto_44

    .line 667
    :cond_21
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemCenterPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 668
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    .line 669
    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->getSwapItemToY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v3

    :goto_42
    add-int/2addr v4, p1

    goto :goto_77

    .line 664
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemCenterPosition()Landroid/graphics/Point;

    move-result-object p1

    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getSwapItemCenterPosition()Landroid/graphics/Point;

    move-result-object p1

    iget v4, p1, Landroid/graphics/Point;->y:I

    goto :goto_77

    .line 672
    :cond_55
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v3

    goto :goto_42

    .line 675
    :goto_77
    sget-object p1, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getGridItemViewDropTranslatePoint, targetCenterX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", targetCenterY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " animating:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    .line 676
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mGridItemDisplayType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAddItemToLast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-static {p1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    new-array p1, v3, [I

    .line 678
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 679
    iget v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15d

    .line 680
    iget v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    if-eqz v5, :cond_142

    const/16 v7, 0x5a

    if-eq v5, v7, :cond_120

    const/16 v7, 0xb4

    if-eq v5, v7, :cond_f7

    const/16 v7, 0x10e

    if-eq v5, v7, :cond_d5

    goto/16 :goto_1d0

    .line 694
    :cond_d5
    aget v5, p1, v6

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 695
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aget p1, p1, v1

    sub-int/2addr v2, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    add-int/2addr v2, p0

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    .line 690
    :cond_f7
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    aget v1, p1, v1

    sub-int/2addr v5, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr v5, v1

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 691
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v4, v1

    aget p1, p1, v6

    add-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    .line 686
    :cond_120
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    aget v6, p1, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 687
    aget p1, p1, v1

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    .line 682
    :cond_142
    aget v1, p1, v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 683
    aget p1, p1, v6

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_15d
    if-eqz v5, :cond_1d1

    const/4 v7, 0x3

    if-ne v5, v7, :cond_163

    goto :goto_1d1

    :cond_163
    const/4 v7, 0x4

    if-ne v5, v7, :cond_188

    .line 705
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    aget v6, p1, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 706
    aget p1, p1, v1

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_188
    const/4 v7, 0x5

    if-ne v5, v7, :cond_1ad

    .line 708
    aget v5, p1, v6

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 709
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aget p1, p1, v1

    sub-int/2addr v2, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    add-int/2addr v2, p0

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_1ad
    if-ne v5, v3, :cond_1d0

    .line 711
    aget v1, p1, v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v1, v5

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 712
    aget p1, p1, v6

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    :cond_1d0
    :goto_1d0
    return-object v0

    .line 702
    :cond_1d1
    :goto_1d1
    aget v1, p1, v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 703
    aget p1, p1, v6

    sub-int/2addr v4, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    sub-int/2addr v4, p0

    iput v4, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getGridModeViewDropPosition(I)Landroid/graphics/Point;
    .registers 5

    .line 635
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 636
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_f

    goto :goto_26

    .line 639
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_1a

    goto :goto_26

    .line 643
    :cond_1a
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 644
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    if-nez v1, :cond_27

    :goto_26
    return-object v0

    .line 648
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    if-ge p1, v0, :cond_38

    .line 649
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->findAbovePosition(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    .line 651
    :cond_38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->findBelowPosition(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private getInsideLocation(Landroidx/recyclerview/widget/RecyclerView;FF)[F
    .registers 11

    const/4 v0, 0x2

    .line 936
    new-array v1, v0, [F

    .line 937
    instance-of v2, p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    .line 938
    aput p2, v1, v3

    .line 939
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v1, v4

    .line 941
    :cond_1d
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_7f

    .line 942
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    if-eqz v0, :cond_5a

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_35

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_5a

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_35

    goto/16 :goto_c2

    .line 953
    :cond_35
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz v0, :cond_c2

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr p2, v0

    .line 955
    aput p2, v1, v3

    .line 956
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v1, v4

    goto :goto_c2

    .line 945
    :cond_5a
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz v0, :cond_c2

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr p2, v0

    .line 947
    aput p2, v1, v3

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v1, v4

    goto :goto_c2

    :cond_7f
    if-eqz v2, :cond_b2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_b2

    if-ne v2, v0, :cond_87

    goto :goto_b2

    :cond_87
    const/4 v0, 0x4

    if-eq v2, v0, :cond_8d

    const/4 v0, 0x5

    if-ne v2, v0, :cond_c2

    .line 971
    :cond_8d
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz v0, :cond_c2

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr p2, v0

    .line 973
    aput p2, v1, v3

    .line 974
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v1, v4

    goto :goto_c2

    .line 965
    :cond_b2
    :goto_b2
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz v0, :cond_c2

    .line 966
    aput p2, v1, v3

    .line 967
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    aput p3, v1, v4

    .line 977
    :cond_c2
    :goto_c2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 978
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 979
    aget p1, v1, v4

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aput p0, v1, v4

    return-object v1
.end method

.method private getLinearClosingItem(F)Landroid/view/View;
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const/4 v2, 0x1

    .line 821
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getClosingItemCoordinateX(Z)I

    move-result v2

    const/4 v3, 0x0

    .line 822
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getClosingItemCoordinateX(Z)I

    move-result p0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_27

    .line 824
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_27
    if-eq p0, v3, :cond_37

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_37

    .line 826
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v1
.end method

.method private getMovePosition(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 5

    .line 508
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5d

    .line 509
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    if-eqz v0, :cond_54

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_42

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_29

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_18

    goto/16 :goto_a2

    .line 523
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto/16 :goto_9f

    .line 519
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v2, v0, v1

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_9f

    .line 515
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v2, v0, v1

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_ac

    .line 511
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_ac

    :cond_5d
    if-eqz v0, :cond_a4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    goto :goto_a4

    :cond_63
    const/4 v1, 0x2

    if-ne v0, v1, :cond_78

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v0, v1

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_ac

    :cond_78
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8d

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v2, v0, v1

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_ac

    :cond_8d
    const/4 v1, 0x5

    if-ne v0, v1, :cond_a2

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_9f
    sub-float p1, v0, p1

    goto :goto_ac

    :cond_a2
    :goto_a2
    move p1, v2

    goto :goto_ac

    .line 529
    :cond_a4
    :goto_a4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 541
    :goto_ac
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMovePosition:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMovePosition:Landroid/graphics/PointF;

    return-object p0
.end method

.method private getParentPosX()I
    .registers 2

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    .line 721
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0
.end method

.method private getParentPosY()I
    .registers 2

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    return p0

    .line 728
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getPositionByChildView(Landroid/view/View;)I
    .registers 2

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 928
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p1

    .line 930
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method private getTargetItemPos(Landroid/view/View;)I
    .registers 3

    .line 788
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getPositionByChildView(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    goto :goto_c

    .line 792
    :cond_8
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    if-eq p1, p0, :cond_d

    :goto_c
    return p1

    :cond_d
    return v0
.end method

.method private handleDragLocationAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Landroid/view/View;)V
    .registers 10

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    if-nez v0, :cond_c

    .line 733
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleDragLocationAction, mMoreDragBox is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 736
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->swapItemPositionIfNecessary(FF)V

    .line 737
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStarted(Z)V

    .line 740
    :cond_2d
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_36

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_41

    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_mode_linear_item_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 741
    :goto_41
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_59

    :cond_4e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/transsion/camera/R$dimen;->more_mode_grid_item_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 742
    :goto_59
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_b1

    .line 743
    new-instance p2, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    .line 744
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {p2, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 745
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2, p1, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getScrollPositionInLinearMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    .line 747
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v2, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v0, :cond_95

    if-nez v1, :cond_a5

    :cond_95
    if-nez v0, :cond_9d

    if-eqz v1, :cond_9d

    .line 748
    iget v2, p2, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_a5

    :cond_9d
    if-nez v1, :cond_ea

    if-eqz v0, :cond_ea

    iget v0, p2, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_ea

    .line 751
    :cond_a5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x4

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_ea

    .line 754
    :cond_b1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 755
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 756
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getScrollPositionInGridMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    .line 758
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v0, :cond_d1

    if-nez v1, :cond_e1

    :cond_d1
    if-nez v0, :cond_d9

    if-eqz v1, :cond_d9

    .line 759
    iget v2, p2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_e1

    :cond_d9
    if-nez v1, :cond_ea

    if-eqz v0, :cond_ea

    iget v0, p2, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_ea

    .line 762
    :cond_e1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 765
    :cond_ea
    :goto_ea
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->updateDragEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->translateDragBoxForDragLocationAction(FF)V

    return-void
.end method

.method private handleDragStartedAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;Ljava/lang/String;)V
    .registers 9

    .line 984
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startVibrator()V

    .line 985
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->makeDragBox()V

    .line 986
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f733333    # 0.95f

    const/16 v3, 0x12c

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1c

    .line 987
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-eqz v0, :cond_21

    .line 988
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    goto :goto_21

    .line 991
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    .line 993
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->updateDragBoxParameters(I)V

    .line 995
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setDragDropBoxViewType(Ljava/lang/String;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragStarted(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    .line 998
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result p3

    if-eqz p3, :cond_41

    .line 999
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    goto :goto_4b

    .line 1001
    :cond_41
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    .line 1003
    :goto_4b
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewPosition(FF)V

    .line 1004
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 1005
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getDragBoxHeight(Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;)I

    move-result v0

    .line 1006
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v1, v4, :cond_7a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1007
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1009
    :cond_7a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1, p3, v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewSize(II)V

    .line 1010
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getParentPosX()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getParentPosY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewParentPosition(II)V

    .line 1011
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingViewParentSize(II)V

    .line 1012
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1013
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->initialize()V

    const/4 p3, 0x4

    .line 1014
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getViewX()F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p1

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getViewY()F

    move-result p3

    sub-float/2addr p1, p3

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startDragBoxStartAnimation(FF)V

    .line 1017
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStart:Z

    return-void
.end method

.method private handleDropAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 7

    .line 1057
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    if-nez v0, :cond_c

    .line 1058
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleDropAction: mMoreDragBox is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1061
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onDragStop()V

    .line 1062
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_drag_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1063
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 1064
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    if-eqz v0, :cond_38

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2c

    goto :goto_38

    .line 1069
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_fold_drag_area_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_36
    div-float/2addr v0, v1

    goto :goto_43

    .line 1067
    :cond_38
    :goto_38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_drag_area_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_36

    .line 1072
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1073
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 1074
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v2

    .line 1075
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1076
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDropActionInLinearMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1077
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    if-eqz p1, :cond_78

    .line 1078
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    goto :goto_78

    .line 1081
    :cond_75
    invoke-direct {p0, v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleGridModeDropAction(IILcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1083
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->onDragStop()V

    .line 1084
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->onDragStop()V

    const/4 p1, 0x0

    .line 1085
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStart:Z

    return-void
.end method

.method private handleDropActionInLinearMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 7

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->findItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1091
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->getMotionEventGetX(IILcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;F)V

    :cond_1b
    const/4 p1, 0x0

    .line 1093
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 1094
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startDragAreaGroupLinearModeAnimation(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void
.end method

.method private handleGridModeDropAction(IILcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 16

    .line 1098
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->findItemView(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1, p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1100
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridItemViewDropTranslatePoint(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 1101
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v3, 0x1

    const v4, -0xd7a7a7b

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3f733333    # 0.95f

    const-wide/16 v9, 0x15e

    const/high16 v11, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_b4

    .line 1102
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const v3, 0x1fffffff

    invoke-virtual {v2, v9, v10, v4, v3}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeColor(JII)V

    if-nez v0, :cond_71

    .line 1104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridModeViewDropPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v7, v6, v5, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1106
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1107
    invoke-virtual {p1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1108
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 1114
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    .line 1115
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v7, v6, v5, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1116
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1117
    invoke-virtual {p1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    .line 1118
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1121
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1125
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_b4
    if-nez v0, :cond_f8

    .line 1129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getGridModeViewDropPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v7, v6, v5, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1131
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1132
    invoke-virtual {p1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1133
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 1139
    :cond_f8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2, v11, v8}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeScale(IFF)V

    .line 1140
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const p2, 0x8ffffff

    invoke-virtual {p1, v9, v10, v4, p2}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->changeColor(JII)V

    .line 1141
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    .line 1142
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v7, v6, v5, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1143
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1144
    invoke-virtual {p1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1145
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1149
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private handleOnDragEnd()V
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    if-nez v0, :cond_b

    .line 498
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 500
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventX:F

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setX(F)V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventY:F

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setY(F)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->dispatchDropAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    return-void
.end method

.method private handleOnDragMoved(FF)V
    .registers 7

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    if-nez v0, :cond_b

    .line 563
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 565
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 567
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragItemView:Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 568
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastDragEventY:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_47

    add-int/lit8 v2, v2, -0x1

    int-to-float v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_47

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->more_mode_not_support_drag_to_tab:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 571
    :cond_47
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastDragEventY:F

    .line 572
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 574
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setX(F)V

    .line 575
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setY(F)V

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragItemView:Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDragLocationAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Landroid/view/View;)V

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_74

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->checkMoreDragBoxMode()V

    return-void

    .line 580
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result p1

    if-nez p1, :cond_86

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    .line 582
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeGridToLinear()V

    :cond_86
    return-void
.end method

.method private hideViewWithAnimation(Landroid/view/View;)V
    .registers 7

    if-nez p1, :cond_b

    .line 1633
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 p0, 0x0

    .line 1636
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 1637
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 1638
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x96

    .line 1639
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1640
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    .line 1641
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1644
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initializeGridListView()V
    .registers 8

    .line 1264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v0, :cond_c

    .line 1265
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initializeGridListView, mMoreGridListView is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/16 v1, 0x1e

    .line 1268
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 1270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v2, 0x1

    if-nez v0, :cond_2f

    const/4 v0, 0x3

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 1276
    :goto_30
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setListEmptyListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;)V

    .line 1277
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setOnDataChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;)V

    .line 1278
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setOnGridItemDragListener(Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;)V

    .line 1279
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 1280
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    .line 1281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setAddItemCallback(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;)V

    .line 1283
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v5, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView-IA;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    .line 1284
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEnable(Z)V

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setAdapter(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V

    .line 1287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    .line 1289
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v2, :cond_96

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_b5

    .line 1292
    :cond_96
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_b0

    .line 1293
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    if-eqz v0, :cond_b5

    .line 1295
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    goto :goto_b5

    .line 1298
    :cond_b0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1301
    :cond_b5
    :goto_b5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateGridListViewPadding()V

    .line 1302
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez p0, :cond_c3

    const-string p0, "grid"

    goto :goto_c5

    :cond_c3
    const-string p0, "linear"

    :goto_c5
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    return-void
.end method

.method private initializeLinearListView()V
    .registers 3

    .line 1255
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    const/4 v1, 0x1

    .line 1256
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setDragEnterFinishCallback(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$OnDragEnterFinishCallback;)V

    .line 1258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setOnLinearItemDragListener(Lcom/transsion/camera/app/ui/mode/more/IMoreDragListener;)V

    .line 1259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setScreenSize(Landroid/util/Size;)V

    .line 1260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setAdapter(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method private initializeMoreBottomView()V
    .registers 6

    .line 1528
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1529
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1530
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1531
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_78

    .line 1532
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    if-eqz v3, :cond_51

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_29

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_51

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_29

    goto/16 :goto_e8

    .line 1542
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_horizontal_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1543
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_horizontal_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1544
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_e8

    .line 1535
    :cond_51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1536
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1537
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_e8

    :cond_78
    const/4 v4, 0x2

    if-ne v3, v4, :cond_9a

    .line 1551
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginModePlusBottomBarHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1552
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginTopBarHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1553
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_e8

    :cond_9a
    const/4 v4, 0x4

    if-eq v3, v4, :cond_c2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a1

    goto :goto_c2

    :cond_a1
    if-nez v3, :cond_e8

    .line 1562
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginModePlusBottomBarHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1563
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginTopBarHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1564
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_e8

    .line 1557
    :cond_c2
    :goto_c2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_horizontal_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1558
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_horizontal_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1559
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1567
    :cond_e8
    :goto_e8
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1569
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initializeTouchListener()V
    .registers 4

    .line 1359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->setOnDragStateListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView$DragStateListener;)V

    .line 1360
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1362
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$GestureListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initializeView()V
    .registers 4

    .line 1191
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeGridListView()V

    .line 1192
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeLinearListView()V

    .line 1193
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeMoreBottomView()V

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/16 v1, 0x8

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_4d

    .line 1202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_more_top_grid_view_normal:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1204
    :cond_4d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_more_top_linear_view_normal:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private isShowMoreModeGuideView()Z
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->show_more_mode_guide_view:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkMoreDragBoxMode$2()V
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemCenterPosition(I)V

    return-void
.end method

.method private synthetic lambda$dispatchDropAction$0(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDropAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$3(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$4(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->scaleX(F)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$5(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$6(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1135
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$handleGridModeDropAction$7(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1147
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$inflateView$8(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 5

    .line 1159
    sget-object p2, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "MoreView onInflateFinished"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_f

    .line 1161
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1162
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1164
    :cond_f
    sget p1, Lcom/transsion/camera/R$id;->more_grid_list_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    .line 1165
    sget p1, Lcom/transsion/camera/R$id;->more_linear_list_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    .line 1166
    sget p1, Lcom/transsion/camera/R$id;->more_save_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    .line 1167
    sget p1, Lcom/transsion/camera/R$id;->no_mode_in_grid_list:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    .line 1168
    sget p1, Lcom/transsion/camera/R$id;->more_item_edit_img:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 1169
    sget p1, Lcom/transsion/camera/R$id;->more_item_display_type:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 1170
    sget p1, Lcom/transsion/camera/R$id;->more_top_help_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    .line 1171
    sget p1, Lcom/transsion/camera/R$id;->more_grid_linear_switch_img:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    .line 1172
    sget p1, Lcom/transsion/camera/R$id;->more_grid_list_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    .line 1173
    sget p1, Lcom/transsion/camera/R$id;->more_bottom_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    .line 1174
    sget p1, Lcom/transsion/camera/R$id;->more_item_top_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    .line 1175
    sget p1, Lcom/transsion/camera/R$id;->more_mode_background_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeBackgroundView:Landroid/view/View;

    .line 1176
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeView()V

    .line 1177
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->initializeTouchListener()V

    .line 1178
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->refreshModePanelView()V

    .line 1179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1180
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEnable(Z)V

    .line 1182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->notifyScreenFormChanged(IZ)V

    .line 1183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz p1, :cond_b4

    .line 1184
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->updateModeList(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b4
    return-void
.end method

.method private synthetic lambda$onNotListEmpty$1()V
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setModeList$16(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 5

    .line 1731
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 1732
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 1731
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$13(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1654
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1655
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1656
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$14(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 3

    .line 1652
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateLayoutParams$17(Landroid/widget/RelativeLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1974
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1975
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private makeDragBox()V
    .registers 3

    .line 1592
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxFactory;->makeMoreDragBox(Landroid/content/Context;I)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    const/4 p0, 0x0

    .line 1593
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private notifyScreenFormChanged(IZ)V
    .registers 3

    .line 1893
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    .line 1894
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenSize:Landroid/util/Size;

    .line 1895
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateLayoutParams(IZ)V

    .line 1896
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastScreenFormType:I

    return-void
.end method

.method private onDragStarted(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 4

    .line 1021
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setDragStartEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    if-nez p1, :cond_1f

    .line 1024
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->onDragStarted(Z)V

    .line 1026
    :cond_1f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez p1, :cond_29

    const/4 p1, 0x1

    .line 1027
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 1028
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeEditMode()V

    .line 1030
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_32

    .line 1031
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_32
    return-void
.end method

.method private onDragStop()V
    .registers 3

    .line 1036
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1037
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    .line 1038
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    .line 1039
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 1040
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterLinearViewArea:Z

    .line 1041
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterNoModeGridViewArea:Z

    .line 1042
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnterMoreGridListViewArea:Z

    const/4 v0, -0x1

    .line 1043
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastGridItemPosition:I

    .line 1044
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastLinearItemPosition:I

    .line 1045
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    const/4 v0, 0x0

    .line 1046
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 1047
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 1048
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragMoveEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 1049
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEndEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 1050
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 1051
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_30

    .line 1052
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_30
    return-void
.end method

.method private runMoreContainerRotateAnimator()V
    .registers 8

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_c

    .line 1858
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "runMoreContainerRotateAnimator: mMoreContainerRootLayout is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1861
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1862
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1864
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1868
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    .line 1869
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomIn:Landroid/animation/ObjectAnimator;

    .line 1870
    sget-object v1, Lcom/transsion/camera/app/ui/mode/more/MoreView;->ROTATE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$2;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1880
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerZoomOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private saveCurrentModeOrder()Z
    .registers 4

    .line 1573
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1577
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 1578
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 1581
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v2, :cond_2c

    .line 1582
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->providerDVVideoModeFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_2c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentModes(Ljava/util/List;Ljava/util/List;)V

    .line 1586
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentModes(Ljava/util/List;)V

    .line 1587
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeNormalMode()V

    const/4 p0, 0x1

    return p0
.end method

.method private setContainerOrientation(I)V
    .registers 5

    .line 1923
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_c

    .line 1924
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setContainerOrientation, mMoreContainerRootLayout is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1927
    :cond_c
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_27

    const/4 v1, 0x4

    if-eq p0, v1, :cond_27

    const/4 v1, 0x5

    if-ne p0, v1, :cond_19

    goto :goto_27

    :cond_19
    if-eqz p0, :cond_23

    const/4 p1, 0x2

    if-eq p0, p1, :cond_23

    const/4 p1, 0x3

    if-ne p0, p1, :cond_22

    goto :goto_23

    :cond_22
    return-void

    .line 1934
    :cond_23
    :goto_23
    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 1930
    :cond_27
    :goto_27
    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method private setDragDropBoxViewType(Ljava/lang/String;)V
    .registers 3

    .line 1597
    const-string v0, "grid_item_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1598
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setGridMode()V

    const/4 p1, 0x1

    .line 1599
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    return-void

    .line 1601
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->setLinearMode()V

    const/4 p1, 0x0

    .line 1602
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromGridView:Z

    return-void
.end method

.method private setGridViewScrollMode()V
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    .line 457
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v2, :cond_27

    .line 458
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_21

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    if-eqz v0, :cond_20

    .line 461
    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    :cond_20
    return-void

    .line 464
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void

    .line 467
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method private showOrHideView(Landroid/view/View;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_f

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1422
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 1423
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/4 p0, 0x4

    .line 1425
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;)V
    .registers 8

    if-nez p1, :cond_b

    .line 1608
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 1611
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1613
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1614
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x32

    .line 1615
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x96

    .line 1616
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v0, v5, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1617
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$1;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/view/View;)V

    .line 1618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    .line 1625
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1628
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startDragAreaGroupLinearModeAnimation(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 8

    .line 1648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1649
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v5, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1650
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1651
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 1652
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startDragBoxStartAnimation(FF)V
    .registers 6

    .line 1662
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    move p1, v2

    move p2, p1

    .line 1666
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v2, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1667
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    .line 1668
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1669
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startGridLinearSwitchAnimation()V
    .registers 8

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 323
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 324
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 325
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 330
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerImg:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_9a

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xfa

    .line 334
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    sget-object v3, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSwitchDisplayTypeInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    new-array v0, v2, [F

    fill-array-data v0, :array_a2

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 339
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x64

    .line 340
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 341
    invoke-virtual {p0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_9a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startVibrator()V
    .registers 4

    .line 1520
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 1521
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_17

    .line 1523
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_17
    return-void
.end method

.method private swapItemPositionIfNecessary(FF)V
    .registers 15

    .line 833
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapItemPositionIfNecessary, dragEventX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", dragEventY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 834
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->calculatorDragPosition(F)V

    .line 836
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 837
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    goto :goto_2e

    .line 839
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    .line 841
    :goto_2e
    invoke-direct {p0, v1, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getInsideLocation(Landroidx/recyclerview/widget/RecyclerView;FF)[F

    move-result-object v2

    const/4 v4, 0x0

    .line 842
    aget v10, v2, v4

    const/4 v4, 0x1

    .line 843
    aget v8, v2, v4

    .line 844
    invoke-virtual {v1, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    .line 845
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getTargetItemPos(Landroid/view/View;)I

    move-result v2

    if-nez v1, :cond_62

    .line 847
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->containsData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto/16 :goto_ed

    .line 851
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 852
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getLinearClosingItem(F)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5e

    goto/16 :goto_ed

    .line 856
    :cond_5e
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getTargetItemPos(Landroid/view/View;)I

    move-result v2

    :cond_62
    move-object v5, v1

    move v7, v2

    .line 861
    move-object v1, v5

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v1

    .line 862
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-eqz v2, :cond_ed

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto/16 :goto_ed

    .line 865
    :cond_81
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v2, v1, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 866
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v2, v1, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->notifyDragEnterFixModeArea(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 867
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    if-eqz v1, :cond_94

    goto :goto_ed

    .line 870
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastItemPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreDragBox:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    const/4 v11, -0x1

    if-eqz v0, :cond_dc

    .line 872
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v4, :cond_cb

    .line 873
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;FFILandroid/view/View;IIF)I

    return-void

    .line 875
    :cond_cb
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;FFILandroid/view/View;IIF)I

    move-result p1

    if-eq p1, v11, :cond_ed

    .line 877
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    return-void

    .line 881
    :cond_dc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget v8, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    move v9, v7

    move-object v7, v5

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/View;IIF)I

    move-result p1

    if-eq p1, v11, :cond_ed

    .line 883
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    :cond_ed
    :goto_ed
    return-void
.end method

.method private updateGridListViewPadding()V
    .registers 7

    .line 1306
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_58

    .line 1307
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    if-eqz v0, :cond_38

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_18

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_38

    const/16 v3, 0x10e

    if-eq v0, v3, :cond_18

    goto/16 :goto_be

    .line 1318
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_horizontal_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1319
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v2, :cond_32

    .line 1320
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1322
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1310
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_portrait_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1311
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v2, :cond_52

    .line 1312
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_portrait_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1314
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_58
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v3, :cond_b2

    .line 1328
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v0, v2, :cond_94

    .line 1329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1330
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/2addr v2, v4

    .line 1331
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/2addr p0, v4

    .line 1329
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1334
    :cond_94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_type_view_column_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1335
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/camera/R$dimen;->more_grid_list_item_margin_bottom:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int p0, v0, p0

    invoke-virtual {v1, v0, v0, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_b2
    const/4 v3, 0x4

    if-eq v0, v3, :cond_115

    const/4 v3, 0x5

    if-ne v0, v3, :cond_b9

    goto :goto_115

    :cond_b9
    if-eqz v0, :cond_bf

    if-ne v0, v4, :cond_be

    goto :goto_bf

    :cond_be
    :goto_be
    return-void

    .line 1346
    :cond_bf
    :goto_bf
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v0, v2, :cond_f7

    .line 1347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1348
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/2addr v2, v4

    .line 1349
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/2addr p0, v4

    .line 1347
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1352
    :cond_f7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1353
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/camera/R$dimen;->more_grid_list_item_margin_bottom:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int p0, v0, p0

    invoke-virtual {v1, v0, v0, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1339
    :cond_115
    :goto_115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_horizontal_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1340
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v2, :cond_12f

    .line 1341
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1343
    :cond_12f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateLayoutParams(IZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1939
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    if-eqz v2, :cond_2f3

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    if-eqz v2, :cond_2f3

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_12

    goto/16 :goto_2f3

    .line 1943
    :cond_12
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setContainerOrientation(I)V

    .line 1944
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1945
    sget v3, Lcom/transsion/camera/R$dimen;->more_top_help_text_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1946
    sget v4, Lcom/transsion/camera/R$dimen;->more_top_help_text_expand_vertical_bottom_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1947
    sget v5, Lcom/transsion/camera/R$dimen;->more_save_button_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1948
    sget v6, Lcom/transsion/camera/R$dimen;->more_item_display_margin_end:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1950
    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1951
    iget-object v8, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1952
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1953
    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1954
    iget-object v11, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1955
    iget-object v12, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1956
    iget-object v13, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1957
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/4 v6, 0x0

    .line 1958
    invoke-virtual {v11, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1959
    invoke-virtual {v12, v6, v5, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1960
    invoke-virtual {v9, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1962
    iget v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1964
    iget v5, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v14, 0x3

    if-ne v5, v14, :cond_88

    .line 1965
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/transsion/camera/R$dimen;->more_linear_margin_top_hover:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    goto :goto_89

    :cond_88
    move v5, v6

    .line 1969
    :goto_89
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_bd

    if-eqz p2, :cond_bd

    .line 1970
    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    move/from16 v16, v14

    const-wide/16 v14, 0x190

    .line 1971
    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1972
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/transsion/camera/app/ui/mode/more/MoreView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1973
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v10}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1977
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c6

    :cond_bd
    move/from16 v16, v14

    .line 1979
    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1980
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1983
    :goto_c6
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/16 v5, 0x10e

    const/16 v14, 0x5a

    const/16 v15, 0xe

    const/4 v6, 0x1

    if-ne v3, v6, :cond_185

    .line 1984
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->exitEditMode()V

    .line 1985
    sget v3, Lcom/transsion/camera/R$dimen;->more_item_display_expand_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz v1, :cond_136

    if-eq v1, v14, :cond_e9

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_136

    if-eq v1, v5, :cond_e9

    goto/16 :goto_2de

    .line 2005
    :cond_e9
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2006
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2007
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2008
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2009
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2010
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_horizontal_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2011
    sget v1, Lcom/transsion/camera/R$dimen;->more_save_button_expand_horizontal_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2013
    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_horizontal_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2014
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v6, :cond_12e

    .line 2015
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_horizontal_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2017
    :cond_12e
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2de

    .line 1989
    :cond_136
    iput v4, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1990
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1991
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1992
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1993
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1994
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_vertical_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1995
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_vertical_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1996
    sget v1, Lcom/transsion/camera/R$dimen;->more_save_button_expand_vertical_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1997
    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_portrait_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1998
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v6, :cond_17d

    .line 1999
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_portrait_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2001
    :cond_17d
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2de

    :cond_185
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v11, -0x1

    if-ne v3, v1, :cond_202

    .line 2023
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->exitEditMode()V

    .line 2024
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2025
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2026
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2027
    sget v1, Lcom/transsion/camera/R$dimen;->more_bottom_layout_column_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2028
    sget v1, Lcom/transsion/camera/R$dimen;->more_top_layout_column_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2029
    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_layout_column_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2030
    sget v1, Lcom/transsion/camera/R$dimen;->save_button_column_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2031
    sget v1, Lcom/transsion/camera/R$dimen;->more_item_display_column_margin_end:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2032
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v1, v6, :cond_1eb

    .line 2033
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    sget v3, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    .line 2034
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    .line 2035
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    .line 2036
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    .line 2033
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2de

    .line 2038
    :cond_1eb
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_type_view_column_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2039
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    sget v4, Lcom/transsion/camera/R$dimen;->more_grid_list_item_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2de

    :cond_202
    const/4 v1, 0x4

    if-eq v3, v1, :cond_281

    const/4 v4, 0x5

    if-ne v3, v4, :cond_20a

    goto/16 :goto_281

    :cond_20a
    move/from16 v1, v16

    if-eqz v3, :cond_210

    if-ne v3, v1, :cond_2de

    :cond_210
    if-nez v3, :cond_21c

    .line 2060
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastScreenFormType:I

    if-eq v3, v1, :cond_21c

    .line 2063
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    .line 2064
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetMoreModeToNormal()V

    .line 2066
    :cond_21c
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2067
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2068
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginModePlusBottomBarHeight()I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2069
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getOriginTopBarHeight()I

    move-result v1

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2070
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v3

    iget v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v1, v3

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2072
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v1, v6, :cond_26b

    .line 2073
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    sget v3, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    .line 2074
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v16, 0x3

    mul-int/lit8 v4, v4, 0x3

    sget v5, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    .line 2075
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/transsion/camera/R$dimen;->more_linear_item_margin:I

    .line 2076
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    .line 2073
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2de

    .line 2078
    :cond_26b
    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2079
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    sget v4, Lcom/transsion/camera/R$dimen;->more_grid_list_item_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2de

    :cond_281
    :goto_281
    if-ne v3, v1, :cond_284

    move v5, v14

    .line 2043
    :cond_284
    invoke-direct {v0, v5}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setContainerOrientation(I)V

    .line 2044
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->exitEditMode()V

    .line 2045
    sget v1, Lcom/transsion/camera/R$dimen;->more_item_display_expand_margin_end:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 2046
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_list_view_expand_width:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2047
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2048
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_bottom_view_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2049
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_top_view_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2050
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_horizontal_height:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2051
    sget v1, Lcom/transsion/camera/R$dimen;->more_mode_grid_layout_expand_horizontal_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2052
    sget v1, Lcom/transsion/camera/R$dimen;->more_save_button_expand_horizontal_top_margin:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2053
    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_expand_horizontal_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2054
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-ne v3, v6, :cond_2d8

    .line 2055
    sget v1, Lcom/transsion/camera/R$dimen;->more_linear_type_view_expand_horizontal_padding:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2057
    :cond_2d8
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2082
    :cond_2de
    :goto_2de
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2083
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreBottomView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2084
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2085
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1940
    :cond_2f3
    :goto_2f3
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateLayoutParams:  mMoreBottomView, mMoreTopView, mMoreGridListLayout is null, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeDisplayType()V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v0, :cond_9

    goto :goto_5c

    .line 278
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_12

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->startGridLinearSwitchAnimation()V

    .line 281
    :cond_12
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 283
    iput v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 284
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateGridListViewPadding()V

    goto :goto_2e

    .line 286
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 287
    iput v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateGridListViewPadding()V

    .line 290
    :goto_2e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez p0, :cond_57

    const-string p0, "grid"

    goto :goto_59

    :cond_57
    const-string p0, "linear"

    :goto_59
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public changeEditMode()V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    const-string v2, "place_holder"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_37

    .line 213
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 216
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_53

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 222
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 223
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    if-ne v0, v1, :cond_66

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getVerticalModeSelector()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    goto :goto_78

    .line 226
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerContainer()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 229
    :goto_78
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->isShowMoreModeGuideView()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 232
    :cond_87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeEditMode()V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public changeNormalMode()V
    .registers 4

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_29

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 246
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 247
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    if-ne v1, v2, :cond_3c

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getVerticalModeSelector()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    goto :goto_4e

    .line 250
    :cond_3c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerContainer()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 253
    :goto_4e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->isShowMoreModeGuideView()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 256
    :cond_5d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-eqz v1, :cond_64

    .line 257
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeNormalMode()V

    .line 259
    :cond_64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 771
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 775
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_14

    .line 777
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 779
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1b

    .line 780
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 784
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public hideMoreView()V
    .registers 2

    const/4 v0, 0x0

    .line 1704
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    .line 1705
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 1708
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 1709
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/widget/RotateLayout;)Landroid/view/View;
    .registers 5

    .line 1156
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreContainerRootLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 1157
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget p3, Lcom/transsion/camera/R$layout;->more_view_layout:I

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-virtual {p1, p3, p0, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-object p2
.end method

.method public isInEditMode()Z
    .registers 1

    .line 2110
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    return p0
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    .line 1919
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsPopSettingShow:Z

    return-void
.end method

.method public notifyWindowsHasFocus(Z)V
    .registers 2

    .line 588
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHasWindowFocus:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .line 1808
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 1809
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 1812
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->backToPreviousMode(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1813
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_17

    .line 1814
    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    :cond_17
    return v1

    .line 1818
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->saveCurrentModeOrder()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 348
    sget v0, Lcom/transsion/camera/R$id;->more_item_edit_img:I

    if-ne p1, v0, :cond_17

    .line 349
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-nez p1, :cond_33

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 351
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeEditMode()V

    return-void

    .line 353
    :cond_17
    sget v0, Lcom/transsion/camera/R$id;->more_item_display_type:I

    if-ne p1, v0, :cond_2c

    const-wide/16 v0, 0x1f4

    .line 354
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_33

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    if-nez p1, :cond_28

    goto :goto_33

    .line 357
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeDisplayType()V

    return-void

    .line 358
    :cond_2c
    sget v0, Lcom/transsion/camera/R$id;->more_save_button:I

    if-ne p1, v0, :cond_33

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->saveCurrentModeOrder()Z

    :cond_33
    :goto_33
    return-void
.end method

.method public onDragEnterFinish(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1431
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mChangedRecyclerView:Z

    .line 1432
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mLastItemPos:I

    return-void
.end method

.method public onDragStateChanged(ZZ)V
    .registers 3

    .line 1380
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragEnterPlaceHolder:Z

    .line 1381
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragFromPlaceHolderToOtherArea:Z

    return-void
.end method

.method public onGridViewDataChanged()V
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-nez v0, :cond_9

    goto :goto_c

    .line 452
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    :cond_c
    :goto_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_d

    .line 1715
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    .line 1716
    :cond_d
    :goto_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemDragStart(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 547
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragItemView:Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDropFinished:Z

    .line 549
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 550
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridRecyclerViewItemAnimator:Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifyDropState(Z)V

    .line 554
    new-instance p1, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    .line 555
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setDragItemType(Ljava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventX:F

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setX(F)V

    .line 557
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventY:F

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->setY(F)V

    .line 558
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragItemView:Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleDragStartedAction(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;Ljava/lang/String;)V

    return-void
.end method

.method public onListEmpty()V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_45

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 371
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x32

    .line 372
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0x96

    .line 373
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 374
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_45
    :goto_45
    return-void
.end method

.method public onNotListEmpty()V
    .registers 7

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    goto :goto_3f

    .line 383
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mNoModeInGridList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 385
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v5, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 1841
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mOrientation:I

    .line 1842
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_18

    .line 1844
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_11

    .line 1845
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 1847
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_18

    .line 1848
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 1851
    :cond_18
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    if-ne p1, v1, :cond_1f

    .line 1852
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->runMoreContainerRotateAnimator()V

    :cond_1f
    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 472
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performTouchEvent, ev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4f

    goto :goto_4e

    .line 479
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventX:F

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventY:F

    .line 481
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragStart:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mHasWindowFocus:Z

    if-eqz v0, :cond_4e

    .line 482
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->getMovePosition(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 483
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleOnDragMoved(FF)V

    :cond_4e
    :goto_4e
    return-void

    .line 489
    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventX:F

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventY:F

    .line 491
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleOnDragEnd()V

    return-void

    .line 475
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventX:F

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mTouchEventY:F

    return-void
.end method

.method public refreshModePanelView()V
    .registers 3

    .line 1750
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    if-eqz v1, :cond_2c

    .line 1751
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->updateSecureCamera(Z)V

    .line 1752
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->updateModeData(Ljava/util/List;)V

    .line 1753
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1754
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_29

    .line 1755
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onListEmpty()V

    goto :goto_2c

    .line 1757
    :cond_29
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onNotListEmpty()V

    .line 1760
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    if-eqz v1, :cond_3c

    .line 1761
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->updateModeData(Ljava/util/List;)V

    .line 1762
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListAdapter:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3c
    return-void
.end method

.method public resetDragAndDropState()V
    .registers 1

    .line 1414
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->handleOnDragEnd()V

    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 4

    .line 1385
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMoreModeToNormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1386
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    if-nez v0, :cond_21

    goto :goto_8d

    :cond_21
    const/4 v0, 0x0

    .line 1389
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsEditMode:Z

    .line 1390
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDragSuccess:Z

    .line 1391
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1393
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1394
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreTopHelpText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1395
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1396
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1397
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1399
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1400
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mScreenFormType:I

    if-ne v1, v2, :cond_62

    .line 1401
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getVerticalModeSelector()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    goto :goto_74

    .line 1403
    :cond_62
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1404
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerContainer()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1406
    :goto_74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->isShowMoreModeGuideView()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1407
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getMoreModeGuideLeftRoot()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showOrHideView(Landroid/view/View;Z)V

    .line 1409
    :cond_83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->changeNormalMode()V

    .line 1410
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateMoreEditMode(Z)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public restoreView()V
    .registers 5

    .line 1366
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez v0, :cond_5

    return-void

    .line 1369
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_grid_type_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1370
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_grid_list_item_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1371
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setGridViewScrollMode()V

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    .line 1373
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    .line 1374
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 1375
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string v0, "grid"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMoreModeDisplayType(Ljava/lang/String;)V

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .registers 2

    .line 1796
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mClickModeIconListener:Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 1674
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mEnable:Z

    .line 1675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_9

    .line 1676
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1678
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_10

    .line 1679
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1681
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz p0, :cond_17

    .line 1682
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEnable(Z)V

    :cond_17
    return-void
.end method

.method public setIsModeSwitching(Z)V
    .registers 2

    .line 1209
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mIsModeSwitching:Z

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 1791
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 8

    .line 1724
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mCurrentCameraId:Ljava/lang/String;

    .line 1725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeUIItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1726
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1728
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getPanelModeList()Ljava/util/List;

    move-result-object p1

    .line 1729
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p2

    .line 1731
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1735
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1736
    iget-object v0, p2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_31

    .line 1739
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeTabItems:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSellingPointArray:Ljava/util/List;

    iget-object v3, p2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1742
    :cond_5b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->refreshModePanelView()V

    .line 1743
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreLinearListView:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    if-eqz p1, :cond_67

    .line 1744
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;->updateModeList(Landroid/content/Context;Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeNameBeforeSwitchMoreMode:Ljava/lang/String;

    return-void
.end method

.method public setMoreMoreBackgroundVisibility(I)V
    .registers 4

    .line 1900
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeBackgroundView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1901
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setMoreMoreBackgroundVisibility: mMoreModeBackgroundView is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_3a

    const p1, 0x3e4ccccd    # 0.2f

    .line 1905
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1906
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreModeBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1908
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1909
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/camera/app/ui/mode/more/MoreView;->MORE_MODE_BACKGROUND_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    .line 1910
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 1911
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1912
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_3a
    const/16 p0, 0x8

    .line 1914
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .registers 2

    .line 1442
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMorePanelScrollListener:Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 1767
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setViewEnable(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    return-void
.end method

.method public setupViews()V
    .registers 1

    return-void
.end method

.method public showMoreView()V
    .registers 2

    const/4 v0, 0x1

    .line 1692
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreViewShow:Z

    const/4 v0, 0x0

    .line 1693
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mViewEnable:Z

    .line 1694
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchImageType()V

    .line 1695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemEditImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1698
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 1699
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListView:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public switchImageType()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreItemDisplayType:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_5

    return-void

    .line 308
    :cond_5
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-nez p0, :cond_f

    .line 309
    sget p0, Lcom/transsion/camera/R$drawable;->ic_more_top_grid_view_normal:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 311
    :cond_f
    sget p0, Lcom/transsion/camera/R$drawable;->ic_more_top_linear_view_normal:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public switchItemType()V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "more_grid_mode_item_display_type"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 299
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mGridItemDisplayType:I

    if-eq v0, v1, :cond_1f

    .line 300
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->changeDisplayType()V

    :cond_1f
    return-void
.end method

.method public updateAddItemLast(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 436
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mAddItemToLast:Z

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 1801
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView;->mMoreGridListAdapter:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    if-eqz p0, :cond_7

    .line 1802
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
