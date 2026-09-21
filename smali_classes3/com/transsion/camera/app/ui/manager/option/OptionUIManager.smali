.class public Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field protected final mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;


# direct methods
.method public static synthetic $r8$lambda$4YI542QEM5Ia3xrosedjRC-hDVs(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUI;
    .registers 19

    .line 68
    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OptionUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V
    .registers 11

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 56
    invoke-virtual/range {p0 .. p9}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->createOptionUI(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    return-void
.end method


# virtual methods
.method protected createOptionUI(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUI;
    .registers 13

    .line 67
    new-instance p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V

    .line 70
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.app.ui.manager.option.OptionUI5"

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    return-object p0
.end method

.method public getDefaultOptionSettingUIList()Ljava/util/List;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->getDefaultOptionSettingUIList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->init(Landroid/view/ViewGroup;)V

    .line 90
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public needAnimation(Z)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->needAnimation(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_2c

    goto :goto_15

    .line 149
    :sswitch_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_15

    .line 150
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->updateVisibility(Z)V

    :cond_15
    :goto_15
    return-void

    .line 145
    :sswitch_16
    sget-object p1, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "shot2shot end action need enable option ui."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setEnable(Z)V

    return-void

    .line 138
    :sswitch_22
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->updateVisibility(Z)V

    return-void

    .line 141
    :sswitch_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->recoverOptionEntryView()V

    return-void

    :sswitch_data_2c
    .sparse-switch
        0x7 -> :sswitch_26
        0x19 -> :sswitch_22
        0x30 -> :sswitch_22
        0x81 -> :sswitch_22
        0x83 -> :sswitch_22
        0x9c -> :sswitch_16
        0x9d -> :sswitch_16
        0xb3 -> :sswitch_22
        0xca -> :sswitch_22
        0xf2 -> :sswitch_a
        0xf7 -> :sswitch_22
        0x103 -> :sswitch_22
        0x113 -> :sswitch_22
        0x132 -> :sswitch_22
        0x18e -> :sswitch_22
    .end sparse-switch
.end method

.method protected notifyScreenSupply(Z)V
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->pause()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->resume()V

    return-void
.end method

.method public setDefaultOptionSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setDefaultOptionSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setEnable(Z)V

    return-void
.end method

.method public setOptionSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->setOptionSettingUIList(Ljava/util/List;)V

    .line 100
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->unInit()V

    .line 95
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateOptionSettingUIs()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->updateOptionSettingUIs()V

    return-void
.end method

.method protected updateVisibility(Z)V
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->mOptionUI:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V

    return-void
.end method
