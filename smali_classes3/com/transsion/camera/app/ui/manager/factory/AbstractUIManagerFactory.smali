.class public abstract Lcom/transsion/camera/app/ui/manager/factory/AbstractUIManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IUIManagerFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHintUIManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/ui/ScreenManager;",
            "Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;",
            "Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;",
            "Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;",
            "Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;",
            ")",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;"
        }
    .end annotation

    .line 39
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/ui/IUIManagerFactory;->createHintUIManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    return-object p0
.end method

.method public final createPopSettingUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/app/ui/ScreenManager;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;",
            "Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;",
            "Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;",
            ")",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;"
        }
    .end annotation

    .line 30
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/app/ui/IUIManagerFactory;->createPopSettingUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    return-object p0
.end method

.method public final createPreviewUIManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/transsion/camera/app/ui/ScreenManager;",
            "Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;",
            "Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;",
            "Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;",
            ")",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;"
        }
    .end annotation

    .line 47
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/ui/IUIManagerFactory;->createPreviewUIManager(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    return-object p0
.end method

.method public final createShutterUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/app/ui/ScreenManager;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;",
            ")",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/IUIManagerFactory;->createShutterUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    return-object p0
.end method

.method public final createTopBarUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/app/ui/ScreenManager;",
            "Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;",
            "Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;",
            "Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;",
            "Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;",
            ")",
            "Lcom/transsion/camera/app/common/manager/AbstractViewManager;"
        }
    .end annotation

    .line 21
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/app/ui/IUIManagerFactory;->createTopBarUIManager(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/common/manager/AbstractViewManager;

    move-result-object p0

    return-object p0
.end method
