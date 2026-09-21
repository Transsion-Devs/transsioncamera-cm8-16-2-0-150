.class public Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final COMPOSE:I = 0x0

.field private static final DEFAULT_POSITION:I = 0x0

.field private static final EDITOR:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

.field private mCheckPlayStartPosition:Z

.field private final mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

.field private mComposePlayRoot:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private mCurTempSourceStartTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAction:I

.field private final mCurrentPage:I

.field private final mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private final mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

.field private mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mEditorListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;

.field private mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private final mHLSegmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitScreenFormType:I

.field private mIsExportDialogShow:Z

.field private mIsPlaying:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPlayButtonRoot:Landroid/widget/FrameLayout;

.field private mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

.field private mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mReplaceItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private mScreenFormType:I

.field private mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

.field private mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSupportFreeShotEditor:Z

.field private mSurfaceLineCover:Landroid/view/View;

.field private mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

.field private mTemplateCardView:Landroidx/cardview/widget/CardView;

.field private mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mToolbarRoot:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$0w9EoBlOhlE3XGVH3c4fTpQqteM(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showExportDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$26DJBW6X5UKOmt5r5TDUcfHf-gQ(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onPlayerPlaying$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$37EfT7YfbAvXtkEF-1taWDrZyqs(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->playButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Lejx4YuwOuB1zQmi2X1YWuK-kQ(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onExportClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7fZ-RFmZHFHF_wgqeXaEU5JERNg(JLcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V
    .registers 3

    .line 1325
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->setSourceStartTime(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9NfskQmTXYMsQ1ffL8-5wEuXZoM(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onPlayerProgress$11(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ALsTE5xyUNSSXKmUZFD-n3dvXYU(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showExportDialog$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$HeVAb4bvQZbqVPmbPVN9Z9P8ftY(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onComposeStarted$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$RmaPiuNnAUmz0wsaoW1SeHslDmY(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showResolutionDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VSKAPPnuvtpP3jTF4gLjDsSBqzI(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onTopBackClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7-ZHEnsUvJC8EskIoyXJEsK8xQ([ILandroid/content/DialogInterface;I)V
    .registers 5

    .line 774
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExportClick, which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 775
    aput p2, p0, p1

    return-void
.end method

.method public static synthetic $r8$lambda$c9GeWaSdtdmB_Dd-E-4-d0k7xVo(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;[ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showResolutionDialog$2([ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAedXPwpkDF182fWjT6rBBcmS3Q(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onExportProgress$7(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$eN6GK5MokmANOF-szbpg8nHsGK8(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onComposeCompleted$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$gRV-7ZgZu0VmysML30o2jD2wjUU(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showResolutionDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$soTYv55SJU67eJ3tVjadpbr8w0w(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$onTemplateMatchCompleted$8(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5mPMvmh9KTd5aG6O7ZsRgpa91o(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onEditorDone(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yH3nGQEm5z65QQndIj3YaG63C_g(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->lambda$showExportDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 65
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_EditorUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;II)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;",
            "Lcom/transsion/camera/feature/mode/vlog/VlogHelper;",
            "Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;",
            "Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;",
            "Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;",
            "II)V"
        }
    .end annotation

    move/from16 v5, p11

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsExportDialogShow:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCheckPlayStartPosition:Z

    .line 113
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    .line 127
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    .line 128
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSupportFreeShotEditor:Z

    .line 129
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    .line 130
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mHLSegmentList:Ljava/util/ArrayList;

    move-object/from16 p3, p7

    .line 131
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    move/from16 v6, p10

    .line 132
    iput v6, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    .line 133
    iput v5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    .line 134
    iput v5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    move-object/from16 p3, p8

    .line 135
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    move-object/from16 p3, p9

    .line 136
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;

    .line 137
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-direct {p3, p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 138
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 139
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 v4, 0x1

    move-object v8, p0

    move-object v1, p1

    move v3, p2

    move-object v0, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;IZIILcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    return-void
.end method

.method private addSurfaceCallbackListener()V
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    if-nez v0, :cond_5

    return-void

    .line 715
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private doAnimWhenViewChanged()V
    .registers 19

    move-object/from16 v0, p0

    .line 1163
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v1

    .line 1164
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    .line 1165
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v3

    .line 1167
    iget v4, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1a

    const/4 v6, 0x3

    if-ne v4, v6, :cond_23

    :cond_1a
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 1169
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_23

    return-void

    .line 1173
    :cond_23
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doViewAnimWhenStateChanged, supportFoldUI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", onlySupportTBHoverUI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", supportColumnOrBoth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v6, 0x190

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v1, :cond_130

    if-nez v2, :cond_130

    if-eqz v3, :cond_5c

    .line 1184
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-nez v2, :cond_5c

    goto/16 :goto_130

    .line 1225
    :cond_5c
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1226
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1227
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 1228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doViewAnimWhenStateChanged, screenSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mOrientation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", previewSurfaceHeight:  + previewSurfaceHeight"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1228
    invoke-static {v4, v11}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1231
    iget v4, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    if-eqz v4, :cond_e6

    const/16 v11, 0x5a

    if-eq v4, v11, :cond_d9

    const/16 v11, 0xb4

    if-eq v4, v11, :cond_c1

    const/16 v1, 0x10e

    if-eq v4, v1, :cond_b1

    move v1, v8

    move v2, v1

    :goto_af
    move v4, v9

    goto :goto_fa

    .line 1244
    :cond_b1
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    :goto_be
    int-to-float v1, v1

    move v2, v8

    goto :goto_af

    .line 1237
    :cond_c1
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    int-to-float v11, v2

    div-float/2addr v4, v11

    .line 1238
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    neg-int v1, v3

    int-to-float v1, v1

    :goto_d5
    div-float/2addr v1, v10

    move v2, v1

    move v1, v8

    goto :goto_fa

    .line 1241
    :cond_d9
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_be

    .line 1233
    :cond_e6
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    int-to-float v11, v2

    div-float/2addr v4, v11

    .line 1234
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    goto :goto_d5

    .line 1250
    :goto_fa
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v3, v5, :cond_116

    .line 1251
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1252
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1253
    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1254
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_12d

    .line 1256
    :cond_116
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1257
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1258
    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1259
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_12d
    move v3, v8

    goto/16 :goto_1d4

    .line 1187
    :cond_130
    :goto_130
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    .line 1189
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getTopRegionHeight()I

    move-result v3

    if-eqz v1, :cond_155

    .line 1192
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v11, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal_fold:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_161

    .line 1193
    :cond_155
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v11, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1194
    :goto_161
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_hover_status:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v12, v11

    int-to-float v13, v1

    div-float v14, v12, v13

    div-float v15, v13, v12

    div-float v16, v2, v13

    div-float v17, v2, v12

    .line 1201
    iget v9, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-nez v9, :cond_192

    .line 1202
    iget v9, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v9, :cond_187

    sub-float/2addr v2, v13

    div-float/2addr v2, v10

    move v3, v8

    move/from16 v9, v16

    :goto_184
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1a5

    :cond_187
    int-to-float v3, v3

    sub-float/2addr v2, v12

    div-float/2addr v2, v10

    add-float/2addr v2, v3

    sub-int/2addr v1, v11

    int-to-float v1, v1

    div-float/2addr v1, v10

    add-float/2addr v3, v1

    move/from16 v9, v17

    goto :goto_1a5

    .line 1215
    :cond_192
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v2, :cond_1a0

    int-to-float v2, v3

    sub-int/2addr v1, v11

    int-to-float v1, v1

    div-float/2addr v1, v10

    add-float/2addr v2, v1

    neg-float v3, v2

    move v2, v3

    move v9, v14

    move v15, v9

    goto :goto_1a5

    :cond_1a0
    move v2, v8

    move v3, v2

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_184

    .line 1222
    :goto_1a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doViewAnimWhenStateChanged: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", toEditorTranslationY: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", fromEditorRatio: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", fromEditorTranslationY : "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v8

    move v4, v9

    move v9, v15

    .line 1263
    :goto_1d4
    iget v10, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v10, v5, :cond_1f8

    .line 1264
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1265
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1266
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1267
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1268
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1269
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 1271
    :cond_1f8
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1272
    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1273
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1274
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1275
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1276
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private doNullableAction(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1332
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private hideDialog()V
    .registers 3

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 829
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 830
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 833
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_13

    .line 834
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 835
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    :cond_13
    return-void
.end method

.method private initClickEvents()V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private initRecyclerView()V
    .registers 2

    .line 224
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->initReplaceRecyclerView()V

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSupportFreeShotEditor:Z

    if-eqz v0, :cond_a

    .line 226
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->initSegmentRecyclerView()V

    :cond_a
    return-void
.end method

.method private initReplaceRecyclerView()V
    .registers 12

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->replace_template_recyclerview_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->replace_template_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateCardView:Landroidx/cardview/widget/CardView;

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->replace_template_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 241
    new-instance v5, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    .line 243
    iget v9, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    const/4 v0, 0x2

    if-ne v9, v0, :cond_4e

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    :cond_4e
    move-object v7, v4

    const/4 v0, 0x1

    if-ne v9, v0, :cond_58

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSupportFreeShotEditor:Z

    if-eqz v1, :cond_58

    move v10, v0

    goto :goto_59

    :cond_58
    move v10, v2

    :goto_59
    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIZ)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    .line 247
    invoke-virtual {v5, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$OnItemClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initSegmentRecyclerView()V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_fill_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 259
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    .line 260
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_top_tool_bar_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->compose_play_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposePlayRoot:Landroid/widget/FrameLayout;

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_top_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/transsion/camera/feature/vlog/R$id;->export_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v2, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_top_export:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->compose_surface:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->compose_surface_line_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->compose_play_button_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->compose_play_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    return-void
.end method

.method private isMainThread()Z
    .registers 2

    .line 1073
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onComposeCompleted$10()V
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz v0, :cond_13

    .line 1009
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    .line 1011
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1012
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onComposeCompleted()V

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onComposeStarted$9()V
    .registers 3

    .line 969
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz v0, :cond_d

    .line 971
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    .line 973
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 975
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onComposeStarted()V

    return-void
.end method

.method private synthetic lambda$onExportProgress$7(F)V
    .registers 3

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 848
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setProgress(I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$onPlayerPlaying$12(Z)V
    .registers 4

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    if-eqz v1, :cond_9

    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_play:I

    goto :goto_b

    :cond_9
    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_stop:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1067
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->onPlayerPlaying(Z)V

    return-void
.end method

.method private synthetic lambda$onPlayerProgress$11(J)V
    .registers 3

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->onPlayerProgress(J)V

    return-void
.end method

.method private synthetic lambda$onTemplateMatchCompleted$8(J)V
    .registers 3

    .line 937
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateReplaceItemList(J)V

    return-void
.end method

.method private synthetic lambda$showExportDialog$4()V
    .registers 1

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->cancelExport()V

    return-void
.end method

.method private synthetic lambda$showExportDialog$5(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 808
    :try_start_0
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_18

    .line 810
    :catch_11
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "showExportDialog cancelExport failed "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 812
    :goto_18
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showExportDialog$6(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 p1, 0x0

    .line 817
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsExportDialogShow:Z

    const/4 p1, 0x0

    .line 818
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$showResolutionDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showResolutionDialog$2([ILandroid/content/DialogInterface;I)V
    .registers 4

    const/4 p2, 0x1

    .line 779
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsExportDialogShow:Z

    .line 780
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    const/4 p2, 0x0

    .line 781
    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->showExportDialog(I)V

    return-void
.end method

.method private synthetic lambda$showResolutionDialog$3(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 p1, 0x0

    .line 785
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsExportDialogShow:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsExportDialogShow:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    return-void
.end method

.method private declared-synchronized onBackButtonClick()Z
    .registers 5

    monitor-enter p0

    .line 896
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isComposedState()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_44

    .line 900
    :cond_d
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackButtonClick, mCurrentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 902
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v1, :cond_3a

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;->isLoadingShow()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    .line 904
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onEditorDone(Landroid/view/View;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_38

    :catchall_36
    move-exception v0

    goto :goto_46

    .line 906
    :cond_38
    :goto_38
    monitor-exit p0

    return v1

    .line 909
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_41

    .line 910
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onBackToShot(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_36

    .line 913
    :cond_41
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 897
    :cond_44
    :goto_44
    monitor-exit p0

    return v1

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_36

    throw v0
.end method

.method private onBackToShot(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    .line 1077
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackToShot, mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz v0, :cond_25

    .line 1081
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    .line 1083
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1085
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->onBackToShot(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void
.end method

.method private onEditorDone(Landroid/view/View;)V
    .registers 10

    .line 1297
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onEditorDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1298
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    .line 1299
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->transformDisplayView()V

    .line 1300
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    if-eqz p1, :cond_16

    goto :goto_6a

    .line 1305
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p1

    .line 1307
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v0

    :goto_26
    move v3, v0

    :goto_27
    if-ge v0, v1, :cond_5c

    .line 1310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_59

    .line 1311
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->setSourceStartTime(J)V

    move v3, v2

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_5c
    if-eqz v3, :cond_6a

    .line 1317
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateOriginData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 1318
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onTemplateItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private onExportClick(Landroid/view/View;)V
    .registers 3

    .line 759
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onExportClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->showResolutionDialog()V

    return-void
.end method

.method private onTopBackClick(Landroid/view/View;)V
    .registers 4

    .line 886
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTopBackClick, currentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onBackButtonClick()Z

    return-void
.end method

.method private pausePlayIfNeed()V
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->pausePlay()V

    return-void
.end method

.method private playButtonClick(Landroid/view/View;)V
    .registers 2

    .line 867
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->autoDisposePlay()V

    return-void
.end method

.method private removeSurfaceCallbackListener()V
    .registers 2

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    if-nez v0, :cond_5

    return-void

    .line 723
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private showExportDialog(I)V
    .registers 6

    .line 794
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->hideDialog()V

    .line 796
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExportDialog, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 797
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 798
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2b

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 800
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setCancelable(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 802
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMaxProgress(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_export_message:I

    .line 803
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setProgressMessage(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    .line 804
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setProgressMessageSingleLine(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    .line 805
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNumRate(Z)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    .line 806
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 815
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 816
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "vlog_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->export(Landroid/content/Context;I)V

    .line 824
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->pausePlayIfNeed()V

    return-void
.end method

.method private showResolutionDialog()V
    .registers 7

    .line 764
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->hideDialog()V

    .line 765
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showResolutionDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 768
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 769
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 770
    filled-new-array {v1}, [I

    move-result-object v2

    .line 772
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$array;->vlog_export_resolution_entries:I

    new-instance v5, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda15;

    invoke-direct {v5, v2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda15;-><init>([I)V

    .line 773
    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    .line 777
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/feature/vlog/R$string;->vlog_export:I

    .line 778
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;[I)V

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 783
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 784
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "vlog_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->pausePlayIfNeed()V

    return-void
.end method

.method private transformDisplayView()V
    .registers 6

    .line 1139
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-ne v0, v1, :cond_28

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 1148
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_48

    .line 1155
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->doAnimWhenViewChanged()V

    return-void
.end method

.method private updateButtonOrientation()V
    .registers 4

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_11

    goto :goto_50

    .line 697
    :cond_11
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 698
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_3d
    const/4 v1, 0x0

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_50
    :goto_50
    return-void
.end method

.method private updateDialog()V
    .registers 4

    .line 745
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    .line 746
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    .line 750
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v1, :cond_11

    .line 751
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    .line 753
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_18

    .line 754
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_18
    return-void
.end method

.method private updatePreviewLayout()V
    .registers 10

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    if-nez v0, :cond_5

    return-void

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getTopRegionHeight()I

    move-result v1

    .line 282
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    .line 283
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 284
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/16 v5, 0x31

    const/4 v6, 0x1

    if-ne v4, v6, :cond_100

    .line 285
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-nez v1, :cond_41

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 292
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    .line 294
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    const/16 v4, 0x5a

    const/4 v7, -0x1

    if-eq v3, v4, :cond_e1

    const/16 v4, 0xb4

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_ab

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_8a

    .line 329
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 330
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_expand_0:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 332
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 333
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 334
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 336
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v6, :cond_13d

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_13d

    .line 306
    :cond_8a
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 307
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x15

    .line 309
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 311
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v6, :cond_13d

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_13d

    .line 316
    :cond_ab
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 317
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_expand_0:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 319
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 320
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 321
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 323
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v6, :cond_13d

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_13d

    .line 296
    :cond_e1
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 297
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x13

    .line 299
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v6, :cond_13d

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_13d

    :cond_100
    const/4 v6, 0x3

    if-ne v4, v6, :cond_118

    .line 343
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 345
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_hover_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 346
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_13d

    :cond_118
    if-nez v4, :cond_13d

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v3

    .line 349
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v3, :cond_133

    .line 352
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal_fold:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_139

    .line 353
    :cond_133
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_139
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 355
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 358
    :cond_13d
    :goto_13d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecyclerViewParams()V
    .registers 2

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateReplaceRecyclerViewParams()V

    .line 569
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSupportFreeShotEditor:Z

    if-eqz v0, :cond_a

    .line 570
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateSegmentRecyclerViewParams()V

    :cond_a
    return-void
.end method

.method private updateReplaceItemList(J)V
    .registers 10

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_8
    if-ge v3, v1, :cond_1f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 944
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_8

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_33

    .line 951
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 952
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->updateDataList(Ljava/util/List;I)V

    :cond_33
    return-void
.end method

.method private updateReplaceRecyclerViewParams()V
    .registers 7

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 579
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 581
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 583
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v4, 0x1

    const/16 v5, 0x51

    if-ne v3, v4, :cond_40

    .line 584
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 585
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_width_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 586
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 588
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_bottom_margin_expand:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_66

    :cond_40
    if-eqz v3, :cond_45

    const/4 v4, 0x3

    if-ne v3, v4, :cond_66

    .line 592
    :cond_45
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 593
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 594
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 596
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-nez v3, :cond_59

    .line 597
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_bottom_margin_normal:I

    goto :goto_5b

    .line 598
    :cond_59
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_bottom_margin_hover:I

    .line 596
    :goto_5b
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 602
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSegmentRecyclerViewParams()V
    .registers 8

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    return-void

    .line 610
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getBottomBarHeight()I

    move-result v1

    .line 613
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 616
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    .line 617
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 619
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v4, 0x1

    const/4 v5, -0x2

    const/16 v6, 0x51

    if-ne v3, v4, :cond_45

    .line 620
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 621
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 622
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 624
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_editor_segment_item_bottom_margin_expand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_98

    .line 625
    :cond_45
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 626
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 627
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 628
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_editor_segment_item_root_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 629
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_67

    .line 630
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_bottom_margin_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_98

    .line 632
    :cond_67
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin_without_padding:I

    .line 635
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 632
    invoke-static {v3, v1, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;II)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_98

    .line 637
    :cond_78
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-nez v3, :cond_98

    .line 638
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 639
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 640
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_editor_segment_item_root_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 642
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin_without_padding:I

    .line 645
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 642
    invoke-static {v3, v1, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;II)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 648
    :cond_98
    :goto_98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 917
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->removeSurfaceCallbackListener()V

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->destroy()V

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->unInit()V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 4

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->initView()V

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->initRecyclerView()V

    .line 148
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateTopBarPadding(I)V

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePreviewLayout()V

    .line 150
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePlayButtonLayout(I)V

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateRecyclerViewParams()V

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateButtonOrientation()V

    .line 153
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateSurfaceCoverLayout(I)V

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->initClickEvents()V

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->addSurfaceCallbackListener()V

    .line 157
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->composeSource(Landroid/view/SurfaceView;Z)V

    return-void

    .line 160
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mHLSegmentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mReplaceItemList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->selectAndMatchTemplate(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public isSupportColumnOrBoth()Z
    .registers 1

    .line 362
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .registers 3

    .line 891
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onBackButtonClick()Z

    move-result p0

    return p0
.end method

.method public onComposeCompleted(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    .line 991
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateTemplateId(J)V

    .line 994
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 995
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 997
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz p1, :cond_28

    .line 998
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    .line 1000
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1001
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1002
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onComposeCompleted()V

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void

    .line 1005
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComposePaused()V
    .registers 3

    .line 982
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 983
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onComposePaused()V

    return-void

    .line 985
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onComposeStarted()V
    .registers 3

    .line 959
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz v0, :cond_13

    .line 962
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    .line 964
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 966
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onComposeStarted()V

    return-void

    .line 968
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExportDone(Ljava/lang/String;)V
    .registers 4

    .line 855
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "export onCompileDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->hideDialog()V

    .line 858
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->onCompileCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onExportError(IIFLjava/lang/String;)V
    .registers 5

    .line 863
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "export onCompileError, msg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExportProgress(F)V
    .registers 4

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_15

    .line 842
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 846
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method public onFirstFrameRendered()V
    .registers 3

    .line 1038
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1039
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;->onFirstFrameRendered()V

    return-void

    .line 1041
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposeListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerDestroyed()V
    .registers 1

    return-void
.end method

.method public onPlayerPlaying(Z)V
    .registers 5

    .line 1051
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerPlaying, playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1053
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    if-ne v0, p1, :cond_1b

    return-void

    .line 1057
    :cond_1b
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    .line 1059
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    if-eqz v1, :cond_2c

    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_play:I

    goto :goto_2e

    :cond_2c
    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_stop:I

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 1062
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->onPlayerPlaying(Z)V

    return-void

    .line 1064
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerProgress(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 1024
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCheckPlayStartPosition:Z

    .line 1027
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCheckPlayStartPosition:Z

    if-nez v0, :cond_28

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 1028
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1029
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->onPlayerProgress(J)V

    return-void

    .line 1031
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public onRefreshSourceStartTime(JI)V
    .registers 7

    .line 1323
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshSourceStartTime, sourceStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda20;-><init>(J)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->doNullableAction(Ljava/lang/Object;Ljava/util/function/Consumer;)V

    .line 1326
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1327
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateOriginData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 1328
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onTemplateItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 5

    .line 181
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 184
    :cond_5
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged, screenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->onScreenFormChanged(I)V

    .line 187
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateTopBarPadding(I)V

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePreviewLayout()V

    .line 189
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePlayButtonLayout(I)V

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateRecyclerViewParams()V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateButtonOrientation()V

    .line 192
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateSurfaceCoverLayout(I)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mResolutionDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_41

    .line 194
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 196
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_48

    .line 197
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 199
    :cond_48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateDialog()V

    return-void
.end method

.method public onScreenFormChangedHover(I)V
    .registers 3

    .line 652
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 655
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    .line 656
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateSurfaceCoverLayout(I)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onScreenFormChangedHoverAni(I)V

    .line 658
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateTopBarPadding(I)V

    .line 659
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePlayButtonLayout(I)V

    return-void
.end method

.method public onScreenFormChangedHoverAni(I)V
    .registers 15

    .line 1349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mComposePlayRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_192

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    if-eqz v1, :cond_192

    .line 1351
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_192

    .line 1355
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal_fold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1356
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_hover_status:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1357
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_bottom_margin_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1358
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_template_list_bottom_margin_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1359
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_bottom_margin_hover:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1360
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_bottom_margin_normal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v6, v0, v1

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 1361
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    .line 1362
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    int-to-float v3, v3

    int-to-float v2, v2

    sub-float/2addr v3, v2

    int-to-float v2, v4

    int-to-float v4, v5

    sub-float/2addr v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v4, v1, v0

    div-float v5, v0, v1

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v11, 0x190

    if-ne p1, v8, :cond_f7

    .line 1370
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_90

    move v0, v4

    goto :goto_91

    :cond_90
    move v0, v9

    :goto_91
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1371
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_9a

    goto :goto_9b

    :cond_9a
    move v4, v9

    :goto_9b
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1372
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1373
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1374
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1375
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_b4

    neg-float v0, v6

    goto :goto_b5

    :cond_b4
    move v0, v10

    :goto_b5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1376
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1377
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1378
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1379
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_ce

    neg-float v0, v3

    goto :goto_cf

    :cond_ce
    move v0, v10

    :goto_cf
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1380
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1381
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1382
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_192

    .line 1383
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1384
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_e9

    neg-float v10, v2

    :cond_e9
    invoke-virtual {p1, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1385
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1386
    invoke-virtual {p0, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 1391
    :cond_f7
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_123

    .line 1392
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr p1, v4

    div-float v9, p1, v0

    div-float v5, p1, v1

    sub-float v0, p1, v0

    div-float/2addr v0, v7

    sub-float/2addr p1, v1

    div-float/2addr p1, v7

    .line 1397
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    .line 1398
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_margin_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, p1, v1

    goto :goto_124

    :cond_123
    move v0, v10

    .line 1400
    :goto_124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v1, :cond_130

    move v1, v9

    goto :goto_131

    :cond_130
    move v1, v5

    :goto_131
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1401
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v1, :cond_13a

    move v5, v9

    :cond_13a
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1402
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1403
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1404
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1405
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v1, :cond_152

    goto :goto_153

    :cond_152
    move v0, v6

    :goto_153
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1406
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1407
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1408
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1409
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_16b

    move v3, v10

    :cond_16b
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1410
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1411
    invoke-virtual {p1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1412
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_192

    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1414
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mInitScreenFormType:I

    if-nez v0, :cond_185

    move v2, v10

    :cond_185
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1415
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1416
    invoke-virtual {p0, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_192
    :goto_192
    return-void
.end method

.method public onSegmentEditSelected(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V
    .registers 7

    .line 1289
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSegmentEditSelected, item origin duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;

    if-eqz v0, :cond_2b

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 1291
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;->onSegmentEditClick(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V

    .line 1292
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->pausePlay()V

    :cond_2b
    return-void
.end method

.method public onSegmentItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V
    .registers 6

    .line 1282
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSegmentItemSelected, item origin duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", targetStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1284
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit16 p1, p1, 0xc8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->seekTo(IZ)V

    return-void
.end method

.method public onTemplateEditSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 9

    .line 1105
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateEditSelected, item title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1107
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 1108
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onBackToShot(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void

    :cond_31
    const/4 v1, 0x1

    if-ne v0, v1, :cond_98

    .line 1112
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSupportFreeShotEditor:Z

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 1114
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_98

    .line 1116
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 1117
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    if-nez p1, :cond_60

    .line 1118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    goto :goto_63

    .line 1120
    :cond_60
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1123
    :goto_63
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p1

    .line 1124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 1125
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurTempSourceStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 1128
    :cond_87
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCheckPlayStartPosition:Z

    .line 1130
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    invoke-virtual {v2, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->updateDataList(Ljava/util/List;I)V

    .line 1132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->seekTo(IZ)V

    .line 1133
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    .line 1134
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->transformDisplayView()V

    :cond_98
    return-void
.end method

.method public onTemplateItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    .line 1090
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateItemSelected, item title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1092
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->pausePlayIfNeed()V

    .line 1094
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->replaceSource(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1095
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not switch to item: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1099
    :cond_46
    const-string p1, "onItemSelected, updateTemplateId"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1100
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->composeSource(Landroid/view/SurfaceView;Z)V

    return-void
.end method

.method public onTemplateMatchCompleted(J)V
    .registers 5

    .line 934
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateReplaceItemList(J)V

    return-void

    .line 937
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTemplateMatchStarted()V
    .registers 3

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;->setEnable(Z)V

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 927
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSegmentAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;

    if-eqz p0, :cond_17

    .line 928
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setEnable(Z)V

    :cond_17
    return-void
.end method

.method public pause()V
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->pause()V

    .line 882
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->hideDialog()V

    return-void
.end method

.method public quitWithSdkNotInit()V
    .registers 3

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    if-nez v0, :cond_5

    return-void

    .line 1341
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->quit()V

    return-void

    .line 1344
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .registers 2

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->resume()V

    .line 876
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->hideDialog()V

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackListener:Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mIsPlaying:Z

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;->onPlayerPlaying(Z)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 734
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "surfaceChanged"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->onSurfaceChanged()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 728
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->onSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 740
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->onSurfaceDestroyed()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 165
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 168
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditor:Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateOrientation(I)V

    .line 170
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateTopBarPadding(I)V

    .line 171
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->isSupportColumnOrBoth()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePreviewLayout()V

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateRecyclerViewParams()V

    .line 175
    :cond_1d
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updatePlayButtonLayout(I)V

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateButtonOrientation()V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateDialog()V

    return-void
.end method

.method public updatePlayButtonLayout(I)V
    .registers 12

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_198

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    if-nez v1, :cond_a

    goto/16 :goto_198

    .line 369
    :cond_a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getToolBarOriginPaddingHeight()I

    move-result v1

    .line 372
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    .line 374
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 375
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 377
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/16 v5, 0x51

    const/16 v6, 0x31

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-ne v4, v7, :cond_124

    .line 378
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-nez p1, :cond_46

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 383
    :cond_46
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    .line 385
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_fb

    const/16 v4, 0xb4

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v1, v4, :cond_c0

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_95

    .line 424
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 425
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 427
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 428
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 429
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 431
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v7, :cond_18e

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p1, v1

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v9

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_18e

    .line 399
    :cond_95
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 400
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x13

    .line 402
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 403
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 405
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne p1, v7, :cond_18e

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_18e

    .line 411
    :cond_c0
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 412
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 414
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 416
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 418
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne v0, v7, :cond_18e

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPreviewSurfaceView:Lcom/transsion/camera/feature/mode/vlog/widget/StickyHolderSurfaceView;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p1, v1

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v9

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_18e

    .line 387
    :cond_fb
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 388
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x15

    .line 390
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 393
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mCurrentAction:I

    if-ne p1, v7, :cond_18e

    .line 394
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_18e

    :cond_124
    if-nez p1, :cond_177

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    .line 438
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x11

    .line 439
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 440
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz p1, :cond_14f

    .line 442
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal_fold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_15b

    .line 443
    :cond_14f
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_15b
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 445
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_top_bar_item_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    if-eqz p1, :cond_16d

    .line 447
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_top_margin_fold:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_173

    .line 448
    :cond_16d
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_top_margin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_173
    add-int/2addr v1, p1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_18e

    :cond_177
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18e

    .line 450
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 451
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 453
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_editor_play_button_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 456
    :cond_18e
    :goto_18e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_198
    :goto_198
    return-void
.end method

.method public updateSurfaceCoverLayout(I)V
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 665
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_5f

    .line 669
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getTopRegionHeight()I

    move-result v1

    .line 672
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    .line 673
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p1, :cond_36

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5a

    .line 678
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 680
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal_fold:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_4b

    .line 681
    :cond_45
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_height_normal:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_4b
    add-int/2addr v1, p1

    .line 683
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_line_cover_height:I

    .line 684
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :goto_5a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mSurfaceLineCover:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public updateTopBarPadding(I)V
    .registers 18

    move-object/from16 v0, p0

    .line 461
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_15e

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v2, :cond_c

    goto/16 :goto_15e

    .line 465
    :cond_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 466
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getToolBarOriginPaddingHeight()I

    move-result v2

    .line 468
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 469
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 470
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 471
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 473
    iget v7, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    const/4 v8, 0x1

    const/16 v9, 0x50

    const/16 v10, 0x30

    const/4 v11, -0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x5

    if-ne v7, v8, :cond_e7

    .line 474
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mOrientation:I

    const/16 v7, 0x5a

    if-eq v2, v7, :cond_c3

    const/16 v7, 0xb4

    if-eq v2, v7, :cond_9e

    const/16 v7, 0x10e

    if-eq v2, v7, :cond_79

    .line 516
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 517
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 518
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 519
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 520
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 521
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 523
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 524
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 525
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 523
    invoke-virtual {v2, v7, v8, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_14a

    .line 502
    :cond_79
    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 503
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 504
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 505
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 506
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 509
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 510
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    .line 511
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 512
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 509
    invoke-virtual {v2, v13, v7, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_14a

    .line 489
    :cond_9e
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 490
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 491
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 492
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 494
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 496
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 498
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 499
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 496
    invoke-virtual {v2, v7, v13, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_14a

    .line 476
    :cond_c3
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 478
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 479
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 480
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 481
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 483
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 484
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 486
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 483
    invoke-virtual {v2, v7, v8, v13, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_14a

    .line 529
    :cond_e7
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 530
    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_horizontal_padding_tb_hover:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move/from16 v8, p1

    if-ne v8, v14, :cond_117

    .line 532
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 533
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 534
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 535
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 536
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 537
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 538
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 539
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7, v13, v7, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_14a

    .line 541
    :cond_117
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 542
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 543
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 544
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 546
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 547
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7, v2, v7, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_14a

    .line 549
    :cond_129
    iget v7, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mScreenFormType:I

    if-nez v7, :cond_14a

    .line 550
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 551
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 552
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 553
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 555
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 556
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_margin_size:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_margin_size:I

    .line 558
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 556
    invoke-virtual {v7, v8, v2, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 561
    :cond_14a
    :goto_14a
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mExportButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->mEditorDoneButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15e
    :goto_15e
    return-void
.end method
