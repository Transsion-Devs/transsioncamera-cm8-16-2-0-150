.class public Lcom/transsion/camera/app/ui/manager/factory/HintUI5ManagerFactory;
.super Lcom/transsion/camera/app/ui/manager/factory/HintUIManagerFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/factory/HintUIManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUIManager(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Landroid/view/View;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 15

    .line 16
    invoke-virtual/range {p0 .. p14}, Lcom/transsion/camera/app/ui/manager/factory/HintUI5ManagerFactory;->createUIManager(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Landroid/view/View;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/ui/manager/HintUIManager;

    move-result-object p0

    return-object p0
.end method

.method public createUIManager(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Landroid/view/View;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/ui/manager/HintUIManager;
    .registers 15

    .line 30
    new-instance p0, Lcom/transsion/camera/app/ui/manager/HintUI5Manager;

    check-cast p2, Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {p0, p2, p11, p7, p9}, Lcom/transsion/camera/app/ui/manager/HintUI5Manager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-object p0
.end method
