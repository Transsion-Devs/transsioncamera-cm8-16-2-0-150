.class public abstract Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;",
        "I:",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
        ">",
        "Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;",
        "Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_FILTER_VALUE_TO_UI:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mHandler:Landroid/os/Handler;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsFilerEnable:Z

.field protected mResources:Landroid/content/res/Resources;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUseTranssionFilter:Z


# direct methods
.method public static synthetic $r8$lambda$2cnxEchiG6fxFyxnT-prCusZXcg(Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;)V
    .registers 3

    .line 201
    const-string v0, "key_conflict_ui_state"

    const-string/jumbo v1, "value_filter_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GljfLyMXzCw6CTbyS357hI2MFXw(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z
    .registers 2

    .line 260
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Io-lkWCGRKn2RWkF7uelC7y4q4c(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-mj7aG38RqHj3GHGLrCugW4X3U(Lcom/transsion/camera/app/common/setting/StatusMonitor;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .registers 2

    .line 200
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FilterSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIsFilerEnable:Z

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mUseTranssionFilter:Z

    .line 56
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 249
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mUseTranssionFilter:Z

    return-void
.end method

.method private findIndex(Ljava/util/List;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 261
    new-instance p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getOrientationItem()I
    .registers 3

    .line 274
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    .line 278
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 279
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 280
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

    .line 281
    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_32
    return v0
.end method

.method private initCameraInfoTracker(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 135
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    if-eqz v2, :cond_14

    .line 138
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_14

    .line 141
    :cond_2f
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 143
    :cond_41
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->initFilterInfo(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    .line 86
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateFilterValueToUI(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateSettingUILayout(Z)V

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getItemInfoList(Ljava/util/List;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 228
    const-string p0, "key_filter"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 162
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 163
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected abstract initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v1, 0x5

    if-eq p1, v1, :cond_47

    const/16 v1, 0x9

    if-eq p1, v1, :cond_47

    const/16 v1, 0xe

    if-eq p1, v1, :cond_47

    const/16 v1, 0x10

    if-eq p1, v1, :cond_47

    const/16 v1, 0x6a

    if-eq p1, v1, :cond_47

    const/16 v1, 0x98

    if-eq p1, v1, :cond_43

    const/16 v1, 0xf2

    if-eq p1, v1, :cond_2b

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_27

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_47

    return-void

    :cond_27
    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIsFilerEnable:Z

    return-void

    .line 199
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda2;-><init>()V

    .line 200
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda3;-><init>()V

    .line 201
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 204
    :cond_43
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->notifyDataSetChanged()V

    return-void

    .line 196
    :cond_47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIsFilerEnable:Z

    return-void
.end method

.method protected notifyDataSetChanged()V
    .registers 2

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 148
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIsFilerEnable:Z

    if-nez p1, :cond_5

    goto :goto_36

    .line 151
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_36

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 155
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mUseTranssionFilter:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getCaptureFilterIdByPreviewId(Ljava/lang/String;Z)I

    move-result p0

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x15

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 179
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateSettingUILayout(Z)V

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

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

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

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_d

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_d
    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4a

    .line 108
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4a

    .line 111
    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mUseTranssionFilter:Z

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getItemInfoList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->initCameraInfoTracker(Ljava/util/List;)V

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v2, :cond_3f

    .line 115
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    goto :goto_4a

    .line 121
    :cond_3f
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setItemList(Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->notifyDataSetChanged()V

    .line 127
    :cond_4a
    :goto_4a
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_10

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 172
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_18

    const/4 v0, 0x0

    .line 173
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_18
    return-void
.end method

.method protected updateArcIndicatorRingScreenLight(Z)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_a

    .line 253
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateRingScreenLight(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method protected updateFilterValueToUI(Ljava/lang/String;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_11

    .line 76
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    :cond_11
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 3

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getOrientationItem()I

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_d

    .line 268
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateScreenFormAndOrientation(II)V

    :cond_d
    return-void
.end method
