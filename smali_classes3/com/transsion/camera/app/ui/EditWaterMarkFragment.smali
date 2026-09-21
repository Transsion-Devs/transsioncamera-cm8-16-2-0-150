.class public Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;,
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;,
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;,
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$OSLengthFilter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mBrandSwitchButton:Landroid/widget/Switch;

.field mBrandTextView:Landroid/widget/TextView;

.field mBrandWaterMark:Landroid/widget/RelativeLayout;

.field mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mCityInfo:Ljava/lang/String;

.field mCitySwitchButton:Landroid/widget/Switch;

.field mCityTextView:Landroid/widget/TextView;

.field mCityWaterMark:Landroid/widget/RelativeLayout;

.field mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

.field private mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

.field private mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

.field private mEditWaterMarkUIItems:Ljava/util/List;

.field public mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

.field private mHintInfo:Ljava/lang/String;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

.field public mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mPermissionRequest:Z

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field mShowBrandWaterMark:Landroid/widget/TextView;

.field mShowCityWaterMark:Landroid/widget/TextView;

.field mShowTextWaterMark:Landroid/widget/TextView;

.field mShowTimeWaterMark:Landroid/widget/TextView;

.field mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

.field mSortWaterMark:Landroid/widget/RelativeLayout;

.field mSortWaterMarkTitle:Landroid/widget/TextView;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field mTextSwitchButton:Landroid/widget/Switch;

.field mTextTextView:Landroid/widget/TextView;

.field mTextWaterMark:Landroid/widget/LinearLayout;

.field private mTextWaterMarkInfo:Ljava/lang/String;

.field mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field mTextWaterMarkSummary:Landroid/widget/TextView;

.field private mTimeInfo:Ljava/lang/String;

.field mTimeSwitchButton:Landroid/widget/Switch;

.field mTimeTextView:Landroid/widget/TextView;

.field mTimeWaterMark:Landroid/widget/RelativeLayout;

.field mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$-wpUkTBdfjWW13j7n8iI6GWNncY(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$showCustomizeDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2qfiT29xglMv1e5eMNz9PKXVvRk(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$setSortWaterMarkEnable$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3_hM1lEdA2L660ulhVP-nStqQlQ(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5SZdqm8Al-nQdpQ2AXOtEKrM0ek(Landroid/view/View;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$6DXKdKQ-C-28742lA5fU3CD86L4(Landroid/view/View;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$CnFgEe5GYi-ApnRvEwwvEPVwu0c(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$showCustomizeDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GlzByzG2bhlGk7bAgwVRVsfIadE(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZRwrNmBSqAsGuN4I_TSp5uqDMo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTmZteMK_y3heVLAoFTl2rVy6V0(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lCrvloc8XV4WRFXz5zNAfPdDMNs(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEditWaterMarkItem(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWaterMarkLayout(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateWaterMarkLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMarkFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    return-void
.end method

.method private getBrandWatermark()I
    .registers 5

    .line 990
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermarkDrawableName()Ljava/lang/String;

    move-result-object p0

    .line 992
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandCustomize:Z

    if-eqz v0, :cond_38

    .line 993
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWMOptionalResNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 994
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watermarkCustomize_editWatermarkFragment: watermarkOptionalResNames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 995
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    const-string v1, "edit_watermark_brand"

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getWatermarkCustomizedResId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 999
    :cond_38
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getWatermarkDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 1000
    sget-object v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrandWatermark = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drawableName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private getBrandWatermarkDrawableName()Ljava/lang/String;
    .registers 4

    .line 1007
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1008
    const-string p0, "edit_watermark_brand_special"

    return-object p0

    .line 1009
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_16

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->isSuperDefinition108MInLowPlatform()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1010
    const-string p0, "edit_watermark_brand_108m"

    return-object p0

    .line 1012
    :cond_16
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandPreview:Z

    .line 1013
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrandWatermark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_37

    .line 1015
    const-string p0, "edit_watermark_brand_preview"

    return-object p0

    .line 1017
    :cond_37
    const-string p0, "edit_watermark_brand"

    return-object p0
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 1

    .line 421
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .registers 6

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "off"

    const-string v1, "on"

    const-string v2, "key_time_watermark"

    if-eqz p1, :cond_34

    const-string v3, "key_edit_watermark_update"

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object v3, v1

    goto :goto_31

    :cond_30
    move-object v3, v0

    :goto_31
    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object v0, v1

    :cond_3f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    .line 250
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_6d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .registers 7

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "on"

    goto :goto_23

    :cond_21
    const-string v0, "off"

    :goto_23
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_city_watermark"

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_47

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    .line 262
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    return-void

    .line 265
    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz p1, :cond_5c

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "key_edit_watermark"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 270
    :cond_5c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 273
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    .line 274
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_82

    .line 277
    :cond_7b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :goto_82
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .registers 7

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "on"

    goto :goto_1d

    :cond_1b
    const-string v0, "off"

    :goto_1d
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_brand_watermark"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_85

    .line 290
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 291
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 292
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 293
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_preview_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 298
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_85
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_92

    .line 303
    :cond_8b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .registers 6

    .line 310
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform click view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    const-string v0, "on"

    const-string v1, "off"

    const-string v2, "key_text_watermark"

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {p0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    .line 316
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move-object v0, v1

    :goto_52
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTextInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_82

    .line 325
    :cond_7b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :goto_82
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .registers 2

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->showCustomizeDialog()V

    return-void
.end method

.method private synthetic lambda$setSortWaterMarkEnable$6(Landroid/view/View;)V
    .registers 6

    .line 436
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 439
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 446
    sget-object p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[whileGettingLocation]: failed to get location, close city watermark"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "off"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_city_watermark"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 452
    :cond_65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;->onEnterSortWaterMark()V

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$8(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 479
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_1e

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_1e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 485
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :cond_2d
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_watermark_info"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_49

    .line 490
    sget-object p2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 492
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo p1, "true"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DEFAULT_TEXT"

    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$9(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 495
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_e

    .line 497
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_e
    return-void
.end method

.method private removeTextView()V
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x3

    if-le v0, v1, :cond_13

    .line 569
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 571
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_edit_watermark_sort"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setSortWaterMarkEnable()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_29

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->edit_watermark_sort_disable_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_48

    .line 429
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 433
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->edit_watermark_sort_enable_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_48

    .line 435
    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_48
    return-void
.end method

.method private setSortWaterMarkUnEnable()V
    .registers 2

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_c

    .line 460
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method private showCustomizeDialog()V
    .registers 7

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 467
    sget-object p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showCustomizeDialog: dialog is showing return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 470
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_1e

    .line 471
    sget-object p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showCustomizeDialog: mDataStore is null return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_1e
    const-string v1, "DEFAULT_TEXT"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 475
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/transsion/camera/R$string;->water_mark_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTitle(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v1

    if-eqz v0, :cond_57

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_57

    :cond_55
    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$integer;->water_mark_custom_text_limit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v4, 0x0

    .line 476
    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->setInputNum(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_dialog_rename:I

    new-instance v2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    .line 478
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_dialog_cancel:I

    new-instance v2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 500
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_90

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->requireHungStatus(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 503
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 505
    new-instance v2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$OSLengthFilter;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$integer;->water_mark_custom_text_limit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$OSLengthFilter;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    new-array v3, v1, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 507
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 509
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 511
    :cond_cc
    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPromptDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 532
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->edit_watermark_dialog_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private updateCityInfo(I)V
    .registers 7

    .line 633
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateCityInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 635
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 636
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 638
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v2, "key_edit_watermark"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 640
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfoFromLocation(Landroid/location/Location;)V

    return-void

    .line 642
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_93

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocation = null lastKnownLocation = null retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p1, :cond_6d

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 661
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 662
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit8 p1, p1, -0x1

    .line 663
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 666
    :cond_6d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 668
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_84

    const/16 p1, 0x5a

    goto :goto_8b

    :cond_84
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8a

    const/16 p1, 0x10e

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    .line 673
    :goto_8b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    return-void

    .line 676
    :cond_93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocation = null  lastKnownLocation = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfoFromLocation(Landroid/location/Location;)V

    return-void
.end method

.method private updateCityInfoFromLocation(Landroid/location/Location;)V
    .registers 6

    .line 683
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 685
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 691
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 693
    sget-object p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Location getAddress = null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 694
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_network_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 697
    :cond_46
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location getAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 698
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_68
    return-void
.end method

.method private updateEditWaterMarkItem()V
    .registers 8

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    const/4 v2, 0x3

    if-le v0, v2, :cond_18

    .line 577
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 579
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_time_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_44

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_city_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_text_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_93

    :cond_91
    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_93
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_a2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_brand_watermark"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_102

    .line 598
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 599
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 600
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 601
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 602
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_preview_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 606
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 607
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    :cond_102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_10e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private updateEditWaterMarkRootLayout(II)V
    .registers 8

    .line 953
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c5

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a

    goto/16 :goto_c5

    .line 956
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 957
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 958
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 960
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 959
    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p2, :cond_a4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a4

    .line 962
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_expand_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_73

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_73

    .line 975
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 976
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 977
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 978
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_bb

    .line 966
    :cond_73
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 967
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 968
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 969
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_bb

    .line 982
    :cond_a4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_edit_watermark_normal_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 983
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->setting_base_margin:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 985
    :goto_bb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method private updateWaterMarkLayout()V
    .registers 15

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_edit_watermark_sort"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    const-string v1, "key_city_watermark_info"

    if-eqz v0, :cond_1bf

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_19
    const/4 v5, 0x3

    if-le v2, v5, :cond_24

    .line 341
    iget-object v5, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 343
    :cond_24
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 349
    const-string v2, "sans-serif-medium"

    const/4 v6, 0x0

    .line 350
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 352
    array-length v7, v0

    :goto_4b
    if-ge v6, v7, :cond_1bb

    aget-char v8, v0, v6

    add-int/lit8 v8, v8, -0x30

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, -0x2

    const/4 v11, -0x1

    if-eqz v8, :cond_16f

    if-eq v8, v4, :cond_11e

    const/4 v12, 0x2

    if-eq v8, v12, :cond_bf

    if-eq v8, v5, :cond_60

    goto/16 :goto_1b7

    .line 397
    :cond_60
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    .line 398
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 399
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 400
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    iput-boolean v4, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 402
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v11

    invoke-static {v10, v11, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 404
    iget-object v11, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v10, v9

    .line 406
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_preview_height:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 407
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 408
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b7

    .line 382
    :cond_bf
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    .line 383
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 385
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    iget-object v10, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 389
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 392
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 393
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_110

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_112

    :cond_110
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_112
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b7

    .line 368
    :cond_11e
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    .line 369
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 371
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 373
    iget-object v10, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 376
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v3, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 378
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b7

    .line 355
    :cond_16f
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 356
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iget-object v10, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 363
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v8, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4b

    .line 413
    :cond_1bb
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void

    .line 415
    :cond_1bf
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 1

    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditWaterMarkUIItem()Ljava/util/List;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    return-object p0
.end method

.method protected getPreferenceResource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getShowCityInfo()Ljava/lang/String;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getShowTimeInfo()Ljava/lang/String;
    .registers 1

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .registers 5

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 626
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 627
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm"

    invoke-direct {v2, v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 628
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 629
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextInfo()Ljava/lang/String;
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .registers 2

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getSystemTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 866
    sget p0, Lcom/transsion/camera/R$id;->edit_watermark_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    .line 867
    sget p1, Lcom/transsion/camera/R$string;->edit_watermark_top_bar:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 868
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 3

    .line 847
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 848
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 849
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_preview_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkPreviewRoot:Landroid/widget/FrameLayout;

    .line 850
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_list_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkListRoot:Landroid/widget/FrameLayout;

    .line 851
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkRootLayout(II)V

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 842
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 889
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 890
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkRootLayout(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 178
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 179
    new-instance p3, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 180
    sget p0, Lcom/transsion/camera/R$layout;->edit_watermark_preference_fragment:I

    const/4 p3, 0x0

    .line 181
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 820
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x5a

    goto :goto_31

    :cond_2a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    const/16 v0, 0x10e

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 825
    :goto_31
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_3a

    .line 826
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    .line 829
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    const-string v2, "key_edit_watermark_update"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 832
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_5c

    const/4 v2, -0x2

    .line 833
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 835
    :cond_5c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 838
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 6

    .line 800
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onPause()V

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 805
    :cond_2b
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEditWaterMarkUIItems = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_7c

    .line 807
    const-string v2, "key_edit_watermark_item"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_city_watermark_info"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_text_watermark_info"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_language_watermark"

    invoke-virtual {v0, v2, v1, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7c
    return-void
.end method

.method public onResume()V
    .registers 10

    .line 746
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_12

    .line 748
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 750
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_time_watermark"

    .line 751
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 750
    const-string v3, "off"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 752
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 753
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 752
    const-string v5, "key_city_watermark"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 754
    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_brand_watermark"

    .line 755
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    .line 754
    invoke-virtual {v4, v6, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 756
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v7, "key_text_watermark"

    .line 757
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    .line 756
    invoke-virtual {v6, v7, v3, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 759
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 760
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 761
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 762
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    if-nez v0, :cond_8d

    if-nez v2, :cond_8d

    if-nez v6, :cond_8d

    if-nez v4, :cond_8d

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 777
    :cond_8d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_e3

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_e3

    .line 782
    :cond_a9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v3, "key_edit_watermark"

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 786
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 788
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 789
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    .line 790
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 791
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    :cond_e3
    :goto_e3
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    .line 795
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    .line 186
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 187
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->time_water_mark_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2, v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 188
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->city_water_mark_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v3, 0x1

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 189
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->text_water_mark_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v4, 0x2

    invoke-direct {p2, v0, v1, v4, v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 190
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->brand_water_mark_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_edit_watermark_sort:I

    const/4 v4, 0x3

    invoke-direct {p2, v0, v1, v4, v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;III)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 191
    sget p2, Lcom/transsion/camera/R$id;->show_time_watermark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    .line 192
    sget p2, Lcom/transsion/camera/R$id;->show_city_watermark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    .line 193
    sget p2, Lcom/transsion/camera/R$id;->show_text_watermark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    .line 194
    sget p2, Lcom/transsion/camera/R$id;->show_brand_watermark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    .line 195
    sget p2, Lcom/transsion/camera/R$id;->time_water_mark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    .line 196
    sget p2, Lcom/transsion/camera/R$id;->city_water_mark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_aa

    .line 200
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 202
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 204
    :cond_aa
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_c9

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p2

    if-nez p2, :cond_bc

    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isVoiceInteraction()Z

    move-result p2

    if-eqz p2, :cond_c9

    :cond_bc
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p2

    if-nez p2, :cond_c9

    .line 205
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_c9
    sget p2, Lcom/transsion/camera/R$id;->brand_water_mark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    .line 208
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldHideDeviceInfo()Z

    move-result p2

    if-eqz p2, :cond_eb

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "off"

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_brand_watermark"

    invoke-virtual {p2, v4, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_eb
    sget p2, Lcom/transsion/camera/R$id;->text_water_mark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    .line 214
    sget p2, Lcom/transsion/camera/R$id;->text_water_mark_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    .line 215
    sget p2, Lcom/transsion/camera/R$id;->edit_watermark_scroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 216
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-nez v0, :cond_110

    .line 217
    invoke-static {p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 219
    :cond_110
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$string;->text_water_mark_input_tip:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    .line 220
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, ""

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_watermark_info"

    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_137

    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_139

    :cond_137
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_139
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget p2, Lcom/transsion/camera/R$id;->time_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    .line 223
    sget p2, Lcom/transsion/camera/R$id;->city_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    .line 224
    sget p2, Lcom/transsion/camera/R$id;->brand_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    .line 225
    sget p2, Lcom/transsion/camera/R$id;->text_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    .line 226
    sget-object p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated: mTextSwitchButton = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    .line 228
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_sort_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    .line 229
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    .line 230
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "edit_watermark_fragment_location_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    .line 234
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateWaterMarkLayout()V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    if-eqz p1, :cond_1ed

    .line 309
    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f7

    .line 330
    :cond_1ed
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "onViewCreated: "

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    :goto_1f7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setIFragmentControl(Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

    return-void
.end method

.method public setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 165
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 741
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public unInit()V
    .registers 5

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1026
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 1027
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    .line 1028
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    .line 1029
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    if-eqz v1, :cond_32

    .line 1030
    sget-object v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unInit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "is be released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    .line 1035
    :cond_32
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    .line 1036
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3d

    .line 1037
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    .line 1040
    :cond_3d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_46

    .line 1041
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    .line 1044
    :cond_46
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4f

    .line 1045
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    .line 1048
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_58

    .line 1049
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    .line 1052
    :cond_58
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_61

    .line 1053
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    .line 1057
    :cond_61
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    .line 1058
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    .line 1059
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    .line 1060
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    .line 1061
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    .line 1062
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    .line 1063
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    .line 1064
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 1065
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    .line 1066
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    .line 1067
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 1068
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1069
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method

.method public updateEditWaterMarkUIItemsSorted()V
    .registers 3

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_26
    const/4 v1, 0x3

    if-le v0, v1, :cond_31

    .line 724
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 726
    :cond_31
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 727
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateWaterMarkLayout()V

    :cond_3a
    return-void
.end method
