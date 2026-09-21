.class public Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final FEATURE_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCROLL_STATE_DRAGGING:I = 0x1

.field private static final SCROLL_STATE_IDLE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter<",
            "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

.field private mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$AvVib-V3ZbKqFgVr3aljdylWQL0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 327
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$qAYymZsMlZ_jfftaNKU3mqhWps8(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->lambda$showResetDialog$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlimBodyHelper(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAnalytics(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->handleAnalytics(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowResetDialog(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showResetDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIByFeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateUIByFeatureId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateValueByFeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateValueByFeatureId(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    .line 237
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/FeatureAdapter;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->FEATURE_INFO_LIST:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/FeatureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p0, :cond_26

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->defaultCustom()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_26
    return-void
.end method

.method private handleAnalytics(Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;)V
    .registers 2

    if-eqz p1, :cond_52

    .line 200
    iget p0, p1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    const/4 p1, 0x3

    if-ne p1, p0, :cond_f

    .line 201
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBodySlimDone()V

    return-void

    :cond_f
    const/4 p1, 0x4

    if-ne p1, p0, :cond_1a

    .line 203
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHeadShrinkDone()V

    return-void

    :cond_1a
    const/4 p1, 0x5

    if-ne p1, p0, :cond_25

    .line 205
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShoulderSlimDone()V

    return-void

    :cond_25
    const/4 p1, 0x6

    if-ne p1, p0, :cond_30

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setWaistSlimDone()V

    return-void

    :cond_30
    const/4 p1, 0x7

    if-ne p1, p0, :cond_3b

    .line 209
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setButtPlumpDone()V

    return-void

    :cond_3b
    const/16 p1, 0x8

    if-ne p1, p0, :cond_47

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegSlimDone()V

    return-void

    :cond_47
    const/16 p1, 0x9

    if-ne p1, p0, :cond_52

    .line 213
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegLengthenDone()V

    :cond_52
    return-void
.end method

.method private hideAutoHint()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 313
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$showResetDialog$1(ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 329
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 330
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p2, :cond_19

    .line 331
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 332
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->restoreDefault(I)Ljava/lang/String;

    move-result-object p2

    .line 331
    invoke-interface {p3, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_19
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 305
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showResetDialog(I)V
    .registers 5

    .line 318
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    const-wide/16 v0, 0x1f4

    .line 321
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    .line 324
    :cond_e
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_showDialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 337
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateProgressBar(I)V
    .registers 10

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz v0, :cond_20

    .line 220
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getProgress(I)I

    move-result v6

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_20

    .line 222
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    iget v3, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMax:I

    iget v4, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarMin:I

    iget v5, p1, Lcom/transsion/camera/feature/mode/makeup/data/BiDiBarFeatureData;->mSeekBarOptimal:I

    const/4 v7, 0x0

    const-string v2, ""

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    :cond_20
    return-void
.end method

.method private updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 152
    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    if-eq v0, v1, :cond_13

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    goto :goto_24

    .line 162
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_24

    :cond_13
    const/4 v0, 0x2

    .line 158
    iput v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_24

    :cond_1c
    const/4 v0, 0x0

    .line 154
    iput v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 165
    :goto_24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    iget p1, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateSelectedItemById(I)V

    :cond_2b
    return-void
.end method

.method private updateState()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    if-eqz v0, :cond_3a

    .line 136
    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_22

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showAutoHint(Ljava/lang/String;)V

    return-void

    :cond_22
    if-nez v1, :cond_2d

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void

    .line 143
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 144
    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;->featureId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    :cond_3a
    return-void
.end method

.method private updateUIByFeatureId(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_12

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void

    :cond_12
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2c

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showAutoHint(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_2c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v3, v1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    .line 193
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateProgressBar(I)V

    return-void
.end method

.method private updateValueByFeatureId(ILjava/lang/String;)V
    .registers 4

    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_c
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p2, :cond_19

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 175
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateFeatureId(I)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .registers 3

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_21

    .line 415
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 417
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 419
    const-string v0, "0"

    iput-object v0, p1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 267
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 268
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public openContrast()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_21

    .line 401
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 403
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 405
    const-string v1, "1"

    iput-object v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public progressChanged(I)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz v0, :cond_18

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 392
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateProgress(I)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mFeatureAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    .line 394
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->defaultCustom()Z

    move-result p0

    .line 393
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    :cond_18
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 354
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 355
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 356
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    .line 357
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 359
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 361
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_37

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_37

    .line 362
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getFeatureId()I

    move-result v1

    .line 363
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 365
    :cond_37
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateSelectUI(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 368
    :cond_3a
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 373
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mSlimBodyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;

    if-eqz p0, :cond_7

    .line 348
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->setGender(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 385
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 378
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 429
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->updateState()V

    const/4 p1, 0x0

    .line 430
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 432
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideAutoHint()V

    const/16 p1, 0x8

    .line 433
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateFeatureUI(ZZ)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
