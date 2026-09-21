.class public abstract Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected final mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mDefaultOptionSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mNeedAnimation:Z

.field protected mOptionSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOptionVisibilityRespondent:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

.field protected mOrientation:I

.field protected mScreenFormType:I

.field protected final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field private final mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$8zqpVaPfNDMEnutE1mlsRz0sHNo(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 180
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FpQsIezew0i0bOY44qGbHSfezbs(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/ISettingUI;)Z
    .registers 2

    .line 136
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Iw7zIGzQIqH_iQmS13apipUPK9M(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 225
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$giV_lFwR5F2QDa9jm90SaJZV2wE(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 238
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$jJeNbQ-MPIT27iBhrsdgY5cBNJc(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 5

    .line 122
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getOptionEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    :cond_11
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getFlipEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    .line 133
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_22
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 138
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V
    .registers 10

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 76
    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionVisibilityRespondent:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_15

    .line 80
    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mScreenFormType:I

    .line 83
    :cond_15
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 84
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 85
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    .line 86
    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 87
    iput-object p7, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    .line 88
    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method


# virtual methods
.method public getDefaultOptionSettingUIList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mDefaultOptionSettingUIList:Ljava/util/List;

    return-object p0
.end method

.method public hide()V
    .registers 1

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public needAnimation(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mNeedAnimation:Z

    return-void
.end method

.method public notifyScreenSupply(Z)V
    .registers 3

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_c

    .line 180
    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_c
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 185
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOrientation:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 189
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mScreenFormType:I

    return-void
.end method

.method public pause()V
    .registers 1

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->recoverOptionEntryView()V

    return-void
.end method

.method protected recoverOptionEntryView()V
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_14
    return-void
.end method

.method public resume()V
    .registers 1

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->recoverOptionEntryView()V

    return-void
.end method

.method public setDefaultOptionSettingUIList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mDefaultOptionSettingUIList:Ljava/util/List;

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_10

    .line 216
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method public setOptionSettingUIList(Ljava/util/List;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    new-instance v1, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 143
    :cond_21
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    .line 144
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 93
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method protected setSettingUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_7

    .line 149
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_1a

    .line 152
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 155
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_21

    .line 156
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 158
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_28

    .line 159
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 161
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_2f

    .line 162
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 164
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_36

    .line 165
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 167
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_3d

    .line 168
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 170
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_44

    .line 171
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 173
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p0, :cond_4b

    .line 174
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    :cond_4b
    return-void
.end method

.method public show()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 111
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 113
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_25
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    return-void
.end method

.method public updateOptionSettingUIs()V
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->mOptionSettingUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_14
    return-void
.end method

.method public updateVisibility(Z)V
    .registers 2

    return-void
.end method
