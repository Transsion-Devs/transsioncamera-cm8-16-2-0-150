.class public abstract Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;",
        ">",
        "Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;",
        "Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;"
    }
.end annotation


# instance fields
.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field protected mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mItemNumber:I

.field protected mResources:Landroid/content/res/Resources;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$PErCxbyc06jgDf_-5wE1asSMasA(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->lambda$setSettingMonitor$1(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cstUagYMgiB2gNcA_6e7ft6on0o(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;)V
    .registers 3

    .line 132
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCrHjOoZhISys-YqFP0HKjkIuLM(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    .line 52
    sget v0, Lcom/transsion/camera/feature/imagestyle/R$integer;->image_style_item_number:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mItemNumber:I

    return-void
.end method

.method private getOrientationItem()I
    .registers 3

    .line 92
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    .line 96
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    .line 97
    :cond_1b
    :goto_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 98
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

    .line 99
    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_32
    return v0
.end method

.method private getSkinColor()Ljava/lang/String;
    .registers 2

    .line 138
    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string/jumbo v0, "white"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setSettingMonitor$1(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->registerKeyToMonitor()V

    return-void
.end method

.method private updateArcIndicatorRingScreenLight(Z)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-nez p0, :cond_5

    return-void

    .line 68
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateLowLight(Z)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->initSelectRecyclerViewData()V

    .line 58
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 59
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

.method protected getItemInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;->getVideoFilterItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mItemNumber:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_1c

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 179
    const-string p0, "key_image_style"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const-string v0, "key_image_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;)TT;"
        }
    .end annotation
.end method

.method protected initSelectRecyclerViewData()V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getItemInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    .line 107
    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;)V

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
    .registers 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_12

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "0"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setCurrentPosition(IZ)V

    :cond_12
    return-void
.end method

.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_9

    .line 237
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 120
    iget-object p1, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 173
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x1

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->updateViewLayoutParams(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 79
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->updateViewLayoutParams(Z)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected recoverFilterPanelToDefault()V
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected registerKeyToMonitor()V
    .registers 1

    return-void
.end method

.method protected resetUIState(Ljava/lang/String;)V
    .registers 3

    .line 125
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->recoverFilterPanelToDefault()V

    :cond_b
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 203
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_image_style"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 204
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 205
    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 207
    :cond_24
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 208
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 209
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_7

    :cond_34
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

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 217
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 46
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 73
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 74
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 158
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->setEnable(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->unRegisterKeyToMonitor()V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 162
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 164
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_19

    .line 165
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 167
    :cond_19
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected unRegisterKeyToMonitor()V
    .registers 1

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateViewLayoutParams(Z)V
    .registers 3

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getOrientationItem()I

    move-result p1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->onOrientationChanged(IZ)V

    :cond_c
    return-void
.end method
