.class public Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;
    }
.end annotation


# static fields
.field private static final SCREEN_FORM_TYPE_FLAT:Ljava/lang/String; = "FLAT"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCorrectOrientation:I

.field private mCurrentPage:I

.field private mEditorMaskView:Landroid/widget/FrameLayout;

.field private mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

.field private mHLSegmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTypeNormalExpandedChanged:Z

.field private mLayoutStateChangeCB:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReplaceItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenFormType:I

.field private mTemplateOrientation:I

.field private mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

.field private mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEditorUIManager(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmScreenFormType(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_EditorFrag"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateOrientation:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    .line 303
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private IfTypeChangedFinishActivity(I)Z
    .registers 3

    .line 140
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    if-eqz p1, :cond_b

    :cond_7
    if-nez p0, :cond_c

    if-ne p1, v0, :cond_c

    :cond_b
    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)Landroid/app/Activity;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private checkSdkState()V
    .registers 3

    .line 243
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v0

    if-nez v0, :cond_12

    .line 244
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkSdkState, sdk is not ready"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_12
    return-void
.end method

.method private init()V
    .registers 12

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->getScreenType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    .line 109
    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot_editor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    :goto_31
    move v4, v0

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_31

    .line 111
    :goto_35
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCurrentPage:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mReplaceItemList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mHLSegmentList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    iget v9, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    iget v10, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCorrectOrientation:I

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;-><init>(Landroid/content/Context;IZLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;II)V

    iput-object v1, v7, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    return-void
.end method

.method private initTemplateOrientation()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 148
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateOrientation:I

    goto :goto_1a

    .line 150
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mHLSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateOrientation:I

    .line 153
    :goto_1a
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    const/16 v0, 0x10e

    .line 154
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCorrectOrientation:I

    return-void

    .line 156
    :cond_24
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCorrectOrientation:I

    return-void
.end method

.method private parseFromIntent()V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    const-string v1, "edit_template_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 98
    const-string v1, "replace_template_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mReplaceItemList:Ljava/util/ArrayList;

    .line 99
    const-string v1, "free_shot_segment_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mHLSegmentList:Ljava/util/ArrayList;

    .line 100
    const-string v1, "key_current_page"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCurrentPage:I

    .line 101
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFromIntent, mHLSegmentList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mHLSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCurrentPage:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private registerBroadCast()V
    .registers 4

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterBroadCast()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateCorrectOrientation(I)V
    .registers 7

    .line 162
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCorrectOrientation:I

    .line 164
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mTemplateOrientation:I

    const/4 v2, 0x1

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-ne v1, v2, :cond_11

    if-eq p1, v4, :cond_15

    if-eq p1, v3, :cond_15

    :cond_f
    move p1, v0

    goto :goto_15

    :cond_11
    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_f

    .line 190
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->updateOrientation(I)V

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCorrectOrientation, correctOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCorrectOrientation:I

    return-void
.end method


# virtual methods
.method public getScreenType()I
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getScreenType()I

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .registers 4

    .line 251
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed, mEditorUIManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p0, 0x1

    return p0

    .line 256
    :cond_24
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBackToShot(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 4

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    const-string v1, "back_template_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    const-string p1, "key_current_page"

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mCurrentPage:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string p1, "free_shot_back_segment_list"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mHLSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCompileCompleted(Ljava/lang/String;)V
    .registers 4

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    const-string/jumbo v1, "vlog_video_temp_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->getScreenType()I

    move-result v0

    if-eq p1, v0, :cond_26

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->getScreenType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->IfTypeChangedFinishActivity(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mIsTypeNormalExpandedChanged:Z

    if-eqz p1, :cond_20

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorMaskView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mIsTypeNormalExpandedChanged:Z

    return-void

    .line 135
    :cond_20
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->getScreenType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mScreenFormType:I

    :cond_26
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 70
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_21

    .line 74
    const-string v0, "onCreate bundle is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 79
    :cond_21
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->registerBroadCast()V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 81
    new-instance p1, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/window/layout/WindowInfoTracker;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    .line 82
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mLayoutStateChangeCB:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz p1, :cond_4f

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mLayoutStateChangeCB:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 87
    :cond_4f
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->parseFromIntent()V

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->initTemplateOrientation()V

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->init()V

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->checkSdkState()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 198
    sget-object p3, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    sget p3, Lcom/transsion/camera/feature/vlog/R$layout;->cut_same_editor_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 201
    sget p2, Lcom/transsion/camera/feature/vlog/R$id;->editor_root_mask_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorMaskView:Landroid/widget/FrameLayout;

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->init(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 232
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->unRegisterBroadCast()V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-eqz v0, :cond_25

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mLayoutStateChangeCB:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    .line 238
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->destroy()V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 220
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 222
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->pause()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    return-void
.end method

.method public onPlayerPlaying(Z)V
    .registers 3

    const/16 v0, 0x80

    if-eqz p1, :cond_e

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    .line 265
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 208
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mIsTypeNormalExpandedChanged:Z

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorMaskView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->checkSdkState()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mEditorUIManager:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->resume()V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    return-void
.end method

.method public quit()V
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected updateOrientation(I)V
    .registers 2

    .line 120
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->updateOrientation(I)V

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->updateCorrectOrientation(I)V

    return-void
.end method
